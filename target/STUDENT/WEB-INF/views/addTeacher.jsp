<%--
  Created by IntelliJ IDEA.
  User: zeng
  Date: 19-6-1
  Time: 下午10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%-- 引入JQ和Bootstrap --%>
    <script src="js/jquery/2.0.0/jquery.min.js"></script>
    <link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <link href="css/style.css" rel="stylesheet">

    <title>添加教师</title>

</head>
<body>

<div class="addDIV">

    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">增加教师</h3>
        </div>
        <div class="panel-body">

            <form method="post" action="${pageContext.request.contextPath}/addTeacher" role="form">
                <table class="addTable">
                    <tr>
                        <td>教师ID：</td>
                        <td><input type="text" name="teacher-id" id="teacher-id">
                        </td>
                    </tr>
                    <tr>
                        <td>姓名：</td>
                        <td><input type="text" name="teacher-name" id="teacher-name">
                        </td>
                    </tr>
                    <tr>
                        <td>密码：</td>
                        <td><input type="text" name="teacher-pwd" id="teacher-pwd">
                        </td>
                    </tr>
                    <tr>
                        <td>身份证号：</td>
                        <td><input type="text" name="teacher-IDC" id="teacher-IDC">
                        </td>
                    </tr>
                    <tr>
                        <td>性别：</td>
                        <td><input type="radio" class="radio radio-inline" name="teacher-sex" value="男"> 男
                            <input type="radio" class="radio radio-inline" name="teacher-sex" value="女"> 女
                        </td>
                    </tr>
                    <tr>
                        <td>出生日期：</td>
                        <td><input type="date" name="teacher-birth" id="teacher-birth">
                        </td>
                    </tr>
                    <tr>
                        <td>电话号码：</td>
                        <td><input type="text" name="teacher-tel" id="teacher-tel">
                        </td>
                    </tr>
                    <tr>
                        <td>家庭住址：</td>
                        <td><input type="text" name="teacher-addr" id="teacher-addr">
                        </td>
                    </tr>
                    <tr>
                        <td>学校ID：</td>
                        <td><input type="text" name="teacher-schoolID" id="teacher-schoolID">
                        </td>
                    </tr>
                    <tr>
                        <td>学院ID：</td>
                        <td><input type="text" name="teacher-collegeID" id="teacher-collegeID">
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
