<%--
  Created by IntelliJ IDEA.
  User: zhuguangjie
  Date: 2020/1/16
  Time: 14:10
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
    <form>
        员工编号：<input name="empNo"><br>
        员工姓名：<input name="eName"><br>
        员工工作：<input name="job"><br>
        员工经理：<input name="mgr"><br>
        入职日期：<input name="hiredate" type="date"><br>
        员工工资：<input name="sal"><br>
        员工奖金：<input name="comm"><br>
        员工部门：<input name="deptNo"><br>
        <input type="button" value="ADD" onclick="addEmp()">
    </form>
    <script type="text/javascript">
        function addEmp() {
            var form=document.forms[0];
            form.action="<%=basePath%>emp/addEmp";
            form.method="post";
            form.submit();
        }
    </script>
</body>
</html>
