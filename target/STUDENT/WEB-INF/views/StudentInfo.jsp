<%--
  Created by IntelliJ IDEA.
  User: zeng
  Date: 19-6-2
  Time: 上午10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人信息</title>

    <%-- 引入JQ和Bootstrap --%>
    <script src="js/jquery/2.0.0/jquery.min.js"></script>
    <link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <link href="css/style.css" rel="stylesheet">
</head>
<body>

<div class="addDIV">

    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">个人信息</h3>
        </div>
        <div class="panel-body">

            <form method="post" role="form">
                <table class="addTable">
                    <tr>
                        <td>学号：</td>
                        <td><input type="text" name="student_id" id="student_id" value="${stu_info.num}"
                                    readonly="true">
                        </td>
                    </tr>
                    <tr>
                        <td>姓名：</td>
                        <td><input type="text" name="name" id="name" value="${stu_info.name}"
                                    readonly="true">
                        </td>
                    </tr>
                    <tr>
                        <td>密码：</td>
                        <td><input type="text" name="password" id="password" value="${stu_info.password}"
                                    readonly="true">
                        </td>
                    </tr>
                    <tr>
                        <td>年龄：</td>
                        <td><input type="text" name="age" id="age" value="${stu_info.age}"
                                    readonly="true">
                        </td>
                    </tr>
                    <tr>
                        <td>性别：</td>
                        <td><input type="text" name="sex" id="sex" value="${stu_info.sex}" readonly="true">

                        </td>
                    </tr>
                    <tr>
                        <td>出生日期：</td>
                        <td><input type="date" name="birthday" id="birthday" value="${stu_info.birthday}"
                                    readonly="true">
                        </td>
                    </tr>
                    <tr>
                        <td>地址：</td>
                        <td><input type="text" name="address" id="address" value="${stu_info.address}"
                                    readonly="true">
                        </td>
                    </tr>
                    <tr>
                        <td>电话：</td>
                        <td><input type="text" name="tel" id="tel" value="${stu_info.tel}"
                                    readonly="true">
                        </td>
                    </tr>
                    <tr>
                        <td>身份证号：</td>
                        <td><input type="text" name="IDCard" id="IDCard" value="${stu_info.idcard}"
                                    readonly="true">
                        </td>
                    </tr>

                </table>
            </form>
        </div>
    </div>

</div>

</body>
</html>
