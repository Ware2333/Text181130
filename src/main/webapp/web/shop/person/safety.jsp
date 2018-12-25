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
		<div class="center">
			<div class="col-main">
				<div class="main-wrap">

					<!--æ é¢ -->
					<div class="user-safety">
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">è´¦æ·å®å¨</strong> / <small>Set&nbsp;up&nbsp;Safety</small></div>
						</div>
						<hr/>

						<!--å¤´å -->
						<div class="user-infoPic">

							<div class="filePic">
								<img class="am-circle am-img-thumbnail" src="<%=path%>/images/getAvatar.do.jpg" alt="" />
							</div>

							<p class="am-form-help">å¤´å</p>

							<div class="info-m">
								<div><b>ç¨æ·åï¼<i>å°å®å½</i></b></div>
                                <div class="safeText">
                                  	<a href="safety.html">è´¦æ·å®å¨:<em style="margin-left:20px ;">60</em>å</a>
									<div class="progressBar"><span style="left: -95px;" class="progress"></span></div>
								</div>
							</div>
						</div>

						<div class="check">
							<ul>
								<li>
									<i class="i-safety-lock"></i>
									<div class="m-left">
										<div class="fore1">ç»å½å¯ç </div>
										<div class="fore2"><small>ä¸ºä¿è¯æ¨è´­ç©å®å¨ï¼å»ºè®®æ¨å®ææ´æ¹å¯ç ä»¥ä¿æ¤è´¦æ·å®å¨ã</small></div>
									</div>
									<div class="fore3">
										<a href="password.html">
											<div class="am-btn am-btn-secondary">ä¿®æ¹</div>
										</a>
									</div>
								</li>
								<li>
									<i class="i-safety-wallet"></i>
									<div class="m-left">
										<div class="fore1">æ¯ä»å¯ç </div>
										<div class="fore2"><small>å¯ç¨æ¯ä»å¯ç åè½ï¼ä¸ºæ¨èµäº§è´¦æ·å®å¨å æéã</small></div>
									</div>
									<div class="fore3">
										<a href="setpay.html">
											<div class="am-btn am-btn-secondary">ç«å³å¯ç¨</div>
										</a>
									</div>
								</li>
								<li>
									<i class="i-safety-iphone"></i>
									<div class="m-left">
										<div class="fore1">ææºéªè¯</div>
										<div class="fore2"><small>æ¨éªè¯çææºï¼186XXXXXXXX è¥å·²ä¸¢å¤±æåç¨ï¼è¯·ç«å³æ´æ¢</small></div>
									</div>
									<div class="fore3">
										<a href="bindphone.html">
											<div class="am-btn am-btn-secondary">æ¢ç»</div>
										</a>
									</div>
								</li>
								<li>
									<i class="i-safety-mail"></i>
									<div class="m-left">
										<div class="fore1">é®ç®±éªè¯</div>
										<div class="fore2"><small>æ¨éªè¯çé®ç®±ï¼5831XXX@qq.com å¯ç¨äºå¿«éæ¾åç»å½å¯ç </small></div>
									</div>
									<div class="fore3">
										<a href="email.html">
											<div class="am-btn am-btn-secondary">æ¢ç»</div>
										</a>
									</div>
								</li>
								<li>
									<i class="i-safety-idcard"></i>
									<div class="m-left">
										<div class="fore1">å®åè®¤è¯</div>
										<div class="fore2"><small>ç¨äºæåè´¦å·çå®å¨æ§åä¿¡ä»»çº§å«ï¼è®¤è¯åä¸è½ä¿®æ¹è®¤è¯ä¿¡æ¯ã</small></div>
									</div>
									<div class="fore3">
										<a href="idcard.html">
											<div class="am-btn am-btn-secondary">è®¤è¯</div>
										</a>
									</div>
								</li>
								<li>
									<i class="i-safety-security"></i>
									<div class="m-left">
										<div class="fore1">å®å¨é®é¢</div>
										<div class="fore2"><small>ä¿æ¤è´¦æ·å®å¨ï¼éªè¯æ¨èº«ä»½çå·¥å·ä¹ä¸ã</small></div>
									</div>
									<div class="fore3">
										<a href="question.html">
											<div class="am-btn am-btn-secondary">è®¤è¯</div>
										</a>
									</div>
								</li>
							</ul>
						</div>

					</div>
				</div>
				<!--åºé¨-->
				<div class="footer">
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
			</div>

			<aside class="menu">
				<ul>
					<li class="person active">
						<a href="index.html"><i class="am-icon-user"></i>ä¸ªäººä¸­å¿</a>
					</li>
					<li class="person">
						<p><i class="am-icon-newspaper-o"></i>ä¸ªäººèµæ</p>
						<ul>
							<li> <a href="information.html">ä¸ªäººä¿¡æ¯</a></li>
							<li> <a href="safety.html">å®å¨è®¾ç½®</a></li>
							<li> <a href="address.html">å°åç®¡ç</a></li>
							<li> <a href="cardlist.html">å¿«æ·æ¯ä»</a></li>
						</ul>
					</li>
					<li class="person">
						<p><i class="am-icon-balance-scale"></i>æçäº¤æ</p>
						<ul>
							<li><a href="order.html">è®¢åç®¡ç</a></li>
							<li> <a href="change.html">éæ¬¾å®å</a></li>
							<li> <a href="comment.html">è¯ä»·åå</a></li>
						</ul>
					</li>
					<li class="person">
						<p><i class="am-icon-dollar"></i>æçèµäº§</p>
						<ul>
							<li> <a href="points.html">æçç§¯å</a></li>
							<li> <a href="coupon.html">ä¼æ å¸ </a></li>
							<li> <a href="bonus.html">çº¢å</a></li>
							<li> <a href="walletlist.html">è´¦æ·ä½é¢</a></li>
							<li> <a href="bill.html">è´¦åæç»</a></li>
						</ul>
					</li>

					<li class="person">
						<p><i class="am-icon-tags"></i>æçæ¶è</p>
						<ul>
							<li> <a href="collection.html">æ¶è</a></li>
							<li> <a href="foot.html">è¶³è¿¹</a></li>
						</ul>
					</li>

					<li class="person">
						<p><i class="am-icon-qq"></i>å¨çº¿å®¢æ</p>
						<ul>
							<li> <a href="consultation.html">ååå¨è¯¢</a></li>
							<li> <a href="suggest.html">æè§åé¦</a></li>							
							
							<li> <a href="news.html">æçæ¶æ¯</a></li>
						</ul>
					</li>
				</ul>

			</aside>
		</div>

	</body>

</html>