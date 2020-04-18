<%--
  Created by IntelliJ IDEA.
  User: zhuguangjie
  Date: 2020/1/9
  Time: 20:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path=request.getContextPath();
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
        <table align="center" border="1">
            <tr>
                <th>部门编号</th>
                <th>部门名称</th>
                <th>部门地址</th>
                <th>操作</th>
                <th>部门员工</th>
            </tr>
            <c:forEach items="${list}" var="dept">
                <tr>
                    <td>${dept.deptNo}</td>
                    <td>${dept.dName}</td>
                    <td>${dept.loc}</td>
                    <td><a href="/dept/deleteDept/${dept.deptNo}">删除</a>/<a href="/dept/findDeptById/${dept.deptNo}">修改</a></td>
                    <td><a href="/emp/findEmpByDeptNo/${dept.deptNo}">${dept.dName}员工</a></td>
                </tr>
            </c:forEach>
        </table>
        <a href="<%=path%>/dept/toAddDept">添加部门</a>
</body>
</html>
