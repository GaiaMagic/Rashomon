Rashomon.WarehousingRoute = Ember.Route.extend Rashomon.PositionScrollableRouteMixin,
  model: (params) ->
    @_super(params)

    [
      {
        question: '怎么开始音乐入库',
        answer: '只需联系我们的客服：RK@gaiamagic.com 或 QQ 282648902'
      },
      {
        question: '什么样的歌曲能入库',
        answer: '只要是你的原创歌曲或你已经获得原创歌曲的所有权便可。'
      },
      {
        question: '原创歌曲需具备什么资格才能入库',
        answer: '只要你的原创歌曲已经获得版权登记或者是曾经发行过（待与各平台确认后）。'
      },
      {
        question: '我的音乐作品如何才能进行版权登记',
        answer: '可以到国家版权局或中国音乐著作协会进行登记，还可授权我们帮助你登记，详情请点击浏览「歌曲版权注册」页面。'
      },
      {
        question: '翻唱的歌曲可以入库吗',
        answer: '很抱歉，目前暂时无法支持翻唱音乐作品入库。'
      },
      {
        question: '跟你们合作是否等同签约版权',
        answer: '我们拥有帮你将音乐作品入库和收取歌曲收益授权。你仍然拥有自己版权的所有权益，可以授予其他合作伙伴进行其他合作。'
      },
      {
        question: '可以同时授权两家或以上代理入库吗',
        answer: '在入库的过程中，假如你已经授权给其他代理，我们将无法顺利帮你完成入库，建议选择其中一间便可。'
      },
      {
        question: '歌曲格式要求',
        answer: 'MP3格式（44.1khz、320kbps）。注：如果有WAV格式，也可以一同提供（此项还需与平台沟通）。'
      },
      {
        question: '如何终止合作',
        answer: '你只需提前7个工作日通过发送邮件到RK@gaiamagic.com即可。'
      }
    ]
