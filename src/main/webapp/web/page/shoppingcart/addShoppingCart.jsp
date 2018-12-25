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
	<fieldset class="layui-elem-field"
		style="margin: 0 auto; padding-top: 10px; padding-bottom: 10px; width: 800px; opacity: 90%; height: 387px;">
		<legend>商品信息</legend>
		<form class="layui-form" onsubmit="return false" lay-filter="note">
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">选择分类</label>
					<div class="layui-input-inline">
						<select name="commodity_code" lay-filter="parentcode">
							<option value="">请选择分类</option>
						</select>
					</div>
				</div>
				<div class="layui-inline">
					<label class="layui-form-label">输入数量</label>

					<div class="box-btn layui-clear">
						<button class="less layui-btn" id="num" onclick="i()">-</button>
						<input class="layui-input Quantity-input" type="" name="num"
							value="1" disabled="disabled">
						<button class="add layui-btn" id="num2" onclick="d()">+</button>
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
		function i() {
			var a = parseInt($(".Quantity-input").val());
			if (a == 1) {
				$(".Quantity-input").val(a - 1);
				$("#num").prop("class", "layui-btn layui-btn-disabled");
				$("#num").prop("onclick", "")
			} else {
				$(".Quantity-input").val(a - 1);
			}
		};

		function d() {
			$("#num").prop("class", "layui-btn");
			$("#num").attr("onclick", "i()")
			$(".Quantity-input").val(parseInt($(".Quantity-input").val()) + 1);
		};
		getaddress("commodity_code");

		function getaddress(url) {
			var html = '';
			$.ajax({
				type : 'post',
				dataType : "json",
				data : {},
				url : con.net + "/shoppingcart/commodity.do",
				success : function(data) {
					$.each(data.commodity, function(i, dom) {
						html += '<option value="' + dom.commodity_code + '">'
								+ dom.commodity_name + '</option>'
					});
					$("select[name='" + url + "']").html(html);
					form.render("select");
				}
			});
		}

		form.on("submit(formDemo)", function(data) {
			$.ajax({
				url : con.net + "/shoppingcart/insert.do?usercode=${user}",
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
