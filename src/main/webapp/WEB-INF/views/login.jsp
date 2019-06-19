<%--
  Created by IntelliJ IDEA.
  User: zeng
  Date: 19-5-21
  Time: 上午9:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登录</title>

</head>
<body>
<h1 align="center">登录</h1>
<br>
<form action="${pageContext.request.contextPath}/login" method="post">
        <table border="1" align="center">
            <tr>
                <td>
                    <label>
                        登录名：
                    </label>
                </td>
                <td>
                    <input type="text" id="loginName" name="loginName">
                </td>
            </tr>
            <tr>
                <td>
                    <label>
                        密 码：
                    </label>
                </td>
                <td>
                    <input type="password" id="passWord" name="passWord">
                </td>
            </tr>
            <tr>
                <td>人员类别：</td>
                <td>
                    <input type="radio" class="radio radio-inline" name="loginType" value="管理员"> 管理员
                    <input type="radio" class="radio radio-inline" name="loginType" value="教师"> 教师
                    <input type="radio" class="radio radio-inline" name="loginType" value="学生"> 学生
                </td>
            </tr>
            <tr>
                <td>
                    <input id="submit" type="submit" value="登录">
                </td>
            </tr>
        </table>
</form>
</body>
</html>