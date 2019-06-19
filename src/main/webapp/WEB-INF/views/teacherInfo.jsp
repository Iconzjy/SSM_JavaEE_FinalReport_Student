<%--
  Created by IntelliJ IDEA.
  User: zeng
  Date: 19-6-2
  Time: 下午1:36
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
                        <td>教师ID：</td>
                        <td><input type="text" name="teacher-id" id="teacher-id" value="${tea_info.teacherid}"
                                   readonly="true">
                        </td>
                    </tr>
                    <tr>
                        <td>姓名：</td>
                        <td><input type="text" name="teacher-name" id="teacher-name" value="${tea_info.teachername}"
                                   readonly="true">
                        </td>
                    </tr>
                    <tr>
                        <td>密码：</td>
                        <td><input type="text" name="teacher-pwd" id="teacher-pwd" value="${tea_info.password}"
                                   readonly="true">
                        </td>
                    </tr>
                    <tr>
                        <td>身份证号：</td>
                        <td><input type="text" name="teacher-IDC" id="teacher-IDC" value="${tea_info.idcard}"
                                   readonly="true">
                        </td>
                    </tr>
                    <tr>
                        <td>性别：</td>
                        <td><input type="text" name="teacher-sex" id="teacher-sex" value="${tea_info.sex}"
                                   readonly="true">
                        </td>
                    </tr>
                    <tr>
                        <td>出生日期：</td>
                        <td><input type="text" name="teacher-birth" id="teacher-birth" value="${tea_info.birthday}"
                                   readonly="true">
                        </td>
                    </tr>
                    <tr>
                        <td>电话号码：</td>
                        <td><input type="text" name="teacher-tel" id="teacher-tel" value="${tea_info.tel}"
                                   readonly="true">
                        </td>
                    </tr>
                    <tr>
                        <td>家庭住址：</td>
                        <td><input type="text" name="teacher-addr" id="teacher-addr" value="${tea_info.address}"
                                   readonly="true">
                        </td>
                    </tr>
                    <tr>
                        <td>学校ID：</td>
                        <td><input type="text" name="teacher-schoolID" id="teacher-schoolID" value="${tea_info.schoolid}"
                                   readonly="true">
                        </td>
                    </tr>
                    <tr>
                        <td>学院ID：</td>
                        <td><input type="text" name="teacher-collegeID" id="teacher-collegeID" value="${tea_info.collegeid}"
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
