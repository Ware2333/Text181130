<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="/web/shop/header.jsp"%>
<title>Insert title here</title>
<link href="<%=path%>/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="<%=path%>/basic/css/demo.css" rel="stylesheet" type="text/css" />
		<link href="<%=path%>/css/cartstyle.css" rel="stylesheet" type="text/css" />
		<link href="<%=path%>/css/optstyle.css" rel="stylesheet" type="text/css" />

		<script type="text/javascript" src="<%=path%>/js/jquery.js"></script>
		<style>
/* "变灰"效果*/
.disableHref{
    cursor:default;
    color:#E5E0E0;
    text-decoration:none;
}
.shoip{
background-color: #E5E0E0;
}
</style>
</head>
<body>

		<%@include file="/web/shop/top.jsp"%>

			<div class="clear"></div>

			<!--购物车 -->
			<div class="concent">
				<div id="cartTable">
					<div class="cart-table-th">
						<div class="wp">
							<div class="th th-chk">
								<div id="J_SelectAll1" class="select-all J_SelectAll">

								</div>
							</div>
							<div class="th th-item">
								<div class="td-inner">商品信息</div>
							</div>
							<div class="th th-price">
								<div class="td-inner">单价</div>
							</div>
							<div class="th th-amount">
								<div class="td-inner">数量</div>
							</div>
							<div class="th th-sum">
								<div class="td-inner">金额</div>
							</div>
							<div class="th th-op">
								<div class="td-inner">操作</div>
							</div>
						</div>
					</div>
					<div class="clear"></div>

					<tr class="item-list">
						<div class="bundle  bundle-last ">
							<div class="clear"></div>
							<div class="bundle-main">
							</div>
						</div>
					</tr>
					<div class="clear"></div>

				</div>
				<div class="clear"></div>

				<div class="float-bar-wrapper">
					<div id="J_SelectAll2" class="select-all J_SelectAll">
						<div class="cart-checkbox">
							<input class="check-all check" id="J_SelectAllCbx2" name="select-all" value="true" type="checkbox" onclick="javascript:ins()">
							<label for="J_SelectAllCbx2"></label>
						</div>
						<span>全选</span>
					</div>
					<div class="operations">
						<a href="javascript:deletecart()" hidefocus="true" class="deleteAll">删除</a>
						<a href="#" hidefocus="true" class="J_BatchFav">移入收藏夹</a>
					</div>
					<div class="float-bar-right">
						<div class="amount-sum">
							<span class="txt">已选商品</span>
							<em id="J_SelectedItemsCount">0</em><span class="txt">件</span>
							<div class="arrow-box">
								<span class="selected-items-arrow"></span>
								<span class="arrow"></span>
							</div>
						</div>
						<div class="price-sum">
							<span class="txt">合计:</span>
							<strong class="price"><em id="J_Total">0.00</em></strong>
						</div>
						<div class="btn-area shoip" id = "payfor">
							<a href="javascript:pay()" id="J_Go" style="pointer-events:none" class="submit-btn" aria-label="请注意如果没有选择宝贝，将无法结算">
								<span>结&nbsp;算</span></a>
						</div>
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

			<!--操作页面-->

			<div class="theme-popover-mask"></div>

			<div class="theme-popover">
				<div class="theme-span"></div>
				<div class="theme-poptit h-title">
					<a href="javascript:;" title="关闭" class="close">×</a>
				</div>
				<div class="theme-popbod dform">
					<form class="theme-signin" name="loginform" action="" method="post">

						<div class="theme-signin-left">

							<li class="theme-options">
								<div class="cart-title">颜色：</div>
								<ul>
									<li class="sku-line selected">12#川南玛瑙<i></i></li>
									<li class="sku-line">10#蜜橘色+17#樱花粉<i></i></li>
								</ul>
							</li>
							<li class="theme-options">
								<div class="cart-title">包装：</div>
								<ul>
									<li class="sku-line selected">包装：裸装<i></i></li>
									<li class="sku-line">两支手袋装（送彩带）<i></i></li>
								</ul>
							</li>
							<div class="theme-options">
								<div class="cart-title number">数量</div>
								<dd>
									<input class="min am-btn am-btn-default" name="" type="button" value="-" />
									<input class="text_box" name="" type="text" value="1" style="width:30px;" />
									<input class="add am-btn am-btn-default" name="" type="button" value="+" />
									<span  class="tb-hidden">库存<span class="stock">1000</span>件</span>
								</dd>

							</div>
							<div class="clear"></div>
							<div class="btn-op">
								<div class="btn am-btn am-btn-warning">确认</div>
								<div class="btn close am-btn am-btn-warning">取消</div>
							</div>

						</div>
						<div class="theme-signin-right">
							<div class="img-info">
								<img src="<%=path%>/images/kouhong.jpg_80x80.jpg" />
							</div>
							<div class="text-info">
								<span class="J_Price price-now">¥39.00</span>
								<span id="Stock" class="tb-hidden">库存<span class="stock">1000</span>件</span>
							</div>
						</div>

					</form>
				</div>
			</div>
		<!--引导 -->
		<div class="navCir">
			<li><a href="home2.html"><i class="am-icon-home "></i>首页</a></li>
			<li><a href="sort.html"><i class="am-icon-list"></i>分类</a></li>
			<li class="active"><a href="shopcart.html"><i class="am-icon-shopping-basket"></i>购物车</a></li>	
			<li><a href="<%=path%>/person/index.html"><i class="am-icon-user"></i>我的</a></li>					
		</div>
	</body>
	<script type="text/javascript">
	init();
	function init(){
		$.ajax({
			url:"/Text181130/shoppingcart/page.do",
			data:{"usercode":"${usercode}"},
			dataType:"json",
			type:"post",
			success:function(data){
				var html = "";
				$.each(data.shoppingcart,function(i,dom){
					html += '<ul class="item-content clearfix"><li class="td td-chk"><div class="cart-checkbox "><input class="check" id="check'+dom.id+'" name="items[]" onclick="inse('+dom.id+')" value="'+dom.id+'" type="checkbox"><label for="J_CheckBox_170037950254"></label></div></li><li class="td td-item"><div class="item-pic"><a href="#" target="_blank" data-title="'+dom.name+'" class="J_MakePoint" data-point="tbcart.8.12"><img src="/image/'+dom.img_url+'" class="itempic J_ItemImg"></a></div><div class="item-info"><div class="item-basic-info"><a href="/Text181130/web/shop/introduction.jsp?code='+dom.commodity_code+'" target="_blank" title="'+dom.name+'" class="item-title J_MakePoint" data-point="tbcart.8.11">'+dom.name+'</a></div></div></li><li class="td td-info"><div class="item-props item-props-can"><span class="sku-line">颜色：自选</span><span class="sku-line">包装：裸装</span><span tabindex="0" class="btn-edit-sku theme-login">修改</span><i class="theme-login am-icon-sort-desc"></i></div></li><li class="td td-price"><div class="item-price price-promo-promo"><div class="price-content"><div class="price-line"></div><div class="price-line"><em class="J_Price price-now" tabindex="0" id="price'+dom.id+'">'+dom.price+'</em></div></div></div></li><li class="td td-amount"><div class="amount-wrapper "><div class="item-amount "><div class="sl"><input class="min am-btn" name="" type="button" value="-" onclick="icart('+dom.id+')"/><input onchange="javascript:dcart('+dom.id+","+dom.num+')" class="text_box'+dom.id+'" name="" type="text" value="'+dom.num+'" style="width:30px;" /><input class="add am-btn" name="" type="button" value="+" onclick="cart('+dom.id+')"/></div></div></div></li><li class="td td-sum"><div class="td-inner" ><em tabindex="0" class="J_ItemSum'+dom.id+'" >'+parseFloat(parseInt(dom.price)*parseInt(dom.num)).toFixed(2)+'</em></div></li><li class="td td-op"><div class="td-inner"><a title="移入收藏夹" class="btn-fav" href="#">移入收藏夹</a><a href="javascript:del('+dom.id+')" data-point-url="#" class="delete">删除</a></div></li></ul>';
				})
				$(".bundle-main").html(html);
				
			}
		});
	}
	
	function icart(id){
		var oldprice = parseInt($(".J_ItemSum"+id).html());
		if(parseInt($(".text_box"+id).val())-1==0){
			
		}else{
			if($("#check"+id).prop("checked")){
		          $(".text_box"+id).val(parseInt($(".text_box"+id).val())-1);
		          upd(id,$(".text_box"+id).val());
		          var newprice = parseInt($(".text_box"+id).val())*parseInt($("#price"+id).html());
		          $(".J_ItemSum"+id).html(newprice);
		          $("#J_Total").html(parseFloat(parseInt($("#J_Total").html())+(newprice-oldprice)).toFixed(2));
		}else{
			$(".text_box"+id).val(parseInt($(".text_box"+id).val())-1);
			upd(id,$(".text_box"+id).val());
			$(".J_ItemSum"+id).html(parseFloat(parseInt($(".text_box"+id).val())*parseInt($("#price"+id).html())).toFixed(2));
		}	
			}
	}
	
	function cart(id){
		var oldprice = parseInt($(".J_ItemSum"+id).html());
		if($("#check"+id).prop("checked")){
			$(".text_box"+id).val(parseInt($(".text_box"+id).val())+1);
			upd(id,$(".text_box"+id).val());
			var newprice = parseInt($(".text_box"+id).val())*parseInt($("#price"+id).html());
			$(".J_ItemSum"+id).html(parseFloat(newprice).toFixed(2));
			  $("#J_Total").html(parseFloat(parseInt($("#J_Total").html())+(newprice-oldprice)).toFixed(2));
		}else{
		$(".text_box"+id).val(parseInt($(".text_box"+id).val())+1);
		upd(id,$(".text_box"+id).val());
		$(".J_ItemSum"+id).html(parseFloat(parseInt($(".text_box"+id).val())*parseInt($("#price"+id).html())).toFixed(2));
		}
	}
	
	
	function dcart(id,num){
		if(!/^[1-9]\d*$/.test($(".text_box"+id).val())){
			$(".text_box"+id).val(num);
		}else if(parseInt($(".text_box"+id).val())>99){
			$(".text_box"+id).val(num);
		}else{
		var oldprice = parseInt($(".J_ItemSum"+id).html());
		if($("#check"+id).prop("checked")){
		var newprice = parseInt($(".text_box"+id).val())*parseInt($("#price"+id).html());
			$(".J_ItemSum"+id).html(parseFloat(newprice).toFixed(2));
		$("#J_Total").html(parseFloat(parseInt($("#J_Total").html())+(newprice-oldprice)).toFixed(2));
		upd(id,$(".text_box"+id).val());
		}else{
			$(".J_ItemSum"+id).html(parseInt($(".text_box"+id).val())*parseInt($("#price"+id).html()));
			upd(id,$(".text_box"+id).val());
		}	
		}
	}
	
	function ins(){
		var strIds=new Array();
		if($("#J_SelectAllCbx2").prop("checked")){
			$("#payfor").removeClass("shoip");
			$("#J_Go").css("pointer-events","auto");
			var all = $("input[type='checkbox']");
			all.each(function(){
				$(this).prop("checked",true);
			})
		    $("#J_SelectedItemsCount").html($("input[id^='check']:checked").length);
		    var price = 0;
		    $("em[class^='J_ItemSum']").each(function(i,d){
		    	price+=parseFloat($(d).text());
		    })
		    $("#J_Total").html(price.toFixed(2));
		}else{
			$("#payfor").addClass("shoip");
			$("#J_Go").css("pointer-events","none");
			$("input[id^='check']").prop("checked","");
			$("#J_Total").html("0.00")
			$("#J_SelectedItemsCount").html(0)
		}
	}
	
	function inse(id){
		if($("#check"+id).prop("checked")){
			$("#J_Total").html(parseInt(parseFloat($("#J_Total").html())+parseInt($(".J_ItemSum"+id).html())).toFixed(2));
		}else{
			$("#J_Total").html(parseInt(parseFloat($("#J_Total").html())-parseInt($(".J_ItemSum"+id).html())).toFixed(2))
		}
		if($("input[id^=check]:checked").length==0){
			$("#payfor").addClass("shoip");
			$("#J_Go").css("pointer-events","none");
		}else{
			$("#payfor").removeClass("shoip");
			$("#J_Go").css("pointer-events","auto");
		}
		if($("input[id^=check]").length==$("input[id^=check]:checked").length){
			$("#J_SelectAllCbx2").prop("checked",true);
		}else{
			$("#J_SelectAllCbx2").prop("checked",false);
		}
		$("#J_SelectedItemsCount").html($("input[id^='check']:checked").length);
	}
	
	function deletecart(){
		var strIds=new Array();
		if($("input[id^='check']:checked").length<=0){
			alert("请勾选商品")
		}else{
		$("input[id^='check']:checked").each(function (i,d){ 
		        strIds.push(d.value); 
		    })
		    for(var i = 0;i<strIds.length;i++){
		    	del(strIds[i]);
		    }
		}
	}
	
	function del(id){
		$.ajax({
    		url:"/Text181130/shoppingcart/delete.do",
    		dataType:"text",
    		data:{"id":id},
    		type:"post",
    		success:function(data){
    			window.location.reload();
    		}
    	})
	}
	
	function upd(id,num){
		$.ajax({
			url:"/Text181130/shoppingcart/update.do",
    		dataType:"text",
    		data:{"id":id,"num":num},
    		type:"post",
    		success:function(data){
    			
    		}
		});
	}
	
	function pay(){
		var strIds=new Array();
		$("input[id^=check]:checked").each(function (i,d){ 
	        strIds.push(d.value); 
	    });
		location.href = "/Text181130/web/shop/pay.jsp?id="+strIds+"&price="+$("#J_Total").html();
	}
	</script>
</html>