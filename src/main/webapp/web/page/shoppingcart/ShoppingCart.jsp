<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<%@include file="/web/header.jsp"%>
		<title>Insert title here</title>
		<script type="text/javascript" src="<%=path%>/layui/layui.js"></script>
	</head>
	<body>
		<div class="layui-collapse">
			<div class="layui-colla-item" style="height: 100px;">
				<h2 class="layui-colla-title">数据查询</h2>
				<div class="layui-colla-content layui-show">
					<form class="layui-form" onsubmit="return false">
						<input type="text" placeholder="请输入用户(支持模糊查询)" name="usercode" class="layui-input" style="position: relative; width: 190px; left: 30px;">
<!-- 						<input type="text" placeholder="请输入名称(支持模糊查询)" name="commodity_name" class="layui-input" style="position: relative;width: 160px;bottom: 38px;left: 240px;"> -->
						<input type="submit" name="select" lay-submit lay-filter="select" value="查询" class="layui-btn" style="position: relative;left: 430px;bottom: 38px;">
						<input type="submit" name="insert" lay-submit lay-filter="insert" value="添加" class="layui-btn" style="position: relative;left: 440px;bottom: 38px;">
						<input type="hidden" value="1" name="pageindex">
						<input type="hidden" value="10" name="pagelimit">
					</form>
				</div>
			</div>
		</div>
		<table class="layui-table" style="font-size: 20px;">
			<colgroup>
				<col width="100">
				<col width="100">
				<col width="100">
				<col width="100">
				<col>
			</colgroup>
			<thead>
				<tr>
					<th>序号</th>
					<th>用户</th>
					<th>商品名称</th>
					<th>数量</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody id="tbody">
			</tbody>
		</table>
		<div id="demo7"></div>
		<script type="text/javascript">
			$("input[name='insert']").click(function() {
				update("/web/page/shoppingcart/addShoppingCart.jsp", function() {
					window.location.reload();
				});
			});
			formSubmit("/shoppingcart/page.do", "submit(select)", "json", function(data) {
				var index = $("input[name='pageindex']").val();
				var limit = $("input[name='pagelimit']").val();
				setPageInfo('demo7', data.count, index, limit, function(obj, first) {
					$("input[name='pageindex']").val(obj.curr);
					$("input[name='pagelimit']").val(obj.limit);
					if (!first) {
						rel();
					}
				});
				var html = "";
				$("#tbody").empty();
				$.each(data.shoppingcart, function(i, dom) {
					html += "<tr><td id='" + i + "'>" + (i + 1 + (index - 1) * limit) + "</td>";
					html += "<td id='" + i + "'>" + dom.usercode + "</td>";
					html += "<td id='" + i + "' value = '"+dom.commodity_code+"'>" + dom.name + "</td>";
					html += "<td id='" + i + "'>" + dom.num + "</td>";
					var a = "<a href='javascript:update1(\"" + dom.commodity_code + "\")'>修改</a>&nbsp;&nbsp;&nbsp;&nbsp;";
					a += "<a href='javascript:delete1(\"" + dom.id + "\")'>删除</a>&nbsp;&nbsp;&nbsp;&nbsp;";
					html += "<td id=" + i + ">" + a + "</td></tr>"
				});
				$("#tbody").append(html);
			});
			rel();

			function rel() {
				$("input[name='select']").click();
			}

			function delete1(code) {
				layer.confirm("是否删除", {
					icon: 3,
					title: "是否删除"
				}, function(index) {
					ajax("/shoppingcart/delete.do", {
						"id": code
					}, "text", function(data) {
						if (data == "success") {
							layer.alert("删除成功");
							window.location.reload();
						} else if (data == "err") {
							layer.alert("删除失败");
						}
					});
					//				window.location.reload();
				});
			}

			function upload(code) {
				update("/web/page/commodity_img/commodity_img.jsp?code=" + code, function() {
					window.location.reload();
				});
			}

			function update1(code) {
				update("/web/page/commodity_information/UpdateCommodity.jsp?code=" + code, function() {
					window.location.reload();
				});
			}

			function upload_img(code) {
				update("/web/page/commodity_img/Com_img.jsp?commodity_code=" + code, function() {
					window.location.reload();
				});
			}
		</script>
	</body>
</html>
