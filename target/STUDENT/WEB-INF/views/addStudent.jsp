<%--
  Created by IntelliJ IDEA.
  User: zeng
  Date: 19-5-31
  Time: 上午8:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加学生</title>

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
            <h3 class="panel-title">增加学生</h3>
        </div>
        <div class="panel-body">

            <form method="post" action="${pageContext.request.contextPath}/addStudent" role="form">
                <table class="addTable">
                    <tr>
                        <td>学号：</td>
                        <td><input type="text" name="student_id" id="student_id" value="${update_student.num}"
                                   placeholder="请在这里输入学号"></td>
                    </tr>
                    <tr>
                        <td>姓名：</td>
                        <td><input type="text" name="name" id="name" value="${update_student.name}" placeholder="请在这里输入名字">
                        </td>
                    </tr>
                    <tr>
                        <td>密码：</td>
                        <td><input type="text" name="password" id="password" value="${update_student.password}" placeholder="请在这里输入密码">
                        </td>
                    </tr>
                    <tr>
                        <td>年龄：</td>
                        <td><input type="text" name="age" id="age" value="${update_student.age}" placeholder="请在这里输入年龄"></td>
                    </tr>
                    <tr>
                        <td>性别：</td>
                        <td><input type="radio" class="radio radio-inline" name="sex" value="男"> 男
                            <input type="radio" class="radio radio-inline" name="sex" value="女"> 女
                        </td>
                    </tr>
                    <tr>
                        <td>出生日期：</td>
                        <td><input type="date" name="birthday" id="birthday" value="${update_student.birthday}"
                                   placeholder="请在这里输入出生日期"></td>
                    </tr>
                    <tr>
                        <td>地址：</td>
                        <td><input type="text" name="address" id="address" value="${update_student.address}"
                                   placeholder="请在这里输入地址"></td>
                        </td>
                    </tr>
                    <tr>
                        <td>电话：</td>
                        <td><input type="text" name="tel" id="tel" value="${update_student.tel}"
                                   placeholder="请在这里输入电话"></td>
                        </td>
                    </tr>
                    <tr>
                        <td>身份证号：</td>
                        <td><input type="text" name="IDCard" id="IDCard" value="${update_student.idcard}"
                                   placeholder="请在这里输入身份证号"></td>
                        </td>
                    </tr>
                    <tr class="submitTR">
                        <td colspan="2" align="center">
                            <button type="submit" class="btn btn-success">提 交</button>
                        </td>

                    </tr>

                </table>
            </form>
        </div>
    </div>

</div>
</body>
</html>
