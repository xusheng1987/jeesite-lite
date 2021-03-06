<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<%@ attribute name="name" type="java.lang.String" required="true" description="隐藏域名称"%>
<%@ attribute name="hideBtn" type="java.lang.Boolean" required="false" description="是否隐藏按钮"%>
<div class="layui-input-inline">
	<div id="${name}Img" style="display:none">
		<a href="javascript:void(0);" target="_blank" id="${name}Href"><img class="layui-upload-img" style="height:100px" id="${name}Preview"></a>
		<p id="${name}errorText" style="margin-top:10px;margin-bottom:10px"></p>
	</div>
	<c:if test="${!hideBtn}">
	<button type="button" class="layui-btn layui-btn-danger" id="${name}Btn">
		<i class="layui-icon layui-icon-upload"></i>上传图片
	</button>
	</c:if>
	<form:hidden path="${name}" htmlEscape="false"/>
</div>
<script type="text/javascript">
	$(document).ready(function() {
		if($("#${name}").val()) {//显示头像
			$("#${name}Img").show();
			$('#${name}Preview').attr('src', "${ctp}"+$("#${name}").val());
			$('#${name}Href').attr('href', "${ctp}"+$("#${name}").val());
		}
		var upload = layui.upload;
		//执行实例
		  var uploadInst = upload.render({
		    elem: '#${name}Btn' //绑定元素
		    ,url: 'upload/' //上传接口
		    ,acceptMime: 'image/*'
		    ,size: 10240 //限制文件大小10M，单位 KB
		    ,before: function(obj){//文件提交上传前的回调
		      $("#${name}Img").show();
		      layer.load(); //上传loading
		      //图片预览，不支持ie8/9
		      obj.preview(function(index, file, result){
		        $('#${name}Preview').attr('src', result); //图片链接（base64）
		      });
		    }
		    ,done: function(res){
		      //上传完毕回调
		      if (res.src == '') {
			      layer.msg('上传失败');
		      } else {
			      $("#${name}").val(res.src);
                  $('#${name}Href').attr('href', "${ctp}"+$("#${name}").val());
              }
		      layer.closeAll('loading'); //关闭loading
		    }
		    ,error: function(){
		      //请求异常回调
		      layer.msg('上传失败');
		      layer.closeAll('loading'); //关闭loading
		      //失败状态，并实现重传
		      var errorText = $('#${name}errorText');
		      errorText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-mini reload">重试</a>');
		      errorText.find('.reload').on('click', function(){
		        uploadInst.upload();
		      });
		    }
		  });
	});
</script>