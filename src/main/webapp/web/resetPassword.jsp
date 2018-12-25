<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<body style="background-color: #009f95;">
	<fieldset class="layui-elem-field"
		style="margin: 160px auto; padding-top: 10px; padding-bottom: 10px; width: 390px; opacity: 90%;">
		<legend>验证账户</legend>
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
						<div class="layui-inline">
							<label class="layui-form-label">分组选择框</label>
							<div class="layui-input-inline">
								<select name="userque" >
									<option value="" >请选择问题</option>
									<optgroup label="城市记忆">
										<option value="你工作的第一个城市">你工作的第一个城市</option>
										<option value="你的第一个工作">你的第一个工作</option>
									</optgroup>
									<optgroup label="学生时代">
										<option value="你的学号">你的学号</option>
										<option value="你最喜欢的老师">你最喜欢的老师</option>
									</optgroup>
									<optgroup label="青春时代">
										<option value="你的LOL账号">你的LOL账号</option>
										<option value="你的LOL密码">你的LOL密码</option>
									</optgroup>
								</select>
							</div>
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">姓名</label>
						<div class="layui-input-inline">
							<input type="text" name="userans" placeholder="请输入答案" id="username" autocomplete="off" class="layui-input"
							 lay-verify="required" style="background-color: transparent;">
						</div>
					</div>
				<div class="layui-form-item">
					<div class="layui-input-block">
					<input type="hidden" name="action" value="resetpassword">
						<input type="submit" class="layui-btn" lay-submit
							lay-filter="formDemo" value="验证">
							<input type="button" class="layui-btn layui-btn-primary"
							 value="返回" id="returnlogin">
					</div>
				</div>
			</form>
		</div>
	</fieldset>
</body>
<script type="text/javascript">
$("#returnlogin").click(function() {
	location.href = con.net+"/web/login.jsp";
});
function reg(){
	window.location.href = con.net+"/web/register.jsp";
}
	form.on('submit(formDemo)', function(data) {
		$.ajax({
			url : con.net + "/User/Verification.do",
			data : data.field,
			dataType : "text",
			type : "post",
			success : function(data) {
				console.log(data)
				if (data == "success") {
					window.location.href=con.net+"/web/reset.jsp"
				}else if(data == "err"){
					layer.alert('无效的信息')
				}
			}
		})
	});
	form.render("select")
</script>
</html>