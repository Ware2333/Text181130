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
						<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">éæ¢è´§ç³è¯·</strong> / <small>Apply&nbsp;for&nbsp;returns</small></div>
					</div>
					<hr/>
					<div class="comment-list">
					<!--è¿åº¦æ¡-->
					<div class="m-progress">
						<div class="m-progress-list">
							<span class="step-1 step">
                                <em class="u-progress-stage-bg"></em>
                                <i class="u-stage-icon-inner">1<em class="bg"></em></i>
                                <p class="stage-name">ä¹°å®¶ç³è¯·éæ¬¾</p>
                            </span>
							<span class="step-2 step">
                                <em class="u-progress-stage-bg"></em>
                                <i class="u-stage-icon-inner">2<em class="bg"></em></i>
                                <p class="stage-name">åå®¶å¤çéæ¬¾ç³è¯·</p>
                            </span>
							<span class="step-3 step">
                                <em class="u-progress-stage-bg"></em>
                                <i class="u-stage-icon-inner">3<em class="bg"></em></i>
                                <p class="stage-name">æ¬¾é¡¹æåéå</p>
                            </span>                            
							<span class="u-progress-placeholder"></span>
						</div>
						<div class="u-progress-bar total-steps-2">
							<div class="u-progress-bar-inner"></div>
						</div>
					</div>
					
					
						<div class="refund-aside">
							<div class="item-pic">
								<a href="#" class="J_MakePoint">
									<img src="<%=path%>/images/comment.jpg_400x400.jpg" class="itempic">
								</a>
							</div>

							<div class="item-title">

								<div class="item-name">
									<a href="#">
										<p class="item-basic-info">ç¾åº·ç²é»éç¾åè æä¹ä¿æ¹¿æ»æ¶¦é²æ°´ä¸æè²</p>
									</a>
								</div>
								<div class="info-little">
									<span>é¢è²ï¼æ´é³ç¡ä¸¹</span>
									<span>åè£ï¼è£¸è£</span>
								</div>
							</div>
							<div class="item-info">
								<div class="item-ordernumber">
									<span class="info-title">è®¢åç¼å·ï¼</span><a>1474784641639947</a>
								</div>
								<div class="item-price">
									<span class="info-title">ä»·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;æ ¼ï¼</span><span class="price">19.88å</span>
									<span class="number">Ã1</span><span class="item-title">(æ°é)</span>
								</div>
								<div class="item-amount">
									<span class="info-title">å°&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;è®¡ï¼</span><span class="amount">19.88å</span>
								</div>
								<div class="item-pay-logis">
									<span class="info-title">è¿&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;è´¹ï¼</span><span class="price">10.00å</span>
								</div>
								<div class="item-amountall">
									<span class="info-title">æ»&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;è®¡ï¼</span><span class="amountall">29.88å</span>
								</div>
								<div class="item-time">
									<span class="info-title">æäº¤æ¶é´ï¼</span><span class="time">2015-12-12&nbsp;17:07</span>
								</div>

							</div>
							<div class="clear"></div>
						</div>

						<div class="refund-main">
							<div class="item-comment">
								<div class="am-form-group">
									<label for="refund-type" class="am-form-label">éæ¬¾ç±»å</label>
									<div class="am-form-content">
										<select data-am-selected="">
											<option value="a" selected>ä»éæ¬¾</option>
											<option value="b">éæ¬¾/éè´§</option>
										</select>
									</div>
								</div>
								
								<div class="am-form-group">
									<label for="refund-reason" class="am-form-label">éæ¬¾åå </label>
									<div class="am-form-content">
										<select data-am-selected="">
											<option value="a" selected>è¯·éæ©éæ¬¾åå </option>
											<option value="b">ä¸æ³è¦äº</option>
											<option value="c">ä¹°éäº</option>
											<option value="d">æ²¡æ¶å°è´§</option>											
											<option value="e">ä¸è¯´æä¸ç¬¦</option>
										</select>
									</div>
								</div>

								<div class="am-form-group">
									<label for="refund-money" class="am-form-label">éæ¬¾éé¢<span>ï¼ä¸å¯ä¿®æ¹ï¼</span></label>
									<div class="am-form-content">
										<input type="text" id="refund-money" readonly="readonly" placeholder="19.88">
									</div>
								</div>
								<div class="am-form-group">
									<label for="refund-info" class="am-form-label">éæ¬¾è¯´æ<span>ï¼å¯ä¸å¡«ï¼</span></label>
									<div class="am-form-content">
										<textarea placeholder="è¯·è¾å¥éæ¬¾è¯´æ"></textarea>
									</div>
								</div>

							</div>
							<div class="refund-tip">
								<div class="filePic">
									<input type="file" class="inputPic" value="éæ©å­è¯å¾ç" name="file" max="5" maxsize="5120" allowexts="gif,jpeg,jpg,png,bmp" accept="image/*">
									<img src="<%=path%>/images/image.jpg" alt="">
								</div>
								<span class="desc">ä¸ä¼ å­è¯&nbsp;æå¤ä¸å¼ </span>
							</div>
							<div class="info-btn">
								<div class="am-btn am-btn-danger">æäº¤ç³è¯·</div>
							</div>
						</div>
					</div>
					<div class="clear"></div>
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