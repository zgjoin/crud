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
    <form action="" id="myForm" method="post">
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
    第${page.pageNum }页/共${page.pages }页/${page.total }条
    <input type="button" value="首页" onclick="jump(${page.firstPage})">
    <input type="button" value="上一页" onclick="jump(${page.prePage})">
    <input type="button" value="下一页" onclick="jump(${page.nextPage})">
    <input type="button" value="尾页" onclick="jump(${page.lastPage})">
<a href="/emp/toAddEmp" style="color:#000000">添加员工</a>
    </form>
</body>

    <script type="text/javascript">
        //分页
        function jump(obj) {
            var i='${page.total}';
            var totalpage='${page.pages}';
            if (obj>=1 && obj<=totalpage) {
           // document.getElementById("pn").value=obj;
            document.getElementById("myForm").action="${pageContext.request.contextPath }/emp/";
            document.getElementById("myForm").submit();
            }

            }
    </script>
</html>
