<%--
  Created by IntelliJ IDEA.
  User: zeng
  Date: 19-6-2
  Time: 上午10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>学生管理系统--学生</title>
    <link href="css/basePageStyle.css" rel="stylesheet">
</head>
<body>

<div id="header">
    <h2>学生管理系统</h2>
    <a style="float: right; margin-top: -10px;">欢迎：${stu_id} 身份：学生<a href="login/page"> 首页</a></a>
</div>
<div id="left">
    <ul id="nav">
        <li><a href="${pageContext.request.contextPath}/StudentInfoPage?student_id=${stu_id}" target="content">个人信息</a></li>
        <li><a href="${pageContext.request.contextPath}/StudentScorePage?pagestart=0" target="content">成绩管理</a></li>
        <li><a href="${pageContext.request.contextPath}/StudentCoursePage?student_id=${stu_id}" target="content">课程管理</a></li>
        <li><a href="${pageContext.request.contextPath}/StudentAddCoursePage?student_id=${stu_id}" target="content">选课管理</a></li>
    </ul>
</div>
<div id="right">
    <iframe id="iframe" name="content" src="" width="100%" height="700px"></iframe>
</div>

</body>
</html>
