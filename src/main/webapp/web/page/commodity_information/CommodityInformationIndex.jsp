<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="/web/header.jsp"%>
<title>Insert title here</title>
<script type="text/javascript"src="<%=path%>/layui/layui.js"></script>
</head>
<body>
<div class="layui-collapse">
		<div class="layui-colla-item" style="height: 100px;">
			<h2 class="layui-colla-title">数据查询</h2>
			<div class="layui-colla-content layui-show">
				<form class="layui-form" onsubmit="return false">
					<input type="text" placeholder="请输入编号(支持模糊查询)" name="commodity_code"class="layui-input" style="position: relative; width: 190px; left: 30px;"> 
					<input type="text" placeholder="请输入名称(支持模糊查询)" name="commodity_name"class="layui-input" style="position: relative;width: 160px;bottom: 38px;left: 240px;"> 
					<input type="submit" name="select" lay-submit lay-filter="select" value="查询" class="layui-btn"style="position: relative;left: 430px;bottom: 77px;"> 
					<input type="submit" name="insert" lay-submit lay-filter="insert" value="添加" class="layui-btn"style="position: relative;left: 440px;bottom: 77px;"> 
					<input type="hidden" value="1" name="pageIndex"> 
					<input type="hidden" value="10" name="pageLimit"> 
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
			<col width="100">
			<col width="150">
			<col width="150">
			<col width="150">
			<col>
		</colgroup>
		<thead>
			<tr>
				<th>序号</th>
				<th>商品编号</th>
				<th>商品名称</th>
				<th>单价</th>
				<th>描述</th>
				<th>库存量</th>
				<th>状态</th>
				<th>商品分类所属</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody id="tbody">
		</tbody>
	</table>
		<div id="demo7"></div>
	<script type="text/javascript">
	$("input[name='insert']").click(function(){
		update("/web/page/commodity_information/AddCommodity.jsp",function(){
			window.location.reload();
			});
	});
	layui.use(['element', 'layer'], function() {
		var element = layui.element;
		var layer = layui.layer;

		//监听折叠
		element.on('collapse(test)', function(data) {
			layer.msg('展开状态：' + data.show);
		});
	});
	formSubmit("/controllerInformation/page.do","submit(select)","json",function(data){
		var index = $("input[name='pageIndex']").val();
		var limit = $("input[name='pageLimit']").val();
		setPageInfo('demo7',data.count,index,limit,function(obj,first){
			$("input[name='pageIndex']").val(obj.curr);
			$("input[name='pageLimit']").val(obj.limit);
			if(!first){
				rel();
			}
		});
		var html="";
		$("#tbody").empty();
		$.each(data.commodity,function(i,dom){
			html += "<tr><td id='"+i+"'>"+(i+1+(index-1)*limit)+"</td>";
			html += "<td id='"+i+"'>"+dom.commodity_code+"</td>";
			html += "<td id='"+i+"'>"+dom.commodity_name+"</td>";
			html += "<td id='"+i+"'>"+dom.commodity_price+"</td>";
			html += "<td id='"+i+"'>"+dom.commodity_note+"</td>";
			html += "<td id='"+i+"'>"+dom.commodity_num+"</td>";
			html += "<td id='"+i+"'>"+dom.commodity_descr+"</td>";
			html += "<td id='"+i+"'>"+dom.commodity_parentcode+"</td>";
			var a = "<a href='javascript:update1(\""+dom.commodity_code+"\")'>修改</a>&nbsp;&nbsp;&nbsp;&nbsp;";
			a += "<a href='javascript:delete1(\""+dom.commodity_code+"\")'>删除</a>&nbsp;&nbsp;&nbsp;&nbsp;";
			a += "<a href='javascript:upload(\""+dom.commodity_code+"\")'>添加图片</a>&nbsp;&nbsp;&nbsp;&nbsp;";
			a += "<a href='javascript:upload_img(\""+dom.commodity_code+"\")'>维护图片</a>";
			html += "<td id="+i+">"+a+"</td></tr>"
		});
		$("#tbody").append(html);
		});
		rel();
		function rel(){
			$("input[name='select']").click();
		}
		function delete1(code){
			layer.confirm("是否删除",{icon:3,title:"是否删除"},function(index){
				ajax("/controllerInformation/delete.do",{"commodity_code":code},"text",function(data){
					if(data=="success"){
						layer.alert("删除成功");
						window.location.reload();
					}else if(data == "err"){
						layer.alert("删除失败");
					}
				});
//				window.location.reload();
			});
		}
		function upload(code){
			update("/web/page/commodity_img/commodity_img.jsp?code="+code,function(){
				window.location.reload();
				});
		}
		
		function update1(code){
			update("/web/page/commodity_information/UpdateCommodity.jsp?code="+code,function(){
				window.location.reload();
				});
		}
		function upload_img(code){
			update("/web/page/commodity_img/Com_img.jsp?commodity_code="+code,function(){
				window.location.reload();
				});
		}
	</script>
</body>
</html>