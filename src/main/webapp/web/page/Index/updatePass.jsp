<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
	<head>
		<%@include file="/web/header.jsp"%>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<fieldset class="layui-elem-field" style="margin: 0 auto; padding-top: 10px; padding-bottom: 10px; width: 300px; opacity: 90%; height: 387px;">
			<legend>修改密码</legend>
			<div class="from-user">
				<form class="layui-form" onsubmit="return false" lay-filter="note">
					<div class="layui-form-item">
						<label class="layui-form-label" style="width: 50px;">账号</label>
						<div class="layui-input-inline">
							<input type="text" name="usercode" readonly="readonly" placeholder="请输入账号" id="usercode" autocomplete="off"
							 class="layui-input" lay-verify="required" style="background-color: transparent;">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label" style="width: 50px;">密码</label>
						<div class="layui-input-inline">
							<input type="password" name="password" required lay-verify="required" placeholder="请输入密码(不低于6位数)" autocomplete="off"
							 class="layui-input" maxlength="12">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label" style="width: 50px;">密码</label>
						<div class="layui-input-inline">
							<input type="password" name="password2" required lay-verify="required" placeholder="请确认密码(不低于6位数)" autocomplete="off"
							 class="layui-input" maxlength="12">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label" style="width: 50px;">验证码</label>
						<div class="layui-input-inline">
							<img alt="img" src="/Text181130/VerificationCode" onclick="this.src='/Text181130/VerificationCode?'+Math.random();" style="position: absolute;left: 110px;top: 7px;"></img>
							<input type="text" name="userpum" required lay-verify="required" placeholder="请输入验证码" autocomplete="off" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-input-block">
							<input type="submit" class="layui-btn" lay-submit lay-filter="formDemo" id="test12" value="确定" style="width: 100%;position: absolute;right: 50px;top: 80px;">
						</div>
					</div>
				</form>
			</div>
		</fieldset>
		<script type="text/javascript">
			form.on('submit(formDemo)', function(data) {
				if($("input[name='password2']").val().length>=6){
				$.ajax({
					url: con.net + "/User/update1.do",
					data: data.field,
					dataType: "text",
					type: "post",
					success: function(data) {
						console.log(data)
						if (data == "updatesuccess") {
							var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
							parent.layer.close(index);
						} else if (data == "numerr") {
							layer.alert('验证码错误')
						}else if(data == "cannot"){
							layer.alert('修改失败，请重试')
						}
					}
				})
				}else{
					layer.alert('密码无效');
				}
			});
			$(function(){
				$("input[name='usercode']").val('${user}');
			})
		</script>
	</body>
</html>
