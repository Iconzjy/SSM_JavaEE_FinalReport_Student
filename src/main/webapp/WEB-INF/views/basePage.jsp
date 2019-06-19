<%--
  Created by IntelliJ IDEA.
  User: zeng
  Date: 19-6-1
  Time: 下午1:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>学生管理系统--管理员</title>
    <link href="css/basePageStyle.css" rel="stylesheet">
</head>
<body>
<div id="header">
    <h2>学生管理系统</h2>
    <a style="float: right; margin-top: -10px;">欢迎：zeng 身份：管理员<a href="login/page">首页</a></a>
</div>
<div id="left">
    <ul id="nav">
        <li><a href="BaseStudentPage" target="content">学生管理</a></li>
        <li><a href="BaseCoursePage" target="content">课程管理</a></li>
        <li><a href="BaseScorePage" target="content">成绩管理</a></li>
        <li><a href="BaseTeacherPage" target="content">教师管理</a></li>
    </ul>
</div>
<div id="right">
    <iframe id="iframe" name="content" src="" width="100%" height="700px"></iframe>
</div>
</body>
</html>

