<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%-- <%@include file="/web/mallheader.jsp"%> --%>
<title>Insert title here</title>
<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/default.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/jquery-ui-custom.css">
	<link rel="stylesheet" href="css/mmenu.css">
	<link rel="stylesheet" href="css/placebo.css">
	<link rel="stylesheet" href="css/prettyPhoto.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/responsive.css">
	<link rel="stylesheet" href="layerslider/css/layerslider.css">
	<link rel="stylesheet" href="css/twentytwenty.css">
	<link rel="stylesheet" href="css/test.css">
</head>
<body class="home page page-id-77 page-parent page-template-default custom-background waves-pagebuilder menu-fixed theme-full">
   	<div id="theme-layout">
		<div class="tw-top-bar">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<div class="tw-top-widget left" id="text-2">
							<div class="textwidget">
								<i class="fa fa-envelope-o"></i> 1063730142@qq.com
							</div>
						</div>
						<div class="tw-top-widget left" id="text-3">
							<div class="textwidget">
								<i class="fa fa-phone"></i><span class="normal"> 1 306 14 131 20</span>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="tw-top-widget right" id="search-3">
							<form role="search" onsubmit="return false" id="searchform" >
								<div class="input">
									<input type="text" name="commodity_name" id="s" placeholder="查找内容">
									<i class="button-search fa fa-search"></i>
								</div>
							</form>
						</div>
						<div class="tw-top-widget right" id="woocommerce_widget_cart-2">
							<span class="top-widget-title">Your Cart</span>
							<div class="widget_shopping_cart_content">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Start Header -->
		<header id="header" class="header-large">
			<div class="container">
				<div class="show-mobile-menu clearfix">
					<a href="#mobile-menu" class="mobile-menu-icon">
					<span></span><span></span><span></span><span></span>
					</a>
				</div>
				<div class="row header">
					<div class="col-md-3">
						<div class="tw-logo">
							<a class="logo" href="index.jsp">${user}</a>
							<a href="javascript:Cancellation()">注销</a>
						</div>
					</div>
					<div class="col-md-9">
						<nav class="menu-container clearfix">
						<div class="tw-menu-container">
							<ul id="menu" class="sf-menu">
								<li class="menu-item menu-item-has-children"><a href="index.html">主页</a></li>
								<li class="menu-item menu-item-has-children"><a href="about.html">关于我们</a></li>
								<li class="menu-item menu-item-has-children"><a href="portfolio.html">投资组合</a></li>
								<li class="menu-item menu-item-has-children"><a href="blog.html">博客</a></li>
								<li class="menu-item menu-item-has-children"><a href="shop.html">商城</a></li>
								<li class="menu-item menu-item-has-children"><a href="contact.html">联系我们</a></li>
							</ul>
						</div>
						</nav>
					</div>
				</div>
			</div>
		</header>
		<div class="header-clone">
		</div>
		<!-- End Header -->
		<section id="slider">
			<div class="ls-wp-fullwidth-container" style="height:805px;">
				<div class="ls-wp-fullwidth-helper">
					<div id="layerslider_1_1" class="ls-wp-container" style="width:100%;height:805px;margin:0 auto;margin-bottom: 0px;">
						<div class="ls-slide" data-ls="transition2d:1;timeshift:-1000;">
							<img src="upload/slide1.jpg" class="ls-bg" alt="slide1">
							<p class="ls-l" style="top:254px;left:176px;font-weight: 700;height:40px;padding-right:10px;padding-left:10px;font-family:Lato, sans-serif;font-size:50px;color:#ffffff;border-radius:3px;white-space: nowrap;" data-ls="offsetxin:0;durationin:2000;delayin:1500;easingin:easeOutElastic;rotatexin:-90;transformoriginin:50% top 0;offsetxout:-200;durationout:1000;">
								CRAFT IS
							</p>
							<p class="ls-l" style="top:253px;left:420px;font-weight: 700;padding-top:0px;padding-right:10px;padding-bottom:0px;padding-left:10px;font-family:Lato, sans-serif;font-size:50px;color:#ffffff;background:#21b6a8;border-radius:3px;white-space: nowrap;" data-ls="durationin:2000;delayin:2000;rotatexin:-90;transformoriginin:50% top 0;durationout:1000;">
								READY
							</p>
							<p class="ls-l" style="top:254px;left:618px;font-weight: 700;font-family:Lato, sans-serif;font-size:50px;color:#ffffff;white-space: nowrap;" data-ls="delayin:2000;rotatexin:-90;transformoriginin:50% top 0;durationout:1000;">
								 FOR YOUR BUSINESS
							</p>
							<p class="ls-l" style="top:401px;left:328px;text-align:center;font-family:Lato, sans-serif;;font-size:30px;color:#fff;white-space: nowrap;" data-ls="offsetxin:0;durationin:2000;delayin:3500;easingin:swing;transformoriginin:50% top 0;offsetxout:-400;">
								with our themes gain simplicity and powerfull
							</p>
							<p class="ls-l" style="top:453px;left:496px;font-family:Lato, sans-serif;;font-size:30px;color:#fff;white-space: nowrap;" data-ls="delayin:3700;easingin:swing;">
								business solutions
							</p>
							<img class="ls-l" style="top:352px;left:582px;white-space: nowrap;" data-ls="delayin:3000;easingin:swing;" src="upload/slider-title-sep.jpg" alt="">
						</div>
						<div class="ls-slide" data-ls="transition2d:1;timeshift:-1000;">
							<img src="upload/slide2.jpg" class="ls-bg" alt="slide2">
							<p class="ls-l" style="top:254px;left:176px;font-weight: 700;height:40px;padding-right:10px;padding-left:10px;font-family:Lato, sans-serif;font-size:50px;color:#ffffff;border-radius:3px;white-space: nowrap;" data-ls="offsetxin:0;durationin:2000;delayin:1500;easingin:easeOutElastic;rotatexin:-90;transformoriginin:50% top 0;offsetxout:-200;durationout:1000;">
								WE ARE CRAFT, WE CRAFT
							</p>
							<p class="ls-l" style="top:255px;left:878px;font-weight: 700;padding-top:0px;padding-right:10px;padding-bottom:0px;padding-left:10px;font-family:Lato, sans-serif;font-size:50px;color:#ffffff;background:#21b6a8;border-radius:3px;white-space: nowrap;" data-ls="durationin:2000;delayin:2000;rotatexin:-90;transformoriginin:50% top 0;durationout:1000;">
								BEAUTY
							</p>
							<p class="ls-l" style="top:399px;left:436px;font-weight:300;font-family:Lato, sans-serif;;font-size:30px;color:#fff;white-space: nowrap;" data-ls="offsetxin:0;durationin:2000;delayin:3500;easingin:swing;transformoriginin:50% top 0;offsetxout:-400;">
								beauty expressed in digital way
							</p>
							<p class="ls-l" style="top:452px;left:404px;font-weight:300;font-family:Lato, sans-serif;;font-size:30px;color:#fff;white-space: nowrap;" data-ls="delayin:3700;easingin:swing;">
								give you business a boost with <strong>craft</strong>
							</p>
							<img class="ls-l" style="top:360px;left:562px;white-space: nowrap;" data-ls="delayin:3000;easingin:swing;" src="upload/slider-title-sep.jpg" alt="">
						</div>
						<div class="ls-slide" data-ls="transition2d:1;timeshift:-1000;">
							<img src="upload/slide3.jpg" class="ls-bg" alt="slide3">
							<p class="ls-l" style="top:254px;left:58px;font-weight: 700;height:40px;padding-right:10px;padding-left:10px;font-family:Lato, sans-serif;font-size:50px;color:#ffffff;border-radius:3px;white-space: nowrap;" data-ls="offsetxin:0;durationin:2000;delayin:1200;easingin:easeOutElastic;rotatexin:-90;transformoriginin:50% top 0;offsetxout:-200;durationout:1000;">
								DEVICE FRIENDLY
							</p>
							<p class="ls-l" style="top:329px;left:106px;font-weight: 700;height:40px;padding-right:10px;padding-left:10px;font-family:Lato, sans-serif;font-size:50px;color:#ffffff;border-radius:3px;white-space: nowrap;" data-ls="offsetxin:0;durationin:2000;delayin:1500;easingin:easeOutElastic;rotatexin:-90;transformoriginin:50% top 0;offsetxout:-200;durationout:1000;">
								RESPONSIVE
							</p>
							<p class="ls-l" style="top:443px;left:44px;font-weight:300;font-family:Lato, sans-serif;;font-size:30px;color:#fff;white-space: nowrap;" data-ls="offsetxin:0;durationin:2000;delayin:3500;easingin:swing;transformoriginin:50% top 0;offsetxout:-400;">
								it doesn’t matter what device you have
							</p>
							<p class="ls-l" style="top:499px;left:75px;font-weight:300;font-family:Lato, sans-serif;;font-size:30px;color:#fff;white-space: nowrap;" data-ls="delayin:3700;easingin:swing;">
								craft fits perfectly on all of them
							</p>
							<img class="ls-l" style="top:409px;left:214px;white-space: nowrap;" data-ls="delayin:3000;easingin:swing;" src="upload/slider-title-sep.jpg" alt=""><img class="ls-l" style="top:202px;left:598px;white-space: nowrap;" data-ls="delayin:4000;easingin:easeInQuint;rotatexin:20;transformoriginin:50% 0 top;" src="upload/imac.png" alt=""><img class="ls-l" style="top:409px;left:549px;white-space: nowrap;" data-ls="delayin:4200;rotatexin:30;transformoriginin:50% 0 left;" src="upload/ipad-air.png" alt=""><img class="ls-l" style="top:431px;left:1042px;white-space: nowrap;" data-ls="delayin:4450;rotatexin:40;transformoriginin:50% 0 right;" src="upload/iphone.png" alt="">
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- Start Main -->
		<section id="main">
		<div id="page">

			
			<div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >网页模板</a></div>


			<div class="row-container light bg-scroll" >
				<div class="waves-container container">
					<div class="row">
						<div class="col-md-12 ">
							<div class="row">
								<div class="tw-element waves-portfolio col5f waves-full-element col-md-12" >
									<div class="tw-filters">
										<ul class="filters clearfix single" data-option-key="filter" name="single">
										</ul>
									</div>
									<div class="row">
										<div class="isotope-container" data-column="5">
										</div>
									</div>
									<div class="tw-pagination tw-infinite-scroll align-center" >
										<a class="next" href="#">VIEW MORE...</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- end portofolio -->
			<div class="row-container light bg-scroll" >
				<div class="waves-container container">
					<div class="row">
						<div id="div_35df_0">
						</div>
						<div class="col-md-12 ">
							<div class="row">
								<div class="tw-element col-md-12" >
									<div class="waves-map waves-full-element">

									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="div_35df_1">
					</div>
				</div>
			</div>

	
		</div>
		</section>
		<!-- End Main -->

		<div id="bottom">
			<!-- Start Container-->
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-1">
						<aside class="widget widget_text" id="text-4">
						<div class="textwidget">
							<img src="upload/footer-logo.png" alt="" />
							<br/>
							<br/>
							Lorem ipsum dolor sit amet, insectetur adipisicing. <a href="#" title="Read More">READ MORE</a>
							<br/>
							<br/>
							Address: 321 Name Street, City, State<br/>
							Phone: 0 800 55 555 55 123<br/>
							e-mail: info@craftemplate.com
						</div>
						</aside>
					</div>
					<div class="col-md-3 col-2">
						<aside class="widget TWRecentPortWidget" id="twrecentportwidget-2">
						<div class="tw-widget-title-container">
							<h3 class="widget-title">Recent Works</h3>
						</div>
						<div class="tw-recent-portfolios-widget clearfix">
							<a href="#"><img src="upload/portfolio10-150x150.jpg" alt="Baby with shoes"></a>
							<a href="#"><img src="upload/portfolio9-150x150.jpg" alt="Parrot"></a>
							<a href="#"><img src="upload/portfolio8-150x150.jpg" alt="Mirror of Window"></a>
							<a href="#"><img src="upload/portfolio7-150x150.jpg" alt="Pigeon"></a>
							<a href="#"><img src="upload/portfolio6-150x150.jpg" alt="Nature of Beauty"></a>
							<a href="#"><img src="upload/portfolio5-150x150.jpg" alt="Happy Friends"></a>
						</div>
						</aside>
					</div>
					<div class="col-md-3 col-3">
						<aside class="widget widget_recent_entries" id="recent-posts-3">
						<div class="tw-widget-title-container">
							<h3 class="widget-title">Recent Posts</h3>
						</div>
						<ul>
							<li>
							<a href="#">Night Car</a>
							</li>
							<li>
							<a href="#">Gate of Faith</a>
							</li>
							<li>
							<a href="#">Mix Sound Cloud</a>
							</li>
							<li>
							<a href="#">Cute old BIG Bear watching us</a>
							</li>
							<li>
							<a href="#">Format Video</a>
							</li>
						</ul>
						</aside>
					</div>
					<div class="col-md-3 col-4">
						<aside class="widget widget_tag_cloud" id="tag_cloud-2">
						<div class="tw-widget-title-container">
							<h3 class="widget-title">Tags</h3>
						</div>
						<div class="tagcloud">
							<a href='#' class='tag-link-30' title='2 topics' style='font-size: 14px;'>audio</a>
							<a href='#' class='tag-link-17' title='1 topic' style='font-size: 14px;'>bear</a>
							<a href='#' class='tag-link-21' title='1 topic' style='font-size: 14px;'>design</a>
							<a href='#' class='tag-link-26' title='2 topics' style='font-size: 14px;'>gallery</a>
							<a href='#' class='tag-link-25' title='2 topics' style='font-size: 14px;'>image</a>
							<a href='#' class='tag-link-18' title='1 topic' style='font-size: 14px;'>nature</a>
							<a href='#' class='tag-link-16' title='1 topic' style='font-size: 14px;'>photography</a>
							<a href='#' class='tag-link-24' title='4 topics' style='font-size: 14px;'>premium theme</a>
						</div>
						</aside>
					</div>
				</div>
			</div>
			<!-- End Container -->
		</div>

		<footer id="footer">
			<!-- Start Container -->
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<p class="copyright">
							Copyright &copy; 2017.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
						</p>
					</div>
					<div class="col-md-4">
						<div class="tw-social-icon">
						</div>
					</div>
				</div>
			</div>
			<!-- End Container -->
		</footer>

		<a id="scrollUp" title="Scroll to top"><i class="fa fa-chevron-up"></i></a>
	</div>

	
<!--     <script type='text/javascript' src='/Text181130/web/mall/js/jquery-3.3.1.js'></script> -->
    <script type='text/javascript' src='/Text181130/web/mall/js/jquery.js'></script>
    <script type='text/javascript' src='/Text181130/web/mall/js/jquery-migrate.min.js'></script>
    <script type='text/javascript' src='/Text181130/web/mall/revslider/rs-plugin/js/jquery.themepunch.tools.min.js'></script>
    <script type='text/javascript' src='/Text181130/web/mall/revslider/rs-plugin/js/jquery.themepunch.revolution.min.js'></script>
	<script type='text/javascript'>
	/* <![CDATA[ */
	var waves_script_data = {"menu_padding":"32","menu_wid_margin":"28","blog_art_min_width":"230","pageloader":"0","header_height":"80"};
	/* ]]> */
	</script>
    <script type='text/javascript' src='/Text181130/web/mall/js/Chart.min.js'></script>
    <script type='text/javascript' src='js/pace.min.js'></script>
    <script type='text/javascript' src='js/themewaves.js'></script>
    <script type='text/javascript' src='js/contact-form.js'></script>
    <script type='text/javascript' src='js/waves-script.js'></script>
    <script type='text/javascript' src='js/smoothscroll.js'></script>
    <script type='text/javascript' src='http://ditu.google.cn/maps/api/js'></script>
    <script type='text/javascript' src='js/jquery.jplayer.min.js'></script>
    <script type='text/javascript' src='js/jquery.comingsoon.js'></script>
    <script type='text/javascript' src='js/jquery.twentytwenty.js'></script>
    <script type='text/javascript' src='js/jquery.isotope.min.js'></script>
    <script type='text/javascript' src='js/jquery.event.move.js'></script>
    <script type='text/javascript' src='js/jquery.easy-pie-chart.js'></script>
    <script type='text/javascript' src='js/scripts.js'></script>
    <script type='text/javascript' src='layerslider/js/layerslider.kreaturamedia.jquery.js'></script>
    <script type='text/javascript' src='layerslider/js/layerslider.transitions.js'></script>
    <script type='text/javascript' src='layerslider/js/greensock.js'></script>
<!--     <script type="text/javascript" src="/Text181130/web/common/js/common.js"></script> -->

	<script data-cfasync="false" type="text/javascript">var lsjQuery = jQuery;</script>
	<script data-cfasync="false" type="text/javascript"> lsjQuery(document).ready(function() {
		if(typeof lsjQuery.fn.layerSlider == "undefined") {
			lsShowNotice('layerslider_1_1',
			'jquery');
		}else {
			lsjQuery("#layerslider_1_1").layerSlider({
				responsiveUnder: 1200,
				layersContainer: 1200,
				startInViewport: false,
				skin: 'darkskin',
				globalBGColor: 'transparent',
				navStartStop: false,
				hoverBottomNav: true,
				showCircleTimer: false,
				thumbnailNavigation: 'disabled',
				autoPlayVideos: false,
				cbInit: function(element) {},
				cbStart: function(data) {},
				cbStop: function(data) {},
				cbPause: function(data) {},
				cbAnimStart: function(data) {},
				cbAnimStop: function(data) {},
				cbPrev: function(data) {},
				cbNext: function(data) {},
				skinsPath: 'LayerSlider/skins/'
			})
		}
	}); </script>

	<script data-cfasync="false" type="text/javascript">var lsjQuery = jQuery;</script>
	<script data-cfasync="false" type="text/javascript"> lsjQuery(document).ready(function() {
		if(typeof lsjQuery.fn.layerSlider == "undefined") {
			lsShowNotice('layerslider_6_2',
			'jquery');
		}else {
			lsjQuery("#layerslider_6_2").layerSlider({
				startInViewport: false,
				pauseOnHover: false,
				forceLoopNum: false,
				autoPlayVideos: false,
				skinsPath: 'LayerSlider/skins/'
			})
		}
	}); 
	
	</script>
	<script type="text/javascript">
	init();
	function init(){
		$("ul[name='single']").html("");
		$(".isotope-container").html(''); 
		$.ajax({
			url:"/Text181130/commodityController/selectall.do",
			dataType:"json",
			data:{"parentcode":"al"},
			type:"post",
			success:function(data){
		        var html = '<li><a href="#filter" data-option-value="*" class="show-all selected">全部分类</a></li>';
		        $("ul[name='single']").append(html);
				$.each(data.commodity_class,function(i,dom){
					html='&nbsp;&nbsp;&nbsp;&nbsp;<li class="hidden"><a href="#filter" data-option-value=".'+dom.code+'" title="Art">'+dom.name+'</a></li>';
					$("ul[name='single']").append(html);
					$.ajax({
						url:"/Text181130/commodityController/selectall.do",
						dataType:"json",
						data:{"parentcode":dom.code},
						type:"post",
						success:function(data){
		                    var html1 = '';
							$.each(data.commodity_class,function(i,dom){
								html1+='<article class="portfolio not-inited '+dom.parentcode+'"><div class="portfolio-thumb"><img alt="" src="upload/portfolio10.jpg">&nbsp;&nbsp;&nbsp;&nbsp;<div class="image-overlay"></div><div class="portfolio-hover"><div class="meta-link"><a class="to-link" href="#"><i class="fa fa-chain"></i></a><a class="to-image" href="upload/portfolio10.jpg" data-gal="prettyPhoto[52]"><i class="fa fa-expand"></i></a></div><h2 class="portfolio-title"><a href="#">Baby with shoes</a></h2><span class="portfolio-meta"><a href="#" rel="tag">Art</a>, <a href="#" rel="tag">Visualisation</a></span><span data-pid="52" class="likeit"><i class="fa fa-heart"></i><span>10</span></span></div></div></article>&nbsp;&nbsp;&nbsp;&nbsp;'
							});
							$(".isotope-container").append(html1);//append
						}
					});
				});
// 				$("ul[name='single']").html(html);
			}
		});
		};
		function Cancellation(){
			location.href="/Text181130/User/Cancellation.do";
		}
	</script>
    </body>
</html>