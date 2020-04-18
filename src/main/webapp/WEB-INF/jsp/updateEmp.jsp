<%--
  Created by IntelliJ IDEA.
  User: zhuguangjie
  Date: 2020/1/15
  Time: 10:26
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
        员工编号：<input value="${emp.empNo}" name="empNo"><br>
        员工姓名：<input value="${emp.eName}" name="eName"><br>
        员工工作：<input value="${emp.job}" name="job"><br>
        员工经理：<input value="${emp.mgr}" name="mgr"><br>
        入职日期：<input value="${emp.hiredate}" name="hiredate"><br>
        员工工资：<input value="${emp.sal}" name="sal"><br>
        员工奖金：<input value="${emp.comm}" name="comm"><br>
        所属部门：<input value="${emp.dept.deptNo}" name="deptNo"><br>
        <input type="button" value="Update" onclick="Update()">
    </form>
    <script type="text/javascript">
        function Update(){
            var form=document.forms[0];
            form.method="post";
            form.action="<%=basePath%>emp/updateEmp";
            form.submit();
        }
    </script>
</body>
</html>
