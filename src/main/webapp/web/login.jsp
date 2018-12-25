<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/web/header.jsp"%>
<link rel="stylesheet" type="text/css" href="<%=path%>/css/index.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/css/prism.css">
<script type="text/javascript" src="<%=path%>/js/quietflow.min.js"></script>
<script type="text/javascript" src="<%=path%>/js/index.js"></script>
<script type="text/javascript" src="<%=path%>/js/prism.js"></script>
</head>
<body>
	<fieldset class="layui-elem-field"
		style="margin: 160px auto; padding-top: 10px; padding-bottom: 10px; width: 390px; opacity: 90%;">
		<legend>登录</legend>
		<div class="from-user">
			<form class="layui-form" onsubmit="return false">
				<input type="hidden" name="action" value="login">
				<div class="layui-form-item">
					<label class="layui-form-label">账号</label>
					<div class="layui-input-inline">
						<input type="text" name="usercode" placeholder="请输入账号"
							autocomplete="on" class="layui-input" lay-verify="required"
							style="background-color: transparent;">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">密码</label>
					<div class="layui-input-inline">
						<input type="password" name="password" maxlength="12"
							lay-verify="pass" placeholder="请输入密码" autocomplete="off"
							class="layui-input" lay-verify="required"
							style="background-color: transparent;">
							
					</div>
					<!--     <div class="layui-form-mid layui-word-aux">请填写6到12位密码</div> -->
				<a href="javascript:req();" style="top: 260px;position: absolute;">忘记密码?</a>
				</div>
				<div class="layui-form-item">
					<div class="layui-input-block">
						<input type="submit" class="layui-btn" lay-submit
							lay-filter="formDemo" value="登录"> 
							<input type="reset" onclick="reg()"class="layui-btn layui-btn-primary" value="注册">
					</div>
				</div>
			</form>
		</div>
	</fieldset>
</body>
<script type="text/javascript">
function req(){
	window.location.href = con.net+"/web/resetPassword.jsp";
}
function reg(){
	window.location.href = con.net+"/web/register.jsp";
}
	form.on('submit(formDemo)', function(data) {
		$.ajax({
			url : con.net + "/User/login.do",
			data : data.field,
			dataType : "text",
			type : "post",
			success : function(data) {
				console.log(data)
				if (data == "success") {
					window.location.href=con.net+"/web/page/Index/index.jsp"
				}else if(data == "err"){
					layer.alert('无效的用户名和密码')
				}else if(data =="login"){
					window.location.href=con.net+"/web/shop/index.jsp"
				}
			}
		})
	});
</script>
</html>