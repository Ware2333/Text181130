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
			<legend>收货地址维护</legend>
			<form class="layui-form" onsubmit="return false">
				<div class="layui-form-item">
						<label class="layui-form-label">账号</label>
					<div class="layui-input-inline">
						<select name="usercode">
						</select>
						<br>
					</div>
					<div class="layui-form-item" style="position: absolute;width: 400px;left: 320px;">
						<label class="layui-form-label">收件人</label>
						<div class="layui-input-inline">
							<input type="text" id="username" name="username" lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">手机号</label>
						<div class="layui-input-inline">
							<input type="text" name="usertel" lay-verify="required|phone" placeholder="请输入手机号" autocomplete="off" class="layui-input">
						</div>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">省</label>
					<div class="layui-input-inline">
						<select name="addr1" lay-filter="province">

						</select>
					</div>
					</div>
				<div class="layui-form-item">
					<label class="layui-form-label">市</label>
					<div class="layui-input-inline">
						<select name="addr2" lay-filter="city">

						</select>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">区/县</label>
					<div class="layui-input-inline">
						<select name="addr3" lay-filter="county">

						</select>
					</div>
					</div>
					<div class="layui-form-item">
					<label class="layui-form-label">街道</label>
					<div class="layui-input-inline">
						<input type="text" name="addr4" lay-verify="required" placeholder="请输入收货地址" autocomplete="off" class="layui-input">
					</div>
					</div>
					<div class="layui-form-item">
					<div class="layui-input-block">
						<input type="hidden" name="action" value="insert">
						<input type="submit" class="layui-btn" lay-submit lay-filter="formDemo" id="test12" value="确定" style="">
					</div>
				</div>

			</form>
		</fieldset>
		<script type="text/javascript">
		form.on("submit(formDemo)",function(data){
			if(/[\u4e00-\u9fa5]/.test($("#username").val())){
			$.ajax({
				url:con.net+"/addinfo/insert.do",
				type:"post",
				dataType:"text",
				data:data.field,
				success:function(data){
					if(data=="success"){
						var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
						parent.layer.close(index);
					}else{
						layer.alert("添加失败")
					}
				}
			});
			}else{
				layer.alert("请输入正确格式");
			}
		});
			init();
			function init() {
				var html = '';
				$.ajax({
					type: 'post',
					dataType: "json",
					data: {},
					url: con.net + "/User/user.do",
					success: function(data) {
						console.log(data)
						$.each(data.page, function(i, dom) {
							if(dom.usercode=="admin"&&dom.username=="admin"){
								
							}else{
							html += '<option value="' + dom.usercode + '">' + dom.username + '</option>'
							}
						});
						$("select[name='usercode']").html(html);
						form.render("select");
					}
				});
			}
			getaddress("addr1", "zg");

			function getaddress(url, data) {
				var html = '<option value="">请选择</option>';
				$.ajax({
					type: 'post',
					dataType: "json",
					data: {
						"parentcode": data,
					},
					url: con.net + "/addresscontroller/page.do",
					success: function(data) {
						$.each(data.page, function(i, dom) {
							html += '<option value="' + dom.code + '">' + dom.name + '</option>'
						});
						$("select[name='" + url + "']").html(html);
						form.render("select");
					}
				});
			}
			form.on("select(province)",function(data){
				$("select[name='addr2']").empty();
				$("select[name='addr3']").empty();
				$("select[name='addr4']").empty();
				getaddress("addr2",data.value);
				form.render("select");
			});
			form.on("select(city)",function(data){
				$("select[name='addr3']").empty();
				$("select[name='addr4']").empty();
				getaddress("addr3",data.value);
				form.render("select");
			});
			form.on("select(county)",function(data){
				$("select[name='addr4']").empty();
				getaddress("addr4",data.value);
				form.render("select");
			});
		</script>
	</body>
</html>
