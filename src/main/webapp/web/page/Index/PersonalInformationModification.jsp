<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<%@include file="/web/header.jsp"%>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<fieldset class="layui-elem-field" style="margin: 0 auto; padding-top: 10px; padding-bottom: 10px; width: 600px; opacity: 90%; height: 387px;">
			<legend>个人资料</legend>
			<div class="from-user">
				<form class="layui-form" onsubmit="return false" lay-filter="note">
                    <div class="layui-form-item">
						<label class="layui-form-label" style="width: 50px;">账号</label>
						<div class="layui-input-inline">
							<input type="text" name="usercode" readonly="readonly" placeholder="请输入账号" id="usercode" autocomplete="off"
							 class="layui-input" lay-verify="required" style="background-color: transparent;">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label" style="width: 50px;">姓名</label>
						<div class="layui-input-inline">
							<input type="text" name="username" placeholder="请输入姓名" id="username" autocomplete="off" class="layui-input"
							 lay-verify="required" style="background-color: transparent;" maxlength="12">
						</div>
					</div>
					<div class="layui-form-item layui-form-text">
						<label class="layui-form-label" style="width: 50px;">标签</label>
						<div class="layui-input-block" style="margin-left: 80px;">
							<textarea name="desc" placeholder="请输入内容" class="layui-textarea" style="width: 500px;"></textarea>
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-input-block">
							<input type="submit" class="layui-btn" lay-submit lay-filter="formDemo" id="test12" value="确定" style="width: 140px;position: absolute;left: 300px;top: 90px;">
						</div>
					</div>
				</form>
			</div>
		</fieldset>
		<script type="text/javascript">
			form.on('submit(formDemo)', function(data) {
				$.ajax({
					url: con.net + "/User/update1.do",
					data: data.field,
					dataType: "text",
					type: "post",
					success: function(data) {
						if (data == "updatesuccess") {
							var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
							parent.layer.close(index);
						} else if (data == "numerr") {
							layer.alert('验证码错误')
						}else if(data == "cannot"){
							layer.alert('修改失败，请重试')
						}
					}
				})
			});

			init();

			function init() {
				var code = '<%=request.getParameter("code")%>';
				$.ajax({
					type: 'post',
					dataType: "json",
					data: {
						"usercode": code
					},
					url: con.net + "/User/update.do",
					success: function(data) {
						form.val("note", {
							"username": data.username,
							"usercode": data.usercode,
							"desc":data.usernote,
						})
					}
				});
			}

// 			layui.use('upload', function() {
// 				var upload = layui.upload;

// 				//普通图片上传
// 				var uploadInst = upload.render({
// 					elem: '#test1',
// 					url: con.net+'/UserImg',
// 					auto: false,
// 					bindAction: '#test12',
// 					acceptMime: 'image/*',
// 					choose: function(obj) {
// 						console.log(obj)
// 						//预读本地文件示例，不支持ie8
// 						obj.preview(function(index, file, result) {
// 							$('img[name="img"]').attr('src', result); //图片链接（base64）
// 							delete files[0];
// 						});
// 					},
// 					done: function(res) {
// 						//如果上传失败
// 						if (res.code > 0) {
// 							return layer.msg('上传失败');
// 						} else if (res.code == 0) {
// 							$("#userimg").val(res.data.src);
// 						}
// 					},
// 					error: function() {
// 						//演示失败状态，并实现重传
// 						var demoText = $('#demoText');
// 						demoText.html(
// 							'<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
// 						demoText.find('.demo-reload').on('click', function() {
// 							uploadInst.upload();
// 						});
// 					}
// 				});
// 			});
		</script>
	</body>
</html>
