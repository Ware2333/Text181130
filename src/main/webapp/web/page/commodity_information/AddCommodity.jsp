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
	<fieldset class="layui-elem-field"
		style="margin: 0 auto; padding-top: 10px; padding-bottom: 10px; width: 800px; opacity: 90%; height: 387px;">
		<legend>商品信息</legend>
		<form class="layui-form" onsubmit="return false" lay-filter="note">
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">选择分类</label>
					<div class="layui-input-inline">
						<select name="parentcode" lay-filter="parentcode">
							<option value="">请选择分类</option>
						</select>
					</div>
				</div>
				<div class="layui-inline">
					<label class="layui-form-label">选择分类</label>
					<div class="layui-input-inline">
						<select name="commodity_parentcode"
							lay-filter="commodity_parentcode">
							<option value="">请选择</option>
						</select>
					</div>
				</div>

			</div>
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">输入名称</label>
					<div class="layui-input-inline">
						<input type="text" name="commodity_name" lay-verify="required"
							placeholder="请输入" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-inline">
					<label class="layui-form-label">输入编号</label>
					<div class="layui-input-inline">
						<input type="text" name="commodity_code" lay-verify="required"
							placeholder="请输入" autocomplete="off" class="layui-input"
							>
					</div>
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">输入单价</label>
					<div class="layui-input-inline">
						<input type="text" name="commodity_price"
							lay-verify="required|number" placeholder="请输入" autocomplete="off"
							class="layui-input">
					</div>
				</div>
				<div class="layui-inline">
					<label class="layui-form-label">输入库存量</label>
					<div class="layui-input-inline">
						<input type="text" name="commodity_num"
							lay-verify="required|number" placeholder="请输入" autocomplete="off"
							class="layui-input">
					</div>
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">输入描述</label>
				<div class="layui-input-inline">
					<textarea name="commodity_note" placeholder="请输入内容"
						class="layui-textarea" style="width: 470px;"></textarea>
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">选择状态</label>
					<div class="layui-input-inline">
						<select name="commodity_descr">
							<option value="sj">上架</option>
							<option value="xj">下架</option>
						</select>
					</div>
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<input type="hidden" name="action" value="insert"> <input
						type="submit" class="layui-btn" lay-submit lay-filter="formDemo"
						id="test12" value="确定"
						style="width: 140px; position: absolute; left: 340px; bottom: 30px;">
				</div>
			</div>
		</form>
	</fieldset>
	<script type="text/javascript">
	getaddress("parentcode", "al");
	function getaddress(url, data) {
		var html = '<option value="">请选择</option>';
		$.ajax({
			type : 'post',
			dataType : "json",
			data : {
				"parentcode" : data,
			},
			url : con.net + "/controllerInformation/selectclass.do",
			success : function(data) {
				$.each(data.commodity, function(i, dom) {
					html += '<option value="' + dom.code + '">' + dom.name
							+ '</option>'
				});
				$("select[name='" + url + "']").html(html);
				form.render("select");
			}
		});
	}
	form.on("select(parentcode)", function(data) {
		$("select[name='commodity_parentcode']").empty();
		$("input[name='commodity_name']").val('');
		$("input[name='commodity_code']").val('');
		$("input[name='commodity_price']").val('');
		$("input[name='commodity_num']").val('');
		$("input[name='commodity_note']").val('');
		getaddress("commodity_parentcode", data.value);
		form.render("select");
	});

		form.on("submit(formDemo)", function(data) {
			$.ajax({
				url : con.net + "/controllerInformation/insert.do",
				data : data.field,
				dataType : "text",
				type : "post",
				success : function(data) {
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
