<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<%@include file="/web/header.jsp"%>
		<title>Insert title here</title>
	</head>
	<body>
		<fieldset class="layui-elem-field" style="margin: 0 auto; padding-top: 10px; padding-bottom: 10px; width: 800px; opacity: 90%; height: 387px;">
			<legend>订单信息</legend>
			<form class="layui-form" onsubmit="return false" lay-filter="note">

				<div class="layui-form-item">
					<div class="layui-form-item">
						<label class="layui-form-label">当前用户</label>
						<div class="layui-input-inline">
							<h1>${user }</h1>
						</div>
					</div>
					<div class="layui-inline">
						<label class="layui-form-label">输入收货地址</label>
						<div class="layui-input-inline">
							<textarea name="receiving" placeholder="请输入收货地址" class="layui-textarea" style="width: 470px;"></textarea>
						</div>
					</div>

				</div>
				<div class="layui-form-item">
					<div class="layui-input-block">
						<input type="hidden" name="action" value="insert"> <input type="submit" class="layui-btn" lay-submit lay-filter="formDemo"
						 id="test12" value="确定" style="width: 140px; position: absolute; left: 340px; top: 150px;">
					</div>
				</div>
			</form>
		</fieldset>
		<script type="text/javascript">
			form.on("submit(formDemo)", function(data) {
				$.ajax({
					url: con.net + "/order_information/insert.do?usercode=${user}",
					data: data.field,
					dataType: "text",
					type: "post",
					success: function(data) {
						if (data == "success") {
							layer.alert('添加成功');
						} else if (data == "err") {
							layer.alert("添加失败");
						} else if (data == "ocl") {
							layer.alert("编号已存在");
						}
					}
				});
			});
		</script>
	</body>
</html>
