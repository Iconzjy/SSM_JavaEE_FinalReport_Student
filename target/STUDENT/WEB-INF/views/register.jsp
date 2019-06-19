<%--
  Created by IntelliJ IDEA.
  User: zeng
  Date: 19-5-21
  Time: 上午9:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>注册</title>
</head>
<body>
<h3>注册页面</h3>
<br>
<form action="register" method="post">
    <table>
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
            <td>
                <label>
                    姓 名：
                </label>
            </td>
            <td>
                <input type="text" id="userName" name="userName">
            </td>
        </tr>
        <tr>
            <td>
                <input id="submit" type="submit" value="注册">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
