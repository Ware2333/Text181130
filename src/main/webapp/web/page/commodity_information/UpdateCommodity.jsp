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
						<select name="parentcode">
							<option value="">请选择分类</option>
						</select>
					</div>
				</div>
				<div class="layui-inline">
					<label class="layui-form-label">选择分类</label>
					<div class="layui-input-inline">
						<select name="commodity_parentcode">
							<option value="">请选择分类</option>
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
							placeholder="请输入" autocomplete="off" class="layui-input" readonly="readonly">
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
				<label class="layui-form-label">输入库存量</label>
				<div class="layui-input-inline">
					<input type="text" name="commodity_num"
						lay-verify="required|number" placeholder="请输入" autocomplete="off"
						class="layui-input">
				</div>
				</div>
				<div class="layui-inline">
					<label class="layui-form-label">输入单价</label>
					<div class="layui-input-inline">
						<input type="text" name="commodity_price"
							lay-verify="required|number" placeholder="请输入" autocomplete="off"
							class="layui-input">
					</div>
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">选择状态</label>
				<div class="layui-input-inline">
					<select name="commodity_descr">
						<option value="sj">上架</option>
						<option value="xj">下架</option>
					</select>
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
		init2();
		function init(url,code,parentcode) {
			var html = '<option value="al">无上级</option>';
			$.ajax({
				type : 'post',
				dataType : "json",
				data : {
					"parentcode" : code,
				},
				url : con.net + "/controllerInformation/selectclass.do",
				success : function(data) {
					console.log(data.name)
					$.each(data.commodity, function(i, dom) {
						html += '<option value="' + dom.code + '">' + dom.name
								+ '</option>'
					});
					$("select[name='"+url+"']").html(html);
					$("option[value='"+parentcode+"']").prop("selected","selected");  
					form.render("select");
				}
			});
		}

		function init2() {
			var code = '<%=request.getParameter("code")%>';
			$.ajax({
				type: 'post',
				dataType: "json",
				data: {
					"commodity_code": code
				},
				url: con.net + "/controllerInformation/selectall.do",
				success: function(data) {
					form.val("note", {
						"commodity_code": data.commodity_code,
						"commodity_name": data.commodity_name,
						"commodity_parentcode":data.commodity_parentcode,
						"commodity_price":data.commodity_price,
						"commodity_note":data.commodity_note,
						"commodity_num":data.commodity_num,
					});
					init("commodity_parentcode",data.parentcode,data.commodity_parentcode);
					init("parentcode","al",data.parentcode);
					$("option[value='"+data.commodity_descr+"']").prop("selected","selected");
				}
			});
		}

		form.on("submit(formDemo)", function(data) {
			$.ajax({
				url : con.net + "/controllerInformation/update.do",
				data : data.field,
				dataType : "text",
				type : "post",
				success : function(data) {
					if (data == "success") {
						layer.alert('修改成功');
					} else if (data == "err") {
						layer.alert("修改失败");
					}
				}
			});
		});
	</script>
</body>
</html>
