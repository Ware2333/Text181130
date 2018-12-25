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

					<div class="user-collection">
						<!--æ é¢ -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">æçæ¶è</strong> / <small>My&nbsp;Collection</small></div>
						</div>
						<hr/>

						<div class="you-like">
							<div class="s-bar">
								æçæ¶è
								<a class="am-badge am-badge-danger am-round">éä»·</a>
								<a class="am-badge am-badge-danger am-round">ä¸æ¶</a>
							</div>
							<div class="s-content">
								<div class="s-item-wrap">
									<div class="s-item">

										<div class="s-pic">
											<a href="#" class="s-pic-link">
												<img src="<%=path%>/images/0-item_pic.jpg_220x220.jpg" alt="åé®s925çº¯é¶é¡¹é¾å¥³åå ç­æ¬¾ééª¨é¾é¢é¾æ¥é©ç«åªé¶é¥°ç®çº¦å¤éé¥°" title="åé®s925çº¯é¶é¡¹é¾å¥³åå ç­æ¬¾ééª¨é¾é¢é¾æ¥é©ç«åªé¶é¥°ç®çº¦å¤éé¥°" class="s-pic-img s-guess-item-img">
											</a>
										</div>
										<div class="s-info">
											<div class="s-title"><a href="#" title="åé®s925çº¯é¶é¡¹é¾å¥³åå ç­æ¬¾ééª¨é¾é¢é¾æ¥é©ç«åªé¶é¥°ç®çº¦å¤éé¥°">åé®s925çº¯é¶é¡¹é¾å¥³åå ç­æ¬¾ééª¨é¾é¢é¾æ¥é©ç«åªé¶é¥°ç®çº¦å¤éé¥°</a></div>
											<div class="s-price-box">
												<span class="s-price"><em class="s-price-sign">Â¥</em><em class="s-value">42.50</em></span>
												<span class="s-history-price"><em class="s-price-sign">Â¥</em><em class="s-value">68.00</em></span>
											</div>
											<div class="s-extra-box">
												<span class="s-comment">å¥½è¯: 98.03%</span>
												<span class="s-sales">æé: 219</span>
											</div>
										</div>
										<div class="s-tp">
											<span class="ui-btn-loading-before">æ¾ç¸ä¼¼</span>
											<i class="am-icon-shopping-cart"></i>
											<span class="ui-btn-loading-before buy">å å¥è´­ç©è½¦</span>
											<p>
												<a href="javascript:;" class="c-nodo J_delFav_btn">åæ¶æ¶è</a>
											</p>
										</div>
									</div>
								</div>

								<div class="s-item-wrap">
									<div class="s-item">

										<div class="s-pic">
											<a href="#" class="s-pic-link">
												<img src="<%=path%>/images/1-item_pic.jpg_220x220.jpg" alt="s925çº¯é¶åçº¸é¹¤ééª¨é¾ç­æ¬¾ç®çº¦æ¶å°é©çç´ é¶é¡¹é¾å°æ¸æ°ç§æ¬¾å¥³éé¥°" title="s925çº¯é¶åçº¸é¹¤ééª¨é¾ç­æ¬¾ç®çº¦æ¶å°é©çç´ é¶é¡¹é¾å°æ¸æ°ç§æ¬¾å¥³éé¥°" class="s-pic-img s-guess-item-img">
											</a>
										</div>
										<div class="s-info">
											<div class="s-title"><a href="#" title="s925çº¯é¶åçº¸é¹¤ééª¨é¾ç­æ¬¾ç®çº¦æ¶å°é©çç´ é¶é¡¹é¾å°æ¸æ°ç§æ¬¾å¥³éé¥°">s925çº¯é¶åçº¸é¹¤ééª¨é¾ç­æ¬¾ç®çº¦æ¶å°é©çç´ é¶é¡¹é¾å°æ¸æ°ç§æ¬¾å¥³éé¥°</a></div>
											<div class="s-price-box">
												<span class="s-price"><em class="s-price-sign">Â¥</em><em class="s-value">49.90</em></span>
												<span class="s-history-price"><em class="s-price-sign">Â¥</em><em class="s-value">88.00</em></span>
											</div>
											<div class="s-extra-box">
												<span class="s-comment">å¥½è¯: 99.74%</span>
												<span class="s-sales">æé: 69</span>
											</div>
										</div>
										<div class="s-tp">
											<span class="ui-btn-loading-before">æ¾ç¸ä¼¼</span>
											<i class="am-icon-shopping-cart"></i>
											<span class="ui-btn-loading-before buy">å å¥è´­ç©è½¦</span>
											<p>
												<a href="javascript:;" class="c-nodo J_delFav_btn">åæ¶æ¶è</a>
											</p>
										</div>
									</div>
								</div>

								<div class="s-item-wrap">
									<div class="s-item">

										<div class="s-pic">
											<a href="#" class="s-pic-link">
												<img src="<%=path%>/images/-0-saturn_solar.jpg_220x220.jpg" alt="4ææ¢è´­!åäºçè925é¶å¥³ææ,æ¶å°å¼å£å¥³æ" title="4ææ¢è´­!åäºçè925é¶å¥³ææ,æ¶å°å¼å£å¥³æ" class="s-pic-img s-guess-item-img">
											<span class="tip-title">å·²ä¸æ¶</span>
											</a>
										</div>
										<div class="s-info">
											<div class="s-title"><a href="#" title="4ææ¢è´­!åäºçè925é¶å¥³ææ,æ¶å°å¼å£å¥³æ">4ææ¢è´­!åäºçè925é¶å¥³ææ,æ¶å°å¼å£å¥³æ</a></div>
											<div class="s-price-box">
												<span class="s-price"><em class="s-price-sign">Â¥</em><em class="s-value">378.00</em></span>
												<span class="s-history-price"><em class="s-price-sign">Â¥</em><em class="s-value">1888.00</em></span>
											</div>
											<div class="s-extra-box">
												<span class="s-comment">å¥½è¯: 99.93%</span>
												<span class="s-sales">æé: 278</span>
											</div>
										</div>
										<div class="s-tp">
											<span class="ui-btn-loading-before">æ¾ç¸ä¼¼</span>
											<i class="am-icon-trash"></i>
											<span class="ui-btn-loading-before buy">è¿å¥åºéº</span>
											<p>
												<a href="javascript:;" class="c-nodo J_delFav_btn">åæ¶æ¶è</a>
											</p>
										</div>
									</div>
								</div>

								<div class="s-item-wrap">
									<div class="s-item">

										<div class="s-pic">
											<a href="#" class="s-pic-link">
												<img src="<%=path%>/images/0-item_pic.jpg_220x220.jpg" alt="åé®s925çº¯é¶é¡¹é¾å¥³åå ç­æ¬¾ééª¨é¾é¢é¾æ¥é©ç«åªé¶é¥°ç®çº¦å¤éé¥°" title="åé®s925çº¯é¶é¡¹é¾å¥³åå ç­æ¬¾ééª¨é¾é¢é¾æ¥é©ç«åªé¶é¥°ç®çº¦å¤éé¥°" class="s-pic-img s-guess-item-img">
											</a>
										</div>
										<div class="s-info">
											<div class="s-title"><a href="#" title="åé®s925çº¯é¶é¡¹é¾å¥³åå ç­æ¬¾ééª¨é¾é¢é¾æ¥é©ç«åªé¶é¥°ç®çº¦å¤éé¥°">åé®s925çº¯é¶é¡¹é¾å¥³åå ç­æ¬¾ééª¨é¾é¢é¾æ¥é©ç«åªé¶é¥°ç®çº¦å¤éé¥°</a></div>
											<div class="s-price-box">
												<span class="s-price"><em class="s-price-sign">Â¥</em><em class="s-value">42.50</em></span>
												<span class="s-history-price"><em class="s-price-sign">Â¥</em><em class="s-value">68.00</em></span>
											</div>
											<div class="s-extra-box">
												<span class="s-comment">å¥½è¯: 98.03%</span>
												<span class="s-sales">æé: 219</span>
											</div>
										</div>
										<div class="s-tp">
											<span class="ui-btn-loading-before">æ¾ç¸ä¼¼</span>
											<i class="am-icon-shopping-cart"></i>
											<span class="ui-btn-loading-before buy">å å¥è´­ç©è½¦</span>
											<p>
												<a href="javascript:;" class="c-nodo J_delFav_btn">åæ¶æ¶è</a>
											</p>
										</div>										
									</div>
								</div>

								<div class="s-item-wrap">
									<div class="s-item">

										<div class="s-pic">
											<a href="#" class="s-pic-link">
												<img src="<%=path%>/images/1-item_pic.jpg_220x220.jpg" alt="s925çº¯é¶åçº¸é¹¤ééª¨é¾ç­æ¬¾ç®çº¦æ¶å°é©çç´ é¶é¡¹é¾å°æ¸æ°ç§æ¬¾å¥³éé¥°" title="s925çº¯é¶åçº¸é¹¤ééª¨é¾ç­æ¬¾ç®çº¦æ¶å°é©çç´ é¶é¡¹é¾å°æ¸æ°ç§æ¬¾å¥³éé¥°" class="s-pic-img s-guess-item-img">
											</a>
										</div>
										<div class="s-info">
											<div class="s-title"><a href="#" title="s925çº¯é¶åçº¸é¹¤ééª¨é¾ç­æ¬¾ç®çº¦æ¶å°é©çç´ é¶é¡¹é¾å°æ¸æ°ç§æ¬¾å¥³éé¥°">s925çº¯é¶åçº¸é¹¤ééª¨é¾ç­æ¬¾ç®çº¦æ¶å°é©çç´ é¶é¡¹é¾å°æ¸æ°ç§æ¬¾å¥³éé¥°</a></div>
											<div class="s-price-box">
												<span class="s-price"><em class="s-price-sign">Â¥</em><em class="s-value">49.90</em></span>
												<span class="s-history-price"><em class="s-price-sign">Â¥</em><em class="s-value">88.00</em></span>
											</div>
											<div class="s-extra-box">
												<span class="s-comment">å¥½è¯: 99.74%</span>
												<span class="s-sales">æé: 69</span>
											</div>
										</div>
										<div class="s-tp">
											<span class="ui-btn-loading-before">æ¾ç¸ä¼¼</span>
											<i class="am-icon-shopping-cart"></i>
											<span class="ui-btn-loading-before buy">å å¥è´­ç©è½¦</span>
											<p>
												<a href="javascript:;" class="c-nodo J_delFav_btn">åæ¶æ¶è</a>
											</p>
										</div>
									</div>
								</div>

								<div class="s-item-wrap">
									<div class="s-item">

										<div class="s-pic">
											<a href="#" class="s-pic-link">
												<img src="<%=path%>/images/-0-saturn_solar.jpg_220x220.jpg" alt="4ææ¢è´­!åäºçè925é¶å¥³ææ,æ¶å°å¼å£å¥³æ" title="4ææ¢è´­!åäºçè925é¶å¥³ææ,æ¶å°å¼å£å¥³æ" class="s-pic-img s-guess-item-img">
											</a>
										</div>
										<div class="s-info">
											<div class="s-title"><a href="#" title="4ææ¢è´­!åäºçè925é¶å¥³ææ,æ¶å°å¼å£å¥³æ">4ææ¢è´­!åäºçè925é¶å¥³ææ,æ¶å°å¼å£å¥³æ</a></div>
											<div class="s-price-box">
												<span class="s-price"><em class="s-price-sign">Â¥</em><em class="s-value">378.00</em></span>
												<span class="s-history-price"><em class="s-price-sign">Â¥</em><em class="s-value">1888.00</em></span>
											</div>
											<div class="s-extra-box">
												<span class="s-comment">å¥½è¯: 99.93%</span>
												<span class="s-sales">æé: 278</span>
											</div>
										</div>
										<div class="s-tp">
											<span class="ui-btn-loading-before">æ¾ç¸ä¼¼</span>
											<i class="am-icon-shopping-cart"></i>
											<span class="ui-btn-loading-before buy">å å¥è´­ç©è½¦</span>
											<p>
												<a href="javascript:;" class="c-nodo J_delFav_btn">åæ¶æ¶è</a>
											</p>
										</div>
									</div>
								</div>

							</div>

							<div class="s-more-btn i-load-more-item" data-screen="0"><i class="am-icon-refresh am-icon-fw"></i>æ´å¤</div>

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