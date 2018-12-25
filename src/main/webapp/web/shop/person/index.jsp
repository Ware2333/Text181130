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
					<div class="wrap-left">
						<div class="wrap-list">
							<div class="m-user">
								<!--ä¸ªäººä¿¡æ¯ -->

								<div class="m-userinfo">
									<a href="news.html">
										<div class="tipsBox"><i class="am-icon-envelope"></i></div>
									</a>
									<div class="m-baseinfo">
										<a class="m-pic" href="information.html">
											<img src="<%=path%>/images/getAvatar.do.jpg">
										</a>
										<div class="m-info">
											<em class="s-name">å°å®å½</em>
											<div class="vip1"><a href="#"><span></span><em>ä¼åä¸äº«</em></a></div>
											<div class="safeText"><a href="safety.html">è´¦æ·å®å¨:<em style="margin-left:20px ;">60</em>å</a>
												<div class="progressBar"><span style="left: -95px;" class="progress"></span></div>
											</div>
											<div class="m-address">
												<a href="address.html" class="i-trigger">æ¶è´§å°å<i class="am-icon-angle-right" style="padding-left:5px ;"></i></a>
											</div>
										</div>
									</div>
									<div class="m-right">
										<div class="m-new">
											<a href="news.html"><i class="am-icon-dropbox  am-icon-md" style="padding-right:5px ;"></i>æ¶æ¯çå­</a>
										</div>

									</div>
								</div>

								<!--ä¸ªäººèµäº§-->
								<div class="m-userproperty">
									<div class="s-bar">
										<i class="s-icon"></i>ä¸ªäººèµäº§
									</div>
									<p class="m-coupon">
										<a href="coupon.html">
											<em class="m-num">2</em>
											<span class="m-title">ä¼æ å¸</span>
										</a>
									</p>
									<p class="m-wallet">
										<a href="wallet.html">
											<em class="m-num">0.00</em>
											<span class="m-title">è´¦æ·ä½é¢</span>
										</a>
									</p>
									<p class="m-bill">
										<a href="pointnew.html">
											<em class="m-num">10</em>
											<span class="m-title">æ»ç§¯å</span>
										</a>
									</p>
								</div>

								<!--æçé±å-->
								<div class="wallet">
									<div class="s-bar">
										<i class="s-icon"></i>ååé±å
									</div>
									<p class="m-big squareS">
										<a href="#">
											<i><img src="<%=path%>/images/shopping.png"/></i>
											<span class="m-title">è½è´­ç©</span>
										</a>
									</p>
									<p class="m-big squareA">
										<a href="#">
											<i><img src="<%=path%>/images/safe.png"/></i>
											<span class="m-title">å¤å®å¨</span>
										</a>
									</p>
									<p class="m-big squareL">
										<a href="#">
											<i><img src="<%=path%>/images/profit.png"/></i>
											<span class="m-title">å¾çµæ´»</span>
										</a>
									</p>
								</div>

							</div>
							<div class="box-container-bottom"></div>

							<!--è®¢å -->
							<div class="m-order">
								<div class="s-bar">
									<i class="s-icon"></i>æçè®¢å
									<a class="i-load-more-item-shadow" href="order.html">å¨é¨è®¢å</a>
								</div>
								<ul>
									<li><a href="order.html"><i><img src="<%=path%>/images/pay.png"/></i><span>å¾ä»æ¬¾</span></a></li>
									<li><a href="order.html"><i><img src="<%=path%>/images/send.png"/></i><span>å¾åè´§<em class="m-num">1</em></span></a></li>
									<li><a href="order.html"><i><img src="<%=path%>/images/receive.png"/></i><span>å¾æ¶è´§</span></a></li>
									<li><a href="order.html"><i><img src="<%=path%>/images/comment.png"/></i><span>å¾è¯ä»·<em class="m-num">3</em></span></a></li>
									<li><a href="change.html"><i><img src="<%=path%>/images/refund.png"/></i><span>éæ¢è´§</span></a></li>
								</ul>
								<div class="orderContentBox">
									<div class="orderContent">
										<div class="orderContentpic">
											<div class="imgBox">
												<a href="orderinfo.html"><img src="<%=path%>/images/youzi.jpg"></a>
											</div>
										</div>
										<div class="detailContent">
											<a href="orderinfo.html" class="delivery">ç­¾æ¶</a>
											<div class="orderID">
												<span class="time">2016-03-09</span>
												<span class="splitBorder">|</span>
												<span class="time">21:52:47</span>
											</div>
											<div class="orderID">
												<span class="num">å±1ä»¶åå</span>
											</div>
										</div>
										<div class="state">å¾è¯ä»·</div>
										<div class="price"><span class="sym">Â¥</span>23.<span class="sym">80</span></div>

									</div>
									<a href="javascript:void(0);" class="btnPay">åæ¬¡è´­ä¹°</a>
								</div>

								<div class="orderContentBox">
									<div class="orderContent">
										<div class="orderContentpic">
											<div class="imgBox">
												<a href="orderinfo.html"><img src="<%=path%>/images/heart.jpg"></a>
											</div>
										</div>
										<div class="detailContent">
											<a href="orderinfo.html" class="delivery">æ´¾ä»¶</a>
											<div class="orderID">
												<span class="time">2016-03-09</span>
												<span class="splitBorder">|</span>
												<span class="time">21:52:47</span>
											</div>
											<div class="orderID">
												<span class="num">å±2ä»¶åå</span>
											</div>
										</div>
										<div class="state">å·²åè´§</div>
										<div class="price"><span class="sym">Â¥</span>246.<span class="sym">50</span></div>

									</div>
									<a href="javascript:void(0);" class="btnPay">åæ¬¡è´­ä¹°</a>
								</div>
							</div>
							<!--ä¹å®«æ ¼-->
							<div class="user-squaredIcon">
								<div class="s-bar">
									<i class="s-icon"></i>æçå¸¸ç¨
								</div>
								<ul>
									<a href="order.html">
										<li class="am-u-sm-4"><i class="am-icon-truck am-icon-md"></i>
											<p>ç©æµæ¥è¯¢</p>
										</li>
									</a>
									<a href="collection.html">
										<li class="am-u-sm-4"><i class="am-icon-heart am-icon-md"></i>
											<p>æçæ¶è</p>
										</li>
									</a>
									<a href="foot.html">
										<li class="am-u-sm-4"><i class="am-icon-paw am-icon-md"></i>
											<p>æçè¶³è¿¹</p>
										</li>
									</a>
									<a href="#">
										<li class="am-u-sm-4"><i class="am-icon-gift am-icon-md"></i>
											<p>ä¸ºä½ æ¨è</p>
										</li>
									</a>
									<a href="blog.html">
										<li class="am-u-sm-4"><i class="am-icon-share-alt am-icon-md"></i>
											<p>æçåäº«</p>
										</li>
									</a>
									<a href="<%=path%>/home/home2.html">
										<li class="am-u-sm-4"><i class="am-icon-clock-o am-icon-md"></i>
											<p>éæ¶æ´»å¨</p>
										</li>
									</a>

								</ul>
							</div>

							<div class="user-suggestion">
								<div class="s-bar">
									<i class="s-icon"></i>ä¼åä¸­å¿
								</div>
								<div class="s-bar">
									<a href="suggest.html"><i class="s-icon"></i>æè§åé¦</a>
								</div>
							</div>

							<!--ä¼æ å¸ç§¯å-->
							<div class="twoTab">
								<div class="twoTabModel Coupon">
									<h5 class="squareTitle"><a href="#"><span class="splitBorder"></span>ä¼æ å¸<i class="am-icon-angle-right"></i></a></h5>
									<div class="Box">
										<div class="CouponList">
											<span class="price">Â¥<strong class="num">50</strong></span>
	                                        <p class="brandName"><a href="#">ABCåç499å50</a></p>
	                                        <p class="discount">æ»¡<span>499</span>åæµæ£</p>
                                            <a  href="#" class="btnReceive">ç«å³é¢å</a>
										</div>
									</div>
								</div>
								<div class="twoTabModel credit">
									<h5 class="squareTitle"><a href="#"><span class="splitBorder"></span>ç§¯ååå<i class="am-icon-angle-right"></i></a></h5>
									<div class="Box">
										<p class="countDown">
											<span class="hour">12</span>ï¼<span class="minute">09</span>ï¼<span class="second">02</span><em class="txtStart">å³å°å¼å§</em>
										</p>
										<div class="am-slider am-slider-default am-slider-carousel" data-am-flexslider="{itemWidth:108, itemMargin:3, slideshow: false}">
											<ul class="am-slides">
												<li><a href="#"><img src="<%=path%>/images/333.jpg" /></a></li>
												<li><a href="#"><img src="<%=path%>/images/222.jpg" /></a></li>
												<li><a href="#"><img src="<%=path%>/images/111.jpg" /></a></li>
												<li><a href="#"><img src="<%=path%>/images/333.jpg" /></a></li>
												<li><a href="#"><img src="<%=path%>/images/222.jpg" /></a></li>
												<li><a href="#"><img src="<%=path%>/images/111.jpg" /></a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
					<div class="wrap-right">

						<!-- æ¥å-->
						<div class="day-list">
							<div class="s-title">
								æ¯æ¥æ°é²äº
							</div>
							<div class="s-box">
								<ul>
									<li><a><p>ç²®æ²¹å²éå¨ æ»¡128å18</p></a></li>
									<li><a><p>é²æè¿ä¹éè¦çäºæè½éæ</p></a></li>
									<li><a><p>æ¥æ¥æ¤è¤é¢èä¸å¯å°ï¼ä½ éå¯¹äºåï¼</p></a></li>
									<li><a><p>çº¯ç²¹æ¶å°ï¼æ©ç»åºæ¸¸ï¼å¸çç¾è¡£</p></a></li>
									<li><a><p>ç²®æ²¹å²éå¨ æ»¡128å18</p></a></li>
									<li><a><p>æ¥æ¥æ¤è¤é¢èä¸å¯å°ï¼ä½ éå¯¹äºåï¼</p></a></li>									
								</ul>
							</div>
						</div>
						<!--æ°å -->
						<div class="new-goods">
							<div class="s-bar">
								<i class="s-icon"></i>ä»æ¥æ°å
								<a class="i-load-more-item-shadow">15æ¬¾æ°å</a>
							</div>
							<div class="new-goods-info">
								<a class="shop-info" href="#">
									<div class="face-img-panel">
										<img src="<%=path%>/images/imgsearch1.jpg" alt="">
									</div>
									<span class="new-goods-num ">4</span>
									<span class="shop-title">å¥å£³æ¾å­</span>
								</a>
								<a class="follow">æ¶è</a>
							</div>
						</div>						

						<!--ç­åæ¨è -->
						<div class="new-goods">
							<div class="s-bar">
								<i class="s-icon"></i>ç­åæ¨è
							</div>
							<div class="new-goods-info">
								<a class="shop-info" href="#" target="_blank">
									<div >
										<img src="<%=path%>/images/666.jpg" alt="">
									</div>
                                    <span class="one-hot-goods">ï¿¥189.60</span>
								</a>
							</div>
						</div>						
     				</div>
     				<div class="clear"></div>
     				
     				<!--æ¶èåè¶³è¿¹-->
     				 <div data-am-widget="tabs" class="am-tabs collection">
                         <ul class="am-tabs-nav am-cf">
                         	<li class="am-active"><a href="[data-tab-panel-0]"><i class="am-icon-heart"></i>ååæ¶è</a></li>
                            <li class=""><a href="[data-tab-panel-1]"><i class="am-icon-paw"></i>è´­ç©è¶³è¿¹</a></li>
                        </ul>
                        <div class="am-tabs-bd">

                            <div data-tab-panel-0 class="am-tab-panel am-active">
                        		<div class="am-slider am-slider-default am-slider-carousel" data-am-flexslider="{itemWidth:155,slideshow: false}">
									<ul class="am-slides">
                                       <li>
                                       	  <a><img class="am-thumbnail" src="<%=path%>/images/EZA27501.jpg" /></a>
                                       	  <strong class="price">Â¥32.9</strong>
                                       </li>
                                       <li>
                                       	  <a><img class="am-thumbnail" src="<%=path%>/images/BxJk6.jpg" /></a>
                                       	  <strong class="price">Â¥32.9</strong>
                                       </li>
                                       <li>
                                       	  <a><img class="am-thumbnail" src="<%=path%>/images/Hxcag60.jpg" /></a>
                                       	  <strong class="price">Â¥32.9</strong>
                                       </li>
                                       <li>
                                       	  <a><img class="am-thumbnail" src="<%=path%>/images/youzi.jpg" /></a>
                                       	  <strong class="price">Â¥32.9</strong>
                                       </li>
                                       <li>
                                       	  <a><img class="am-thumbnail" src="<%=path%>/images/EZA27501.jpg" /></a>
                                       	  <strong class="price">Â¥32.9</strong>
                                       </li>
                                       <li>
                                       	  <a><img class="am-thumbnail" src="<%=path%>/images/BxJk6.jpg" /></a>
                                       	  <strong class="price">Â¥32.9</strong>
                                       </li>
                                       <li>
                                       	  <a><img class="am-thumbnail" src="<%=path%>/images/Hxcag60.jpg" /></a>
                                       	  <strong class="price">Â¥32.9</strong>
                                       </li>
                                       <li>
                                       	  <a><img class="am-thumbnail" src="<%=path%>/images/youzi.jpg" /></a>
                                       	  <strong class="price">Â¥32.9</strong>
                                       </li>

									</ul>
								</div>
                            </div>
                            <div data-tab-panel-1 class="am-tab-panel "> 
                        		<div class="am-slider am-slider-default am-slider-carousel" data-am-flexslider="{itemWidth:155, slideshow: false}">
									<ul class="am-slides">
                                       <li>
                                       	  <a><img class="am-thumbnail" src="<%=path%>/images/BxJk6.jpg" /></a>
                                       	  <strong class="price">Â¥32.9</strong>
                                       </li>
                                       <li>
                                       	  <a><img class="am-thumbnail" src="<%=path%>/images/Hxcag60.jpg" /></a>
                                       	  <strong class="price">Â¥32.9</strong>
                                       </li>
                                       <li>
                                       	  <a><img class="am-thumbnail" src="<%=path%>/images/youzi.jpg" /></a>
                                       	  <strong class="price">Â¥32.9</strong>
                                       </li>
                                       <li>
                                       	  <a><img class="am-thumbnail" src="<%=path%>/images/EZA27501.jpg" /></a>
                                       	  <strong class="price">Â¥32.9</strong>
                                       </li>
                                       <li>
                                       	  <a><img class="am-thumbnail" src="<%=path%>/images/BxJk6.jpg" /></a>
                                       	  <strong class="price">Â¥32.9</strong>
                                       </li>
                                       <li>
                                       	  <a><img class="am-thumbnail" src="<%=path%>/images/Hxcag60.jpg" /></a>
                                       	  <strong class="price">Â¥32.9</strong>
                                       </li>
                                       <li>
                                       	  <a><img class="am-thumbnail" src="<%=path%>/images/youzi.jpg" /></a>
                                       	  <strong class="price">Â¥32.9</strong>
                                       </li>
                                       <li>
                                       	  <a><img class="am-thumbnail" src="<%=path%>/images/EZA27501.jpg" /></a>
                                       	  <strong class="price">Â¥32.9</strong>
                                       </li>
									</ul>
								</div>                            	
                            </div>
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
		<!--å¼å¯¼ -->
		<div class="navCir">
			<li><a href="<%=path%>/home/home2.html"><i class="am-icon-home "></i>é¦é¡µ</a></li>
			<li><a href="<%=path%>/home/sort.html"><i class="am-icon-list"></i>åç±»</a></li>
			<li><a href="<%=path%>/home/shopcart.html"><i class="am-icon-shopping-basket"></i>è´­ç©è½¦</a></li>
			<li class="active"><a href="index.html"><i class="am-icon-user"></i>æç</a></li>
		</div>
	</body>

</html>