<%--
  Created by IntelliJ IDEA.
  User: zeng
  Date: 19-6-1
  Time: 下午10:37
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
    <title>教师信息页面</title>
        <meta http-equiv="refresh" content="0;url=${pageContext.request.contextPath}/listTeacher?pagestart=0"/>

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
    <form action="${pageContext.request.contextPath}/listTeacher?pagestart=0" method="post">
        <tr>
            <input id="update" type="submit" value="刷新">
        </tr>
    </form>
    <form action="${pageContext.request.contextPath}/addTeacherPage" method="post">
        <tr>
            <input id="addTeacher" type="submit" value="添加教师">
        </tr>
    </form>
    <form action="${pageContext.request.contextPath}/searchTeacher" method="post">
        查找教师：<input id="searchTeacher" type="text" name="searchTeacher"/>
        <input type="submit" value="查找"/>
    </form>

</div>

<div class="listDIV">
    <table class="table table-striped table-bordered table-hover table-condensed">

        <caption>教师列表 - 共${page.total+1 }人</caption>
        <thead>
        <tr class="success">
            <th>教师ID</th>
            <th>姓名</th>
            <th>密码</th>
            <th>身份证号</th>
            <th>性别</th>
            <th>出生日期</th>
            <th>电话号码</th>
            <th>家庭住址</th>
            <th>学校ID</th>
            <th>学院ID</th>


            <th>编辑</th>
            <th>删除</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach items="${teachers }" var="s" varStatus="status">
            <tr>
                <td>${s.teacherid}</td>
                <td>${s.teachername}</td>
                <td>${s.password}</td>
                <td>${s.idcard}</td>
                <td>${s.sex}</td>
                <td>${s.birthday}</td>
                <td>${s.tel}</td>
                <td>${s.address}</td>
                <td>${s.schoolid}</td>
                <td>${s.collegeid}</td>

                <td><a href="${pageContext.request.contextPath}/editTeacher?edit_id=${s.teacherid}"><span class="glyphicon glyphicon-edit"></span> </a></td>
                <td><a href="${pageContext.request.contextPath}/deleteTeacher?del_id=${s.teacherid}" onclick="javascript:return del();"><span class="glyphicon glyphicon-trash"></span> </a></td>
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
                <form action="${pageContext.request.contextPath}/listTeacher?pagestart=0" method="post">
                    <input type="submit" value="«">
                </form>
            </a>
        </li>
        <li style="margin:0 10px;float: left;"<c:if test="${!page.hasPreviouse}">class="disabled"</c:if>>
            <form action="${pageContext.request.contextPath}/listTeacher?pagestart=${page.start-page.count}" method="post">
                <input type="submit" value="‹">
            </form>
            </a>
        </li>

        <c:forEach begin="0" end="${page.totalPage}" varStatus="status">

            <c:if test="${status.count*page.count-page.start<=30 && status.count*page.count-page.start>=-10}">
                <li style="margin:0 10px;float: left;"<c:if test="${status.index*page.count==page.start}">class="disabled"</c:if>>
                    <a <c:if test="${status.index*page.count==page.start}">class="current"</c:if> >
                        <form action="${pageContext.request.contextPath}/listTeacher?pagestart=${status.index*page.count}" method="post">
                            <input type="submit" value=${status.count}>
                        </form>
                    </a>

                </li>
            </c:if>
        </c:forEach>

        <li style="margin:0 10px;float: left;"<c:if test="${!page.hasNext}">class="disabled"</c:if>>
            <form action="${pageContext.request.contextPath}/listTeacher?pagestart=${page.start+page.count}" method="post">
                <input type="submit" value="›">
            </form>
        </li>
        <li style="margin:0 10px;float: left;"<c:if test="${!page.hasNext}">class="disabled"</c:if>>
            <form action="${pageContext.request.contextPath}/listTeacher?pagestart=${page.last}" method="post">
                <input type="submit" value="»">
            </form>
        </li>
    </ul>
</nav>

</body>
</html>
