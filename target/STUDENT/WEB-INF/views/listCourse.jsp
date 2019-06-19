<%--
  Created by IntelliJ IDEA.
  User: zeng
  Date: 19-6-1
  Time: 下午10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>课程页面</title>
    <meta http-equiv="refresh" content="0;url=${pageContext.request.contextPath}/listCourse?pagestart=0"/>
    <%-- 引入JQ和Bootstrap --%>
    <script src="js/jquery/2.0.0/jquery.min.js"></script>
    <link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <link href="css/style.css" rel="stylesheet">
    <script>
        $(function () {
            $("ul.pagination li.disabled a").click(function () {
                return false;
            });
        });
        function del() {
            var msg = "您真的确定要删除吗？\n\n请确认！";
            if (confirm(msg) == true) {
                return true;
            } else {
                return false;
            }
        }
    </script>
</head>
<body>
<div>
    <form action="${pageContext.request.contextPath}/listCourse?pagestart=0" method="post">
        <tr>
            <input id="update" type="submit" value="刷新">
        </tr>
    </form>
    <form action="${pageContext.request.contextPath}/addCoursePage" method="post">
        <tr>
            <input id="addCourse" type="submit" value="添加课程">
        </tr>
    </form>
    <form action="${pageContext.request.contextPath}/searchCourse" method="post">
        查找课程：<input id="searchCourse" type="text" name="searchCourse"/>
        <input type="submit" value="查找"/>
    </form>


</div>
<div class="listDIV">
    <table class="table table-striped table-bordered table-hover table-condensed">

        <caption>课程列表 - 共${page.total+1 }门</caption>
        <thead>
        <tr class="success">
            <th>课程ID</th>
            <th>课程名</th>
            <th>教师ID</th>
            <th>教室</th>
            <th>学生上限</th>
            <th>学院ID</th>

            <th>编辑</th>
            <th>删除</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach items="${courses}" var="s" varStatus="status">
            <tr>
                <td>${s.cId}</td>
                <td>${s.cName}</td>
                <td>${s.cTeacherid}</td>
                <td>${s.cRoom}</td>
                <td>${s.cMaxstudentnum}</td>
                <td>${s.collegeid}</td>

                <td><a href="${pageContext.request.contextPath}/editCourse?edit_id=${s.cId}"><span class="glyphicon glyphicon-edit"></span> </a></td>
                <td><a href="${pageContext.request.contextPath}/deleteCourse?del_id=${s.cId}" onclick="javascript:return del();"><span class="glyphicon glyphicon-trash"></span> </a></td>
            </tr>
        </c:forEach>

        </tbody>
    </table>
    </form>
</div>

<nav class="pageDIV">
    <ul style="list-style-type:none;margin:0;padding:0;">
        <li style="margin:0 10px;float: left;"<c:if test="${!page.hasPreviouse}">class="disabled"</c:if>>
            <a>
                <form action="${pageContext.request.contextPath}/listCourse?pagestart=0" method="post">
                    <input type="submit" value="«">
                </form>
            </a>
        </li>
        <li style="margin:0 10px;float: left;"<c:if test="${!page.hasPreviouse}">class="disabled"</c:if>>
            <form action="${pageContext.request.contextPath}/listCourse?pagestart=${page.start-page.count}" method="post">
                <input type="submit" value="‹">
            </form>
            </a>
        </li>

        <c:forEach begin="0" end="${page.totalPage}" varStatus="status">

            <c:if test="${status.count*page.count-page.start<=30 && status.count*page.count-page.start>=-10}">
                <li style="margin:0 10px;float: left;"<c:if test="${status.index*page.count==page.start}">class="disabled"</c:if>>
                    <a <c:if test="${status.index*page.count==page.start}">class="current"</c:if> >
                        <form action="${pageContext.request.contextPath}/listCourse?pagestart=${status.index*page.count}" method="post">
                            <input type="submit" value=${status.count}>
                        </form>
                    </a>

                </li>
            </c:if>
        </c:forEach>

        <li style="margin:0 10px;float: left;"<c:if test="${!page.hasNext}">class="disabled"</c:if>>
            <form action="${pageContext.request.contextPath}/listCourse?pagestart=${page.start+page.count}" method="post">
                <input type="submit" value="›">
            </form>
        </li>
        <li style="margin:0 10px;float: left;"<c:if test="${!page.hasNext}">class="disabled"</c:if>>
            <form action="${pageContext.request.contextPath}/listCourse?pagestart=${page.last}" method="post">
                <input type="submit" value="»">
            </form>
        </li>
    </ul>
</nav>

</body>
</html>
