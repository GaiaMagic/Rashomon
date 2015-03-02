FROM node:0.12.0

MAINTAINER Cai Guanhao (caiguanhao@gmail.com)

WORKDIR /rashomon

RUN python2.7 -c 'from urllib import urlopen; from json import loads; \
    print(loads(urlopen("http://ip-api.com/json").read().decode("utf-8" \
    ).strip())["countryCode"])' > /tmp/country

RUN test "$(cat /tmp/country)" = "CN" && { \
    echo Asia/Hong_Kong > /etc/timezone && \
    dpkg-reconfigure -f noninteractive tzdata; \
    (echo "registry = https://registry.npm.taobao.org" && \
    echo "disturl = https://npm.taobao.org/dist" && \
    echo "phantomjs_cdnurl = https://npm.taobao.org/dist/phantomjs") \
    > ~/.npmrc; } || true

RUN npm --loglevel http install -g grunt-cli bower

ADD package.json /rashomon/package.json

RUN npm --loglevel http install

ADD bower.json /rashomon/bower.json

RUN SHA="$(openssl sha1 /rashomon/bower.json | awk '{print $2}')" && \
    mkdir -p /rashomon/app && \
    curl http://bower.gaiamagic.com/store/$SHA/bowerpkg.tar.gz -Ls | \
    tar xfvz - -C /rashomon/app

CMD grunt build

ADD . /rashomon
