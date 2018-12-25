<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/web/shop/header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


		<title>首页</title>

</head>
<body>
		<!--å¤´ -->
		<header>
			<article>
				<div class="mt-logo">
					<!--é¡¶é¨å¯¼èªæ¡ -->
					<div class="am-container header">
						<ul class="message-l">
							<div class="topMessage">
								<div class="menu-hd">
									<a href="#" target="_top" class="h">äº²ï¼è¯·ç»å½</a>
									<a href="#" target="_top">åè´¹æ³¨å</a>
								</div>
							</div>
						</ul>
						<ul class="message-r">
							<div class="topMessage home">
								<div class="menu-hd"><a href="#" target="_top" class="h">ååé¦é¡µ</a></div>
							</div>
							<div class="topMessage my-shangcheng">
								<div class="menu-hd MyShangcheng"><a href="#" target="_top"><i class="am-icon-user am-icon-fw"></i>ä¸ªäººä¸­å¿</a></div>
							</div>
							<div class="topMessage mini-cart">
								<div class="menu-hd"><a id="mc-menu-hd" href="#" target="_top"><i class="am-icon-shopping-cart  am-icon-fw"></i><span>è´­ç©è½¦</span><strong id="J_MiniCartNum" class="h">0</strong></a></div>
							</div>
							<div class="topMessage favorite">
								<div class="menu-hd"><a href="#" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>æ¶èå¤¹</span></a></div>
						</ul>
						</div>

						<!--æ¬æµ®æç´¢æ¡-->

						<div class="nav white">
							<div class="logoBig">
								<li><img src="<%=path%>/images/logobig.png" /></li>
							</div>

							<div class="search-bar pr">
								<a name="index_none_header_sysc" href="#"></a>
								<form>
									<input id="searchInput" name="index_none_header_sysc" type="text" placeholder="æç´¢" autocomplete="off">
									<input id="ai-topsearch" class="submit am-btn" value="æç´¢" index="1" type="submit">
								</form>
							</div>
						</div>

						<div class="clear"></div>
					</div>
				</div>
			</article>
		</header>
            <div class="nav-table">
					   <div class="long-title"><span class="all-goods">å¨é¨åç±»</span></div>
					   <div class="nav-cont">
							<ul>
								<li class="index"><a href="#">é¦é¡µ</a></li>
                                <li class="qc"><a href="#">éªè´­</a></li>
                                <li class="qc"><a href="#">éæ¶æ¢</a></li>
                                <li class="qc"><a href="#">å¢è´­</a></li>
                                <li class="qc last"><a href="#">å¤§åè£</a></li>
							</ul>
						    <div class="nav-extra">
						    	<i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>æçç¦å©
						    	<i class="am-icon-angle-right" style="padding-left: 10px;"></i>
						    </div>
						</div>
			</div>
			<b class="line"></b>	
<!--æç«  -->
<div class="am-g am-g-fixed blog-g-fixed bloglist">
  <div class="am-u-md-9">
    <article class="blog-main">
      <h3 class="am-article-title blog-title">
        <a href="#">Ãå¼ æ¯ç·ç·ï¼æå®éå¦å®¹</a>
      </h3>
      <h4 class="am-article-meta blog-meta">2014-06-17 09:52</h4>

      <div class="am-g blog-content">
        <div class="am-u-sm-12">
          <p>å¹´è½»çå¦¹å­ç±ç¾ä¸½ï¼è¿æ¯äººä¹å¸¸æï¼ä½æ¯æ²¡æè¶³å¤çç»æµå®åï¼é¢å¯¹æè´µå¥¢åçæ¤è¤åé¾ååä¸­ç¾æ¶©ãä¸è¿ä¸ç¨æå¿ï¼å¹´è½»çèµæ¬å°±æ¯ï¼ä¸éè¦æå¥å¤ªå¤ï¼å´ä¾ç¶æä¿ä¸½çè¸èå¿~ä»å¤©å°ç¼å°±ç»å¦¹å­ä»¬åå¤äºçæå¯ç­çç¾åæ¤è¤å¤§ç¤¼åï¼ççææ²¡æèªå·±éè¦çå§ï¼</p>
          
          <strong class="blog-tit"><p>ä¸å¼ æ¯ç·ç·<span>ä¸¨</span>åºç¡æ¤è¤</p></strong>
          <div class="Row">
          	<li><img src="<%=path%>/images/blog01.jpg"/></li>
          	<li><img src="<%=path%>/images/blog02.jpg"/></li>
          	<li><img src="<%=path%>/images/blog03.jpg"/></li>
          </div>
          <p>ç¾åä»¥åçåºç¡æ¤è¤å¥è£ï¼å°ç¼ç»å¦¹å­ä»¬æéäºæ´é¢å¥¶ãç½è¤æ°´åé¢éï¼æç§æ´é¢åæ¤è¤çé¡ºåºï¼å¤§å®¶å¯ä»¥å°½æå°è¿äºå£ç¢å¥½è´§å å¥è´­ç©è½¦å¦ã</p>
          <p>ä¸åæ¯ï¼å¹³ä»·åå¥½ç¨çé²å¾æ¸æ´é¢å¥¶ï¼å ä¸å¾å¤§ä¸æ¯æè§æä¹é½ç¨ä¸å®çåçº¤èä¸çæ°´ï¼æåç¨çå°æ²¹é¢ééä½é¢é¨æ°´åï¼ç®ç´å®ç¾ï¼</p>


         <strong class="blog-tit"><p>ä¸¤å¼ æ¯ç·ç·<span>ä¸¨</span>å½©å¦</p></strong>
          <div class="Row">
          	<li><img src="<%=path%>/images/blog04.jpg"/></li>
          	<li><img src="<%=path%>/images/blog05.jpg"/></li>
          	<li><img src="<%=path%>/images/blog06.jpg"/></li>
          </div>
          
          <p>ç¼å¦æ¯æ´ä¸ªå¦é¢çç²¾é«ï¼ä¸ä¸ªç²¾è´çç¼å¦å¯ä»¥ç¬é´æåäººçæ°åºï¼ææ¯å¨ç¾å¯ç±ï¼æèæ¸©å©è´¤æ·ï¼ææ¯å¦©åªå¦å¨ï¼æ»æä¸ç§é£æ ¼éåèªå·±ãæ³ä¸å°ä»ä»ä¸å°200è½¯å¦¹å¸å°±è½æå®ç¼å¦è¿ä¸ªç£¨äººçå°å¦ç²¾å§ï¼</p>
          
          
         <strong class="blog-tit"><p>ä¸å¼ æ¯ç·ç·<span>ä¸¨</span>èº«ä½æ¤ç</p></strong>
          <div class="Row">
          	<li><img src="<%=path%>/images/blog07.jpg"/></li>
          	<li><img src="<%=path%>/images/blog08.jpg"/></li>
          	<li><img src="<%=path%>/images/blog09.jpg"/></li>
          </div>          
          
           <p>åæ¥ç©ºæ°å¹²ç¥ï¼æ´ææ´æ¾¡åä¸é©¬ä¸æ¶ç¹æ¶¦è¤ä¹³ï¼ç®è¤å°±ä¼ä¸å¬è¯å¾å¹²ç¥ç²ç³èµ·æ¥ï¼çå®è®©ç±ç¾çå¦¹å­ä»¬æç¢äºå¿ãæ¥å¤©ä¸åæ¯ä¸ç©å¤èçå­£èï¼è¿æ¯ä¸ç©éè¦æ»å»çå­£èï¼èä¸è¦ä»å¤´å°èå¾æ»å»ã</p>
          

        </div>
  
      </div>

    </article>


    <hr class="am-article-divider blog-hr">
    <ul class="am-pagination blog-pagination">
      <li class="am-pagination-prev"><a href="">&laquo; ä¸ä¸é¡µ</a></li>
      <li class="am-pagination-next"><a href="">ä¸ä¸é¡µ &raquo;</a></li>
    </ul>
  </div>

  <div class="am-u-md-3 blog-sidebar">
    <div class="am-panel-group">

      <section class="am-panel am-panel-default">
        <div class="am-panel-hd">ç­é¨è¯é¢</div>
        <ul class="am-list blog-list">
        	<li><a href="#"><p>[ç¹æ ]éºèåä½ æ¥å¤å½è´§å¦</p></a></li>  
          <li><a href="#"><p>[å¬å]ååãåä¸­é¨åå°åºééå»¶è¿</p></a></li>
          <li><a href="#"><p>[ç¹æ ]å®¶çµçæ¬¢åäº¿ç¤¼å¸ ä¹°1é1ï¼</p></a></li>
          <li><a href="#"><p>[å¬å]ååä¸å¹¿å·å¸ç­¾ç½²æç¥åä½åè®®</p></a></li>
          <li><a href="#"><p>[ç¹æ ]æ´æ²³å¹´æ«å¤§ä¿ï¼ä½è³ä¸¤ä»¶äºæ</p></a></li>      
        </ul>
      </section>

    </div>
  </div>

</div>

<div class="footer" >
 <div class="footer-hd">
 <p>
 <a href="#">ææç§æ</a>
 <b>|</b>
 <a href="#">ååé¦é¡µ</a>
 <b>|</b>
 <a href="#">æ¯ä»å®</a>
 <b>|</b>
 <a href="#">ç©æµ</a>
 </p>
 </div>
 <div class="footer-bd">
 <p>
 <a href="#">å³äºææ</a>
 <a href="#">åä½ä¼ä¼´</a>
 <a href="#">èç³»æä»¬</a>
 <a href="#">ç½ç«å°å¾</a>
 <em>Â© 2015-2025 Hengwang.com çæææ. æ´å¤æ¨¡æ¿ <a href="http://www.cssmoban.com/" target="_blank" title="æ¨¡æ¿ä¹å®¶">æ¨¡æ¿ä¹å®¶</a> - Collect from <a href="http://www.cssmoban.com/" title="ç½é¡µæ¨¡æ¿" target="_blank">ç½é¡µæ¨¡æ¿</a></em>
 </p>
 </div>
</div>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="{{assets}}js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="<%=path%>/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="<%=path%>/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>

</body>
</html>
