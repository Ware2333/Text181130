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
			<legend>地区信息</legend>
			<form class="layui-form" onsubmit="return false">
				<div class="layui-form-item">
					<label class="layui-form-label">选择地区</label>
					<div class="layui-input-inline">
						<select name="parentcode">
							<option value="">请选择省</option>
						</select>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">输入名称</label>
					<div class="layui-input-inline">
						<input type="text" name="name" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">输入编号</label>
					<div class="layui-input-inline">
						<input type="text" name="code" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-input-block">
						<input type="hidden" name="action" value="insert">
						<input type="submit" class="layui-btn" lay-submit lay-filter="formDemo" id="test12" value="确定" style="width: 140px;position: absolute;left: 300px;top: 90px;">
					</div>
				</div>
			</form>
		</fieldset>
		<script type="text/javascript">
			init();
			function init() {
				var html = '<option value="zg">无上级</option>';
				$.ajax({
					type: 'post',
					dataType: "json",
					data: {},
					url: con.net + "/addresscontroller/page.do",
					success: function(data) {
						console.log(data)
						$.each(data.page, function(i, dom) {
							html += '<option value="' + dom.code + '">' + dom.name + '</option>'
						});
						$("select[name='parentcode']").html(html);
						form.render("select");
					}
				});
			}

			form.on("submit(formDemo)", function(data) {
				$.ajax({
					url: con.net + "/addresscontroller/insert.do",
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
