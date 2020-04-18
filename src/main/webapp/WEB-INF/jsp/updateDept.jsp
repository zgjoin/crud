<%--
  Created by IntelliJ IDEA.
  User: zhuguangjie
  Date: 2020/1/10
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>更新数据</title>
</head>
<body>
    <form action="javaScript:void(0)">
        部门编号：<input value="${dept.deptNo}" name="deptNo"/><br>
        部门名称：<input value="${dept.dName}" name="dName"/><br>
        部门地址：<input value="${dept.loc}" name="loc"/><br>
        <input type="button" value="Push" onclick="updateDept()"/>
    </form>
    <script type="text/javascript">
        function updateDept(){
            var form = document.forms[0];
            form.action="<%=basePath%>dept/updateDept";
            form.method="post";
            form.submit();
        }
    </script>
</body>
</html>
