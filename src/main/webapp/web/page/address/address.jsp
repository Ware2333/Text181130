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
						<input type="text" placeholder="请输入编号(支持模糊查询)" name="username" class="layui-input" style="position: relative; width: 190px; left: 30px;">
						<input type="text" placeholder="请输入地区(支持模糊查询)" name="username" class="layui-input" style="position: relative;width: 160px;bottom: 38px;left: 240px;">
						<input type="submit" name="select" lay-submit lay-filter="select" value="查询" class="layui-btn" style="position: relative;left: 430px;bottom: 77px;">
						<input type="submit" name="insert" lay-submit lay-filter="insert" value="添加" class="layui-btn" style="position: relative;left: 440px;bottom: 77px;">
						<input type="hidden" value="1" name="pageIndex">
						<input type="hidden" value="10" name="pageLimit">
						<input type="hidden" value="page" name="action">
					</form>
				</div>
			</div>
		</div>
		<table class="layui-table" style="font-size: 20px;">
			<colgroup>
				<col width="150">
				<col width="200">
				<col width="200">
				<col width="200">
				<col>
			</colgroup>
			<thead>
				<tr>
					<th>序号</th>
					<th>编号</th>
					<th>名称</th>
					<th>父类编号</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody id="tbody">
			</tbody>
		</table>
		<div id="demo7"></div>
		<script type="text/javascript">
			$("input[name='insert']").click(function() {
				update("/web/page/address/AddInformation.jsp", function() {
					window.location.reload();
				});
			});
			formSubmit("/addresscontroller/page.do", "submit(select)", "json", function(data) {
				var index = $("input[name='pageIndex']").val();
				var limit = $("input[name='pageLimit']").val();
				setPageInfo('demo7', data.count, index, limit, function(obj, first) {
					$("input[name='pageIndex']").val(obj.curr);
					$("input[name='pageLimit']").val(obj.limit);
					if (!first) {
						rel();
					}
				});
				var html = "";
				$("#tbody").empty();
				$.each(data.page, function(i, dom) {
					html += "<tr><td id='" + i + "'>" + (i + 1 + (index - 1) * limit) + "</td>";
					html += "<td id='" + i + "'>" + dom.code + "</td>";
					html += "<td id='" + i + "'>" + dom.name + "</td>";
					html += "<td id='" + i + "'>" + dom.parentcode + "</td>";
					var a = "<a href='javascript:update1(\"" + dom.code + "\")'>修改</a>&nbsp;&nbsp;&nbsp;&nbsp;";
					a += "<a href='javascript:delete1(\"" + dom.code + "\")'>删除</a>";
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
					ajax("/AddServlet", {
						"action": "delete",
						"code": code
					}, "text", function(data) {
						if (data == "success") {
							layer.alert("删除成功");
							window.location.reload();
						} else {
							layer.alert('编号被占用,无法删除');
						}
					});
				});
			}

			function update1(code) {
				update("/web/page/address/updateAddress.jsp?code=" + code, function() {
					window.location.reload();
				});
			}
		</script>
	</body>
</html>
