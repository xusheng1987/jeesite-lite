<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>${fns:getConfig('productName')} 登录</title>
	<meta name="decorator" content="default"/>
	<link rel="stylesheet" href="${ctxStatic}/common/login.css" media="all">
	<script type="text/javascript">
		$(document).ready(function() {
			form.on('submit', function(data){
				// 登录
				$.post("${ctx}/login", data.field, function (result) {
					if (result.message) {
						/*if(result.isValidateCodeLogin) {//显示验证码
							$("#validateCodeItem").show();
							$("#validateCode").attr("lay-verify","required");
						}*/
						layer.msg(result.message, {icon: 2});
					} else {
						location.href="${ctx}";
					}
				});
				return false;
			});
		});
		// 如果在框架或在对话框中，则弹出提示并跳转到首页
		if(self.frameElement && self.frameElement.tagName == "IFRAME"){
			alert('未登录或登录超时。请重新登录，谢谢！');
			top.location = "${ctx}";
		}
	</script>
</head>
<body class="layui-layout-body">
      <div class="layadmin-user-login">
        <div class="layadmin-user-login-main">
          <div class="layadmin-user-login-box layadmin-user-login-header">
            <h2>
              <strong>Jeelite快速开发平台</strong>
            </h2>
          </div>
          <div class="layadmin-user-login-box layadmin-user-login-body layui-form">
          <form id="loginForm" method="post">
            <div class="layui-form-item">
              <label class="layadmin-user-login-icon layui-icon layui-icon-username"></label>
              <input type="text" name="username" id="username" lay-verify="required" placeholder="用户名" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-item">
              <label class="layadmin-user-login-icon layui-icon layui-icon-password"></label>
              <input type="password" name="password" id="password" lay-verify="required" placeholder="密码" autocomplete="new-password" class="layui-input">
            </div>
            <div class="layui-form-item" id="validateCodeItem" style="display:none">
                <div class="layui-col-xs7">
                  <label class="layadmin-user-login-icon layui-icon layui-icon-vercode"></label>
                  <input type="text" name="validateCode" id="validateCode" placeholder="图形验证码" class="layui-input">
                </div>
                <div class="layui-col-xs4">
                  <div style="margin-left: 10px;">
                    <img src="${pageContext.request.contextPath}/servlet/validateCodeServlet" onclick="$(this).attr('src','${pageContext.request.contextPath}/servlet/validateCodeServlet?'+new Date().getTime());"
                       class="layadmin-user-login-codeimg"/>
                  </div>
                </div>
            </div>
            <div class="layui-form-item" style="margin-bottom: 20px;">
              <input type="checkbox" name="rememberMe" id="rememberMe" lay-skin="primary" title="记住密码（公共场所慎用）">
            </div>
            <div class="layui-form-item">
              <button class="layui-btn layui-btn-fluid" lay-submit>登 录</button>
            </div>
          </form>
          </div>
        </div>
        <div class="layadmin-user-login-footer">
          Copyright &copy; 2017-${fns:getConfig('copyrightYear')} <a href="https://github.com/xusheng1987/jeelite">${fns:getConfig('productName')}</a> - Powered By jeelite</a> ${fns:getConfig('version')}
        </div>
      </div>
</body>
</html>