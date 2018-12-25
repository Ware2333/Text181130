<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="/web/header.jsp"%>
<title>Insert title here</title>
</head>
<body>
<fieldset class="layui-elem-field" style="margin: 0 auto; padding-top: 10px; padding-bottom: 10px; width: 600px; opacity: 90%; height: 387px;">
			<legend>个人资料</legend>
			<form class="layui-form" onsubmit="return false" lay-filter="note">
				<div class="layui-form-item">
					<label class="layui-form-label">编号</label>
					<div class="layui-input-inline">
						<input type="text" name="code" lay-verify="required" readonly="readonly" placeholder="请输入编号" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">名称</label>
					<div class="layui-input-inline">
						<input type="text" name="name" lay-verify="required" placeholder="请输入名称" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">父类编号</label>
					<div class="layui-input-inline">
						<input type="text" name="parentcode" lay-verify="required" readonly="readonly" placeholder="请输入父类编号" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-input-block">
						<input type="submit" class="layui-btn" lay-submit lay-filter="formDemo" id="test12" value="确定" style="width: 140px;position: absolute;left: 300px;top: 90px;">
					</div>
				</div>
			</form>
		</fieldset>
		<script type="text/javascript">
		init();
		function init() {
			var code = '<%=request.getParameter("code")%>';
			$.ajax({
				type: 'post',
				dataType: "json",
				data: {
					"code": code
				},
				url: con.net + "/addresscontroller/select.do",
				success: function(data) {
					form.val("note", {
						"code": data.code,
						"name": data.name,
						"parentcode":data.parentcode,
					})
				}
			});
		}
		form.on("submit(formDemo)", function(data) {
			$.ajax({
				url: con.net + "/addresscontroller/update.do",
				data: data.field,
				dataType: "text",
				type: "post",
				success: function(data) {
					if (data == "success") {
						layer.alert('添加成功');
					} else {
						layer.alert("添加失败");
					}
				}
			});
		});
		</script>
</body>
</html>