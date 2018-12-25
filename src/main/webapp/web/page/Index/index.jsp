<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/web/header.jsp"%>
<script type="text/javascript" src="<%=path%>/layui/layui.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo">layui 后台布局</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <li class="layui-nav-item"><a href="">控制台</a></li>
      <li class="layui-nav-item"><a href="">商品管理</a></li>
      <li class="layui-nav-item"><a href="">用户</a></li>
      <li class="layui-nav-item">
        <a href="javascript:;">其它系统</a>
        <dl class="layui-nav-child">
          <dd><a href="">邮件管理</a></dd>
          <dd><a href="">消息管理</a></dd>
          <dd><a href="">授权管理</a></dd>
        </dl>
      </li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item">
        <a href="javascript:;">
<!--           <img src="/image/890469a9-5cea-4ec7-99e7-8511689d8b64.jpg" class="layui-nav-img"> -->
          ${user}
        </a>
        <dl class="layui-nav-child">
          <dd><a href="javascript:update1('${user}');">基本资料</a></dd>
          <dd><a href="javascript:updatePass('${user}')">修改密码</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item"><a href="javascript:Cancellation()">注销</a></li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item">
          <a class="" href="javascript:;">所有商品</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">列表一</a></dd>
            <dd><a href="javascript:;">列表二</a></dd>
            <dd><a href="javascript:;">列表三</a></dd>
            <dd><a href="">超链接</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">解决方案</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">列表一</a></dd>
            <dd><a href="javascript:;">列表二</a></dd>
            <dd><a href="">超链接</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item"><a href="javascript:;"  class="not-found" data-url="/web/page/commodity_classification/commodity_classification.jsp">商品信息分类维护</a></li>
          <li class="layui-nav-item"><a href="javascript:;"  class="not-found" data-url="/web/page/commodity_information/CommodityInformationIndex.jsp">商品信息维护</a></li>
          <li class="layui-nav-item"><a href="javascript:;"  class="not-found" data-url="/web/page/shoppingcart/ShoppingCart.jsp">购物车维护</a></li>
          <li class="layui-nav-item"><a href="javascript:;"  class="not-found" data-url="/web/page/order_information/Order_Information.jsp">订单信息维护</a></li>
        <li class="layui-nav-item"><a href="javascript:;"  class="not-found" data-url="/web/page/address/address.jsp">地区信息维护</a></li>
        <li class="layui-nav-item"><a href="javascript:;"  class="not-found" data-url="/web/page/AddressInformation/AddressInformation.jsp">地址信息维护</a></li>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
    <iframe name='rightiframe' width="100%" height="100%" style="width: 100%;height: 620px;" frameborder=0 src="/Text181130/web/page/Index/pageindex.jsp"></iframe></div>
  </div>
  
<div class="layui-footer" style='left: 0px;'>
			<!-- 底部固定区域position:fixed固定的 -->
			<label id="div1" style='right: 20px; position: absolute;'></label>
		</div>
</div>
<script type="text/javascript">
function Cancellation(){
	location.href=con.net+"/User/Cancellation.do";
}

$(".not-found").click(function(){
	window.open(con.net+$(this).data('url'),"rightiframe");
});


layui.use('element', function(){
  var element = layui.element;
});
var myvar = setInterval(function() {
	var d = new Date();
	var t = d.toLocaleTimeString();
	$("#div1").html("当前时间:" + t);
}, 1000);

function update1(code){
	update("/web/page/Index/PersonalInformationModification.jsp?code="+code,function(){
		window.location.reload();
		});
}
function updatePass(code){
	update("/web/page/Index/updatePass.jsp?",function(){
		window.location.reload();
		});
}
</script>
</body>
</html>