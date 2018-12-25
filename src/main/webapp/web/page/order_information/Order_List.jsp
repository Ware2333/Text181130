<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri='http://java.sun.com/jsp/jstl/core'%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<%@include file="/web/header.jsp"%>
		<script type="text/javascript" src="<%=path%>/layui/layui.js"></script>
		<title>订单商品信息维护</title>
	</head>
	<body>
		<form class="layui-form" method='post' onsubmit='return false;'>
			<div class="layui-form-item">
				<div class="layui-input-inline">
					<button class="layui-btn" id="add">添加</button>
				</div>
			</div>
			<table class="layui-table">
				<colgroup>
					<col width="15%">
					<col width="15%">
					<col width="10%">
					<col width="10%">
					<col width="15%">
				</colgroup>
				<thead>
					<tr>
						<th>订单</th>
						<th>商品</th>
						<th>数量</th>
						<th>价格</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody id='tbody'>
				</tbody>
			</table>
			<div id="page" class="layui-col-md6 layui-col-md-offset2"></div>
			<input type="hidden" name='currpage' value='1' /> <input type="hidden" name='limipage' value='10' />
		</form>
		<script type="text/javascript">
			var order_code = '<%=request.getParameter("order_code")%>'
			init();

			function init() {
				ajax("/order_commodity/page.do", {
						"order_code": order_code
					}, "json",
					function(data) {
						var html = "";
						$.each(data.page, function(i, dom) {
							html += "<tr><td>" + order_code + "</td>";
							html += "<td value='" + dom.commodity_code + "'>" + dom.commodity_name + "</td>";
							html += "<td>" + dom.num + "</td>";
							html += "<td>" + dom.price + "</td>";
							html += "<td><a id='delete' href ='javascript:dele(\"" + dom.id + "\")'>删除</a></td></tr>"
						})
						$("#tbody").html(html);
					});
			}

			function dele(id) {
				ajax("/order_commodity/delete.do", {
					"id": id
				}, "text", function(data) {
					if (data == "success") {
						window.location.reload();
					} else {
						layer.alert("删除失败");
					}
				});
			}
			$("#add").click(function() {
				var html = "";
				html += "<tr><td name='username'>" + order_code + "</td>"
				html += "<td><select name = 'commodity_name'></select></td>"
				html +=
					"<td><input name='num' type = 'text' lay-verify='required|number' class = 'layui-input' placeholder='数量'/></td>";
				html +=
					"<td><input name='price' type = 'text' lay-verify='required|number' class = 'layui-input' placeholder='价格'/></td>"
				html +=
					"<td><a onclick='keep(this)' style='cursor: pointer;'>保存</a>&nbsp;&nbsp;&nbsp;&nbsp;<a onclick='cancel(this)' style='cursor: pointer;'>取消</a></td></tr>"
				$("#tbody").append(html)
				ajax("/shoppingcart/commodity.do", {}, "json", function(data) {
					var html = "";
					$.each(data.commodity, function(i, dom) {
						html += "<option value ='" + dom.commodity_code + "'>" + dom.commodity_name + "</option>"
					})
					$("select[name = 'commodity_name']").html(html);
					form.render('select');
				});
			});

			function keep(a) {
				var tr = $(a).parent().parent();
				var commodity_code = tr.find("select[name='commodity_name']").val();
				var num = tr.find("input[name='num']").val();
				ajax("/order_commodity/insert.do", {
					"order_code": order_code,
					"commodity_code": commodity_code,
					"num": num
				}, "text", function(data) {
					if (data == "success") {
						init();
					} else {
						layer.alert("保存失败");
					}
				});
			}

			function cancel(a) {
				var tr = $(a).parent().parent().empty();
			}
		</script>
	</body>
</html>
