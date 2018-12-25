<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="/web/shop/header.jsp"%>
<title>Insert title here</title>
<link href="<%=path%>/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="<%=path%>/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css" />

		<link href="<%=path%>/basic/css/demo.css" rel="stylesheet" type="text/css" />

		<link href="<%=path%>/css/seastyle.css" rel="stylesheet" type="text/css" />

		<script type="text/javascript" src="<%=path%>/basic/js/jquery-1.7.min.js"></script>
		<script type="text/javascript" src="<%=path%>/js/script.js"></script>
</head>
<body>

		<!--顶部导航条 -->
		<%@include file="/web/shop/top.jsp"%>

			<!--悬浮搜索框-->
			<div class="nav white">
				<div class="logo"><img src="/Text181130/web/shop/images/logo.png" /></div>
				<div class="logoBig">
					<li><img src="/Text181130/web/shop/images/logobig.png" /></li>
				</div>

			<div class="search-bar pr">
					<a name="index_none_header_sysc" href="#"></a>
					<form class="layui-form" onsubmit="return false">
						<input id="searchInput" name="commodity_name" type="text" placeholder="搜索" autocomplete="off">
						<input id="ai-topsearch" name="select" class="submit am-btn"  value="搜索" index="1" type="submit" lay-submit lay-filter="select">
						<input type="hidden" value="1" name="pageIndex"> 
					    <input type="hidden" value="16" name="pageLimit"> 
					</form>
				</div>
				
			</div>


			<div class="clear"></div>
			<b class="line"></b>
           <div class="search">
			<div class="search-list">
			<div class="nav-table">
					   <div class="long-title"><span class="all-goods">全部分类</span></div>
					   <div class="nav-cont">
							<ul>
								<li class="index"><a href="#">首页</a></li>
                                <li class="qc"><a href="#">闪购</a></li>
                                <li class="qc"><a href="#">限时抢</a></li>
                                <li class="qc"><a href="#">团购</a></li>
                                <li class="qc last"><a href="#">大包装</a></li>
							</ul>
						    <div class="nav-extra">
						    	<i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利
						    	<i class="am-icon-angle-right" style="padding-left: 10px;"></i>
						    </div>
						</div>
			</div>
			
				
					<div class="am-g am-g-fixed">
						<div class="am-u-sm-12 am-u-md-12">
	                  	<div class="theme-popover">														
							<div class="searchAbout">
								<span class="font-pale">相关搜索：</span>
								<a title="坚果" href="#">坚果</a>
								<a title="瓜子" href="#">瓜子</a>
								<a title="鸡腿" href="#">豆干</a>

							</div>
							<div class="clear"></div>
                        </div>
							<div class="search-content">
								<div class="sort">
									<li class="first"><a title="综合">综合排序</a></li>
									<li><a title="销量">销量排序</a></li>
									<li><a title="价格">价格优先</a></li>
									<li class="big"><a title="评价" href="#">评价为主</a></li>
								</div>
								<div class="clear"></div>

								<ul class="am-avg-sm-2 am-avg-md-3 am-avg-lg-4 boxes" id="goods">
									
								</ul>
							</div>
							<div class="search-side">

								<div class="side-title">
									经典搭配
								</div>

								<li>
									<div class="i-pic check">
										<img src="<%=path%>/images/cp.jpg" />
										<p class="check-title">萨拉米 1+1小鸡腿</p>
										<p class="price fl">
											<b>¥</b>
											<strong>29.90</strong>
										</p>
										<p class="number fl">
											销量<span>1110</span>
										</p>
									</div>
								</li>
								<li>
									<div class="i-pic check">
										<img src="<%=path%>/images/cp2.jpg" />
										<p class="check-title">ZEK 原味海苔</p>
										<p class="price fl">
											<b>¥</b>
											<strong>8.90</strong>
										</p>
										<p class="number fl">
											销量<span>1110</span>
										</p>
									</div>
								</li>
								<li>
									<div class="i-pic check">
										<img src="<%=path%>/images/cp.jpg" />
										<p class="check-title">萨拉米 1+1小鸡腿</p>
										<p class="price fl">
											<b>¥</b>
											<strong>29.90</strong>
										</p>
										<p class="number fl">
											销量<span>1110</span>
										</p>
									</div>
								</li>

							</div>
							<div class="clear"></div>
							<!--分页 -->
								<div class="am-pagination am-pagination-right" id="demo7"></div>
<!-- 							<ul class="am-pagination am-pagination-right"> -->
<!-- 								<li class="am-disabled"><a href="#">&laquo;</a></li> -->
<!-- 								<li class="am-active"><a href="#">1</a></li> -->
<!-- 								<li><a href="#">2</a></li> -->
<!-- 								<li><a href="#">3</a></li> -->
<!-- 								<li><a href="#">4</a></li> -->
<!-- 								<li><a href="#">5</a></li> -->
<!-- 								<li><a href="#">&raquo;</a></li> -->
<!-- 							</ul> -->

						</div>
					</div>
					<div class="footer">
						<div class="footer-hd">
							<p>
								<a href="#">恒望科技</a>
								<b>|</b>
								<a href="#">商城首页</a>
								<b>|</b>
								<a href="#">支付宝</a>
								<b>|</b>
								<a href="#">物流</a>
							</p>
						</div>
						<div class="footer-bd">
							<p>
								<a href="#">关于恒望</a>
								<a href="#">合作伙伴</a>
								<a href="#">联系我们</a>
								<a href="#">网站地图</a>
								<em>© 2015-2025 Hengwang.com 版权所有. 更多模板 <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></em>
							</p>
						</div>
					</div>
				</div>

			</div>

		<!--引导 -->
		<div class="navCir">
			<li><a href="home2.html"><i class="am-icon-home "></i>首页</a></li>
			<li><a href="sort.html"><i class="am-icon-list"></i>分类</a></li>
			<li><a href="shopcart.html"><i class="am-icon-shopping-basket"></i>购物车</a></li>	
			<li><a href="<%=path%>/person/index.html"><i class="am-icon-user"></i>我的</a></li>					
		</div>

		<!--菜单 -->
		
		<script>
			window.jQuery || document.write('<script src="basic/js/jquery-1.9.min.js"><\/script>');
		</script>
		<script type="text/javascript" src="<%=path%>/basic/js/quick_links.js"></script>

<div class="theme-popover-mask"></div>
<script type="text/javascript">
$(function(){
	var commodity_name = '<%=request.getParameter("commodity_name")%>';
	var code = '<%=request.getParameter("code")%>';
	if(commodity_name!="null"){
	$("#searchInput").val(commodity_name);
	asd();
	}else if(code!="null"){
	ins(code);
	}
});

var code = '<%=request.getParameter("code")==null?"":request.getParameter("code")%>'
var name = '<%=request.getParameter("commodity_name")==null?"":"%"+request.getParameter("commodity_name")+"%"%>'
formSubmit("/controllerInformation/page.do","submit(select)","json",function(data){
	var index = $("input[name='pageIndex']").val();
	var limit = $("input[name='pageLimit']").val();
	PageInfo('demo7',data.count,index,limit,function(obj,first){
		$("input[name='pageIndex']").val(obj.curr);
		$("input[name='pageLimit']").val(obj.limit);
		if(!first){
			asd();
		}
	});
	var html="";
	$("#goods").empty();
	$.each(data.commodity,function(i,dom){
		if(dom.commodity_descr=="sj"){
			html+='<li><div class="i-pic limit"><a href="/Text181130/web/shop/introduction.jsp?code='+dom.commodity_code+'"><img src="/image/'+dom.commodity_img+'" /><p class="title fl">'+dom.commodity_name+'</p><p class="price fl"><b>¥</b><strong>'+dom.commodity_price+'</strong></p><p class="number fl">库存<span>'+dom.commodity_num+'</span></p></div></li>'	
		}else{
			
		};
	});
	$("#goods").append(html);
	});


function asd(){
	$("input[name='select']").click();
}





function ins(code){
	var index = $("input[name='pageIndex']").val();
	var limit = $("input[name='pageLimit']").val();
	$.ajax({
		url:"/Text181130/controllerInformation/page.do",
		data:{"commodity_parentcode":code,"pageIndex":1,"pageLimit":16,"commodity_descr":"sj"},
		dataType:"json",
		type:"post",
		success:function(data){
			var html = '';
			$.each(data.commodity,function(i,dom){
				html+='<li><div class="i-pic limit"><a href="/Text181130/web/shop/introduction.jsp?code='+dom.commodity_code+'"><img src="/image/'+dom.commodity_img+'" /><p class="title fl">'+dom.commodity_name+'</p><p class="price fl"><b>¥</b><strong>'+dom.commodity_price+'</strong></p><p class="number fl">库存<span>'+dom.commodity_num+'</span></p></div></li>'	
			});
			$("#goods").html(html);
			PageInfo("demo7",data.count,index,limit,function(obj,first){
				$("input[name='pageIndex']").val(obj.curr);
				$("input[name='pageLimit']").val(obj.limit);
				if(!first){
					asd();
				}
			})
		}
	});
}


</script>

	</body>
</html>