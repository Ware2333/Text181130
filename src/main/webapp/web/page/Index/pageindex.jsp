<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="/web/header.jsp"%>
<script type="text/javascript" src="<%=path%>/layui/layui.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="layui-collapse">
		<div class="layui-colla-item" style="height: 100px;">
			<h2 class="layui-colla-title">数据查询</h2>
			<div class="layui-colla-content layui-show">
				<form class="layui-form" onsubmit="return false">
					<input type="text" placeholder="请输入姓名(支持模糊查询)" name="username"class="layui-input" style="position: relative; width: 190px; left: 30px;"> 
					<input type="submit" name="select" lay-submit lay-filter="select" value="查询" class="layui-btn"style="position: relative; left: 290px; bottom: 38px;"> 
					<input type="hidden" value="1" name="pageIndex"> 
					<input type="hidden" value="10" name="pageLimit"> 
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
				<th id=a>序号</th>
				<th>账号</th>
				<th>姓名</th>
				<th>签名</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody id="tbody">
		</tbody>
	</table>
	<div id="demo7"></div>


	<script type="text/javascript">
	formSubmit("/User/page.do","submit(select)","json",function(data){
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
		$.each(data.user,function(i,dom){
			if(dom.username=="admin"&&dom.usercode=="admin"){
				
			}else{
			html += "<tr><td id="+i+">"+(i+1+(index-1)*limit)+"</td>";
			html += "<td id="+i+">"+dom.usercode+"</td>";
			html += "<td id="+i+">"+dom.username+"</td>";
			html += "<td id="+i+">"+dom.usernote+"</td>";
			var a = "<a href='javascript:update1(\""+dom.usercode+"\");'>修改</a>&nbsp;&nbsp;&nbsp;&nbsp;";
			a += "<a href='javascript:delete1(\""+dom.usercode+"\");'>删除</a>";
			html += "<td id="+i+">"+a+"</td></tr>";
			}
		});
		$("#tbody").append(html);
		});
	rel();
	function rel(){
		$("input[name='select']").click();
	}
			function update1(code){
				update("/web/page/Index/PersonalInformationModification.jsp?code="+code,function(){
					window.location.reload();
					});
			}
			function delete1(code){
				layer.confirm("是否删除",{icon:3,title:"是否删除"},function(index){
					ajax("/User/delete.do",{"usercode":code},"text",function(data){
						if(data=="success"){
							layer.alert("删除成功");
							window.location.reload();
						}
					});
// 				window.location.reload();
				});
			}
		</script>
	<script type="text/html" id="ifra">
<ul>
<li>
<td>{{d.i}}</td>
<td>{{d.usercode}}</td>
<td>{{d.username}}</td>
<td>{{d.usernote}}</td>
<td>{{}}</td>
</li>
</ul>
</script>
</body>
</html>
