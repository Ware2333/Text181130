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
					<div class="am-cf am-padding">
						<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">æçé¶è¡å¡</strong> / <small>My&nbsp;Credit&nbsp;Card</small></div>
					</div>
					<hr/>
					<div class="card-box-list">
						<ul>
							<li>
								<div class="card-box">
									<div class="card-box-name">
										<span class="bank-logo"><a href="#"><img src="<%=path%>/images/bankjh.png"></a></span>
										<span title="ä¸­å½å»ºè®¾é¶è¡" class="bank-name">ä¸­å½å»ºè®¾é¶è¡</span>
										<span class="bank-num4">å°¾å·9098</span>
										<span class="card-type card-type-CC"></span>
									</div>
									<div class="card-box-express">
										<div class="express-status">
											<span class="asset-icon asset-icon-express-s"></span> <span>å·²å¼é</span>
										</div>
										<div class="express-else"><a href="#">ç®¡ç</a></div>
									</div>
									<div class="card-detail">
										<div class="card-detail-list">
											<div class="card-detail-value" title="è´¦å"><a href="billlist.html"><strong>è´¦å</strong><span></span></a></div>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="card-box">
									<div class="card-box-name">
										<span class="bank-logo"><a href="#"><img src="<%=path%>/images/bankns.png"></a></span>
										<span title="æ¹åçåæä¿¡ç¨åä½èç¤¾" class="bank-name">æ¹åçåæä¿¡ç¨åä½èç¤¾</span>
										<span class="bank-num4">å°¾å·8652</span>
										<span class="card-type card-type-DC"></span>
									</div>
									<div class="card-box-express">
										<div class="express-status">
											<span class="asset-icon asset-icon-express-s"></span> <span>å·²å¼é</span>
										</div>
										<div class="express-else"><a href="#">ç®¡ç</a></div>
									</div>
									<div class="card-detail">
										<div class="card-detail-value" title="è´¦å"><a href="billlist.html"><strong>è´¦å</strong><span></span></a></div>
									</div>
								</div>
							</li>
							<li>
								<div class="card-box">
									<div class="card-box-name">
										<span class="bank-logo"><a href="#"><img src="<%=path%>/images/bankjh.png"></a></span>
										<span title="ä¸­å½å»ºè®¾é¶è¡" class="bank-name">ä¸­å½å»ºè®¾é¶è¡</span>
										<span class="bank-num4">å°¾å·9098</span>
										<span class="card-type card-type-CC"></span>
									</div>
									<div class="card-box-express">
										<div class="express-status">
											<span class="asset-icon asset-icon-express-s"></span> <span>å·²å¼é</span>
										</div>
										<div class="express-else"><a href="#">ç®¡ç</a></div>
									</div>
									<div class="card-detail">
										<div class="card-detail-list">
											<div class="card-detail-value" title="è´¦å"><a href="billlist.html"><strong>è´¦å</strong><span></span></a></div>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="card-box">
									<div class="card-box-name">
										<span class="bank-logo"><a href="#"><img src="<%=path%>/images/bankns.png"></a></span>
										<span title="æ¹åçåæä¿¡ç¨åä½èç¤¾" class="bank-name">æ¹åçåæä¿¡ç¨åä½èç¤¾</span>
										<span class="bank-num4">å°¾å·8652</span>
										<span class="card-type card-type-DC"></span>
									</div>
									<div class="card-box-express">
										<div class="express-status">
											<span class="asset-icon asset-icon-express-s"></span> <span>å·²å¼é</span>
										</div>
										<div class="express-else"><a href="#">ç®¡ç</a></div>
									</div>
									<div class="card-detail">
										<div class="card-detail-value" title="è´¦å"><a href="billlist.html"><strong>è´¦å</strong><span></span></a></div>
									</div>
								</div>
							</li>
							<li>
								<div class="add-card">
									<a href="cardmethod.html" target="_blank"><i class="am-icon-plus"></i>æ·»å é¶è¡å¡</a>
								</div>
							</li>
						</ul>
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