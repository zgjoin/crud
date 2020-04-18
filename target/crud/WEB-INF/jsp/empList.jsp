<%--
  Created by IntelliJ IDEA.
  User: zhuguangjie
  Date: 2020/1/14
  Time: 15:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <table align="center" border="1">
        <tr>
            <th>员工编号</th>
            <th>员工姓名</th>
            <th>员工工作</th>
            <th>员工职位</th>
            <th>入职日期</th>
            <th>员工工资</th>
            <th>员工奖金</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${list}" var="emp">
            <tr>
                <td>${emp.empNo}</td>
                <td>${emp.eName}</td>
                <td>${emp.job}</td>
                <td>${emp.mgr}</td>
                <td>${emp.hiredate}</td>
                <td>${emp.sal}</td>
                <td>${emp.comm}</td>
                <td><a href="/emp/deleteEmpById/${emp.empNo}">删除</a>/<a href="/emp/findEmpById/${emp.empNo}">修改</a></td>
            </tr>
        </c:forEach>
    </table>
<a href="/emp/toAddEmp" style="color:#000000">添加员工</a>
</body>
</html>
