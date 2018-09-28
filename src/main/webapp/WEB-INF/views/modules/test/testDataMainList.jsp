<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
  <title>主子表管理</title>
</head>
<body>
  <div class="layui-fluid">
    <div class="layui-card">
      <div class="layui-card-header">主子表列表</div>
      <div class="layui-card-body">
        <div id="searchForm" class="layui-form">
          <div class="layui-form-item">
            <div class="layui-inline">
              <label class="layui-form-label">归属用户：</label>
              <sys:treeselect id="userSearch" name="user.id" value="" labelName="user.name" labelValue=""
                  title="用户" url="/sys/office/treeData?type=3" allowClear="true" notAllowSelectParent="true"/>
            </div>
            <div class="layui-inline">
              <label class="layui-form-label">名称：</label>
              <div class="layui-input-inline">
                <input name="name" type="text" maxlength="100" class="layui-input input-medium"/>
              </div>
            </div>
            <div class="layui-inline">
              <label class="layui-form-label">性别：</label>
              <div class="layui-input-inline" style="width:auto">
              <c:forEach items="${fns:getDictList('sex')}" var="dict">
                <input type="radio" name="sex" value="${dict.value}" title="${dict.label}">
              </c:forEach>
              </div>
            </div>
            <div class="layui-inline">
              <input id="btnSearch" class="layui-btn layui-btn-normal" type="button" value="查询"/>
              <shiro:hasPermission name="test:testDataMain:edit">
              <input id="btnAdd" class="layui-btn" type="button" value="添加" onclick="openDialog('主子表添加', '${ctx}/test/testDataMain/form')"/>
              </shiro:hasPermission>
            </div>
          </div>
        </div>
        <table class="layui-table"></table>
      </div>
    </div>
  </div>
  <script type="text/html" id="bar">
    <a href="javascript:void(0)" class="layui-btn layui-btn-sm" onclick="openDialog('主子表修改', '${ctx}/test/testDataMain/form?id={{d.id}}')"><i class="layui-icon layui-icon-edit"></i>修改</a>
    <a href="javascript:void(0)" class="layui-btn layui-btn-danger layui-btn-sm" onclick="confirmx('确认要删除该主子表吗？', '${ctx}/test/testDataMain/delete?id={{d.id}}')"><i class="layui-icon layui-icon-delete"></i>删除</a>
  </script>
  <script type="text/javascript">
    $(document).ready(function() {
      //执行渲染
      table.render({
        url: '${ctx}/test/testDataMain/data' //数据接口
        ,cols: [[ //表头
           {title: '归属用户', templet: function(d) {
             var url = '${ctx}/test/testDataMain/form?id='+d.id;
             return '<a href="javascript:void(0)" class="layui-table-link" onclick="openDialog(\'主子表修改\', \''+url+'\')">'+d.user.name+'</a>'
           }}
          ,{field: 'name', title: '名称'}
          ,{field: 'updateDate', title: '更新时间'}
          ,{field: 'remarks', title: '备注信息'}
          <shiro:hasPermission name="test:testDataMain:edit">
          ,{fixed:'right', align:'center', width:180, title: '操作', toolbar:'#bar'}
          </shiro:hasPermission>
        ]]
      });
    });
  </script>
</body>
</html>