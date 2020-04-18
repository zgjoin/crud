<%--
  Created by IntelliJ IDEA.
  User: zhuguangjie
  Date: 2020/1/14
  Time: 9:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="javaScript:void(0)">
        部门编号：<input name="deptNo" /><br>
        部门名称：<input name="dName"/><br>
        部门地址：<input name="loc"/><br>
        <input type="button" value="ADD" onclick="addDept()"/>
    </form>
    <script type="text/javascript">
        function addDept() {
            //alert(shu);
            var form=document.forms[0];
            form.action="<%=basePath%>dept/addDept";
            form.method="post";
            form.submit();
        }
    </script>
</body>
</html>
