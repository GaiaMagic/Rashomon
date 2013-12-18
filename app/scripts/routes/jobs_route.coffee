Rashomon.JobsRoute = Ember.Route.extend Rashomon.PositionScrollableRouteMixin,
  model: (params) ->
    @_super(params)

    [
      {
        title: "前端/后端/iOS工程师",
        slug: 'engineer',
        content_html: '
          <p>
              对于真正懂车的人来说，只有引擎才是一辆车的灵魂。GaiaMagic 从一开始就是希望通过技术的手段去改变音乐的一端，因此技术力量便是我们的引擎。
          </p>

          <p class="u-marginTl">
              感谢一切，让我们能坚持建立起真正的黑客文化，这样你就能蔑视权威去改变所有不合理的地方。你有一切的选择权去赞成或反对所有自己做的事情，没有傻帽的管理层和产品经理告诉你应该做什么功能。
          </p>

          <p class="u-marginTl">
              我们可以在这个阶段承诺的是，没有一个岗位能比工程师享有更高的待遇。
          </p>

          <p class="u-marginTl detail">
              技术栈：
          </p>

          <ul class="section-list">
              <li>Ruby &amp;&amp; Rails &amp;&amp; RSpec</li>
              <li>MongoDB &amp;&amp; Mongoid</li>
              <li>Redis</li>
              <li>JavaScript &amp;&amp; CoffeeScript &amp;&amp; jQuery</li>
              <li>SASS</li>
              <li>Git</li>
              <li>Mac || Linux</li>
          </ul>

          <p class="u-marginTl detail">
              加分项：
          </p>

          <ul class="section-list">
              <li>Vim || Emacs</li>
              <li>AngularJS || Ember.js 等其它相似的前端 MVC 框架</li>
              <li>对其他语言也有了解，如 Python、PHP 等</li>
              <li>参与过开源项目并有所贡献</li>
              <li>有独立的技术 Blog</li>
          </ul>

          <p class="u-marginTl detail">
              简历请附：
          </p>

          <ul class="section-list">
            <li>参与过的项目或直接GitHub账号</li>
            <li>你最欣赏的网站或者手机APP </li>
          </ul>
        '
      },
      {
        title: "设计师",
        slug: 'designer',
        content_html: '
          <p>
              一直以来，商业世界都是在讨论一间企业里面什么才是最重要的。沃尔玛的低成本运作很重要，戴尔电脑的直销模式很重要，Google 的技术创新很重要。
          </p>

          <p class="u-marginTl">
              但是直到苹果的出现，乔布斯才告诉全世界，设计和体验很重要。
          </p>

          <p class="u-marginTl">
              我们也是抱着这个想法去努力的，希望做出最优体验，最佳设计。而现在，我们希望招募最具灵气的设计师。
          </p>

          <p class="u-marginTl detail">职责：</p>

          <ul class="section-list">
              <li>设计全公司的 APP、网站、Banner、Logo、印刷品</li>
              <li>产品的交互效果和逻辑</li>
          </ul>

          <p class="u-marginTl detail">要求：</p>

          <ul class="section-list">
              <li>在细节和简单中找平衡，做出让人情不自禁 Wow 的设计</li>
              <li>了解 Web 和移动端的交互并能有所创新，让产品用起来更自然，交互更不露痕迹</li>
              <li>思维能力强，对不同设计对象都能瞬间能找到重点</li>
          </ul>

          <p class="u-marginTl detail">加分项：</p>

          <ul class="section-list">
              <li>有 Dribbble 账号</li>
              <li>能手绘，有美学基础</li>
              <li>了解前端</li>
              <li>有 UI 类的自媒体账号</li>
          </ul>

          <p class="u-marginTl detail">简历请附：</p>

          <ul class="section-list">
              <li>部分能代表水平的作品</li>
              <li>你最欣赏的网站或者手机 App </li>
          </ul>
        '
      },
      {
        title: "运营总监",
        slug: 'yunying',
        content_html: '
          <p>当这个世界变得分散且去中心化的时候，我们就知道世界的权力应该重新分配给创造价值的人。</p>

          <p class="u-marginTl">
              而我们心目中的运营总监，是可以将我们的价值最大化体现出来的人。如果说市场总监是对外沟通合作，吸引别人关注我们的，那么运营就是对内施展魔法，让公司和产品的魅力自然散发出来的人。
          </p>

          <p class="u-marginTl">
              因此，我们寻找一名能让我们产品变得更加丰满和实在的主理人。
          </p>

          <p class="u-marginTl detail">职责：</p>

          <ul class="section-list">
              <li>管理音乐人攻略、合拍网和友演出的多个平台：微信、微博、小组、小站、论坛。</li>
              <li>建立社区氛围、用户群。</li>
              <li>参与功能与设计调整，完善产品。</li>
              <li>处理反馈与投诉</li>
              <li>建立与管理 FAQ 与 Blog</li>
          </ul>

          <p class="u-marginTl detail">要求：</p>

          <ul class="section-list">
              <li>熟悉各个平台的用户特性和推广方法</li>
              <li>熟悉社区运营，对人性有一定洞察</li>
              <li>对科技与趋势敏感，能抓住发展机会</li>
          </ul>
        '
      },
      {
        title: "音乐人攻略",
        slug: 'MG'
        content_html: '
          <p>音乐人攻略是我们目前做出来对音乐领域最有价值的产品。</p>

          <p class="u-marginTl">
              如果这个世界是一个圆，那么做音乐人攻略的感觉就是站在这个圆的边缘，每向前走一步，世界就因为这个举动而扩大一点。
          </p>

          <p class="u-marginTl">
              向音乐人和从业者报道最新的新闻和攻略，帮有价值的团队和产品进行宣传，整理出一套音乐人需要的全套教程等等……都是在未来会激起火花的做法。
          </p>

          <p class="u-marginTl">
              因此我们寻找一名对音乐充满热诚，兼具视野和文笔的布道者。
          </p>

          <p class="u-marginTl detail">职责：</p>

          <ul class="section-list">
              <li>撰写、采访、摘录产业类、音乐类、推荐类文章</li>
              <li>主导各个平台的运营策略</li>
              <li>建立更快更好的信息源与行内合作关系</li>
              <li>招募与管理志愿者团队</li>
              <li>辅助线下活动</li>
              <li>策划专题活动与选题</li>
          </ul>

          <p class="u-marginTl detail">要求：</p>

          <ul class="section-list">
              <li>英语能力强</li>
              <li>有编辑背景，音乐类更佳</li>
              <li>了解音乐与音乐行业</li>
              <li>有一定行业资源</li>
          </ul>
        '
      }
    ]
