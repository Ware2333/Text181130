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
			<legend>商品资料</legend>
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
						<input type="text" name="parentcode" lay-verify="required"  placeholder="请输入父类编号" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">描述</label>
					<div class="layui-input-inline">
						<textarea name="desc" placeholder="请输入内容" class="layui-textarea" style="width: 470px;"></textarea>
					</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-input-block">
						<input type="submit" class="layui-btn" lay-submit lay-filter="formDemo" id="test12" value="确定" style="width: 140px;position: absolute;left: 300px;top: 40px;">
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
				url: con.net + "/commodityController/select.do",
				success: function(data) {
					form.val("note", {
						"code": data.code,
						"name": data.name,
						"parentcode":data.parentcode,
						"descr":data.descr,
					})
				}
			});
		}
		form.on('submit(formDemo)', function(data) {
			$.ajax({
				url: con.net + "/commodityController/update.do",
				data: data.field,
				dataType: "text",
				type: "post",
				success: function(data) {
					if (data == "success") {
						var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
						parent.layer.close(index);
					} else if(data == "err"){
						layer.alert('修改失败，请重试')
					}
				}
			})
		});
		</script>
</body>
</html>