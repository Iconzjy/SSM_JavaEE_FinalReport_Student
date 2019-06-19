<%--
  Created by IntelliJ IDEA.
  User: zeng
  Date: 19-6-1
  Time: 下午10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
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
    </script>
    <title>成绩页面</title>
</head>
<body>

<div>
    <form action="${pageContext.request.contextPath}/listScore_teacher?pagestart=0" method="post">
        <tr>
            <input id="update" type="submit" value="刷新">
        </tr>
    </form>
    <form action="${pageContext.request.contextPath}/addScorePage" method="post">
        <tr>
            <input id="addScore" type="submit" value="添加成绩">
        </tr>
    </form>
    <form action="${pageContext.request.contextPath}/searchScore" method="post">
        查找成绩：<input id="searchScore" type="text" name="searchCourse"/>
        <input type="submit" value="查找"/>
    </form>

</div>

<div class="listDIV">
    <table class="table table-striped table-bordered table-hover table-condensed">

        <caption>成绩列表 - 共${page.total+1 }条</caption>
        <thead>
        <tr class="success">
            <th>序列</th>
            <th>学生学号</th>
            <th>课程号</th>
            <th>分数</th>

            <th>编辑</th>
            <th>删除</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach items="${scores}" var="s" varStatus="status">
            <tr>
                <td>${s.sId}</td>
                <td>${s.sStudentid}</td>
                <td>${s.sCourseid}</td>
                <td>${s.sScore}</td>

                <td><a href="${pageContext.request.contextPath}/editScore?edit_id=${s.sId}"><span class="glyphicon glyphicon-edit"></span> </a></td>
                <td><a href="${pageContext.request.contextPath}/deleteScore?del_id=${s.sId}" onclick="javascript:return del();"><span class="glyphicon glyphicon-trash"></span> </a></td>
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
                <form action="${pageContext.request.contextPath}/listScore_teacher?pagestart=0" method="post">
                    <input type="submit" value="«">
                </form>
            </a>
        </li>
        <li style="margin:0 10px;float: left;"<c:if test="${!page.hasPreviouse}">class="disabled"</c:if>>
            <form action="${pageContext.request.contextPath}/listScore_teacher?pagestart=${page.start-page.count}" method="post">
                <input type="submit" value="‹">
            </form>
            </a>
        </li>

        <c:forEach begin="0" end="${page.totalPage}" varStatus="status">

            <c:if test="${status.count*page.count-page.start<=30 && status.count*page.count-page.start>=-10}">
                <li style="margin:0 10px;float: left;"<c:if test="${status.index*page.count==page.start}">class="disabled"</c:if>>
                    <a <c:if test="${status.index*page.count==page.start}">class="current"</c:if> >
                        <form action="${pageContext.request.contextPath}/listScore_teacher?pagestart=${status.index*page.count}" method="post">
                            <input type="submit" value=${status.count}>
                        </form>
                    </a>

                </li>
            </c:if>
        </c:forEach>

        <li style="margin:0 10px;float: left;"<c:if test="${!page.hasNext}">class="disabled"</c:if>>
            <form action="${pageContext.request.contextPath}/listScore_teacher?pagestart=${page.start+page.count}" method="post">
                <input type="submit" value="›">
            </form>
        </li>
        <li style="margin:0 10px;float: left;"<c:if test="${!page.hasNext}">class="disabled"</c:if>>
            <form action="${pageContext.request.contextPath}/listScore_teacher?pagestart=${page.last}" method="post">
                <input type="submit" value="»">
            </form>
        </li>
    </ul>
</nav>


</body>
</html>
