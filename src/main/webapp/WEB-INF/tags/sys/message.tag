<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<%@ attribute name="content" type="java.lang.String" required="true" description="消息内容"%>
<script type="text/javascript">
$(document).ready(function() {
	layer.closeAll();
	if("${content}") {
		if(!top.mess) {
			top.mess = 1;
			var iconIndex;
			if("${fn:indexOf(content,'失败') eq -1?'success':'error'}" == 'success') {
				iconIndex = 1;
			} else {
				iconIndex = 2;
			}
			layer.msg("${content}", {icon: iconIndex}); 
		}
	}
});
</script>