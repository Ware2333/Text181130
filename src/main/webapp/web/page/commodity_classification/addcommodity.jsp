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
			<legend>商品分类</legend>
			<form class="layui-form" onsubmit="return false">
				<div class="layui-form-item">
					<label class="layui-form-label">选择分类</label>
					<div class="layui-input-inline">
						<select name="parentcode">
							<option value="">请选择分类</option>
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
					<label class="layui-form-label">输入描述</label>
					<div class="layui-input-inline">
						<textarea name="desc" placeholder="请输入内容" class="layui-textarea" style="width: 470px;"></textarea>
					</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-input-block">
						<input type="hidden" name="action" value="insert">
						<input type="submit" class="layui-btn" lay-submit lay-filter="formDemo" id="test12" value="确定" style="width: 140px;position: absolute;left: 300px;top: 30px;">
					</div>
				</div>
			</form>
		</fieldset>
		<script type="text/javascript">
			init();
			function init() {
				var html = '<option value="al">无上级</option>';
				$.ajax({
					type: 'post',
					dataType: "json",
					data: {
						"parentcode": "al",
					},
					url: con.net + "/commodityController/selectall.do",
					success: function(data) {
						$.each(data.commodity_class, function(i, dom) {
							html += '<option value="' + dom.code + '">' + dom.name + '</option>'
						});
						$("select[name='parentcode']").html(html);
						form.render("select");
					}
				});
			}

			form.on("submit(formDemo)", function(data) {
				$.ajax({
					url: con.net + "/commodityController/insert.do",
					data: data.field,
					dataType: "text",
					type: "post",
					success: function(data) {
						if (data == "success") {
							window.location.reload();
						} else if(data=="err") {
							layer.alert("添加失败");
						}else if(data=="repeat"){
							layer.alert("编号重复");
						}
					}
				});
			});
		</script>
	</body>
</html>
