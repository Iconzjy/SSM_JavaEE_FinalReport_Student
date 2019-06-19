<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>教师信息编辑页面</title>
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
            <h3 class="panel-title">增加教师</h3>
        </div>
        <div class="panel-body">

            <form method="post" action="${pageContext.request.contextPath}/updateTeacher" role="form">
                <table class="addTable">
                    <tr>
                        <td>教师ID：</td>
                        <td><input type="text" name="teacher-id" id="teacher-id" value="${update_teacher.teacherid}">
                        </td>
                    </tr>
                    <tr>
                        <td>姓名：</td>
                        <td><input type="text" name="teacher-name" id="teacher-name" value="${update_teacher.teachername}">
                        </td>
                    </tr>
                    <tr>
                        <td>密码：</td>
                        <td><input type="text" name="teacher-pwd" id="teacher-pwd" value="${update_teacher.password}">
                        </td>
                    </tr>
                    <tr>
                        <td>身份证号：</td>
                        <td><input type="text" name="teacher-IDC" id="teacher-IDC" value="${update_teacher.idcard}">
                        </td>
                    </tr>
                    <tr>
                        <td>性别：</td>
                        <td><input type="radio" <c:if test="${student.sex == '男'}">checked</c:if> class="radio radio-inline" name="teacher-sex" value="男"> 男
                            <input type="radio" <c:if test="${student.sex == '男'}">checked</c:if> class="radio radio-inline" name="teacher-sex" value="女"> 女
                        </td>
                    </tr>
                    <tr>
                        <td>出生日期：</td>
                        <td><input type="date" name="teacher-birth" id="teacher-birth" value="${update_teacher.birthday}">
                        </td>
                    </tr>
                    <tr>
                        <td>电话号码：</td>
                        <td><input type="text" name="teacher-tel" id="teacher-tel" value="${update_teacher.tel}">
                        </td>
                    </tr>
                    <tr>
                        <td>家庭住址：</td>
                        <td><input type="text" name="teacher-addr" id="teacher-addr" value="${update_teacher.address}">
                        </td>
                    </tr>
                    <tr>
                        <td>学校ID：</td>
                        <td><input type="text" name="teacher-schoolID" id="teacher-schoolID" value="${update_teacher.schoolid}">
                        </td>
                    </tr>
                    <tr>
                        <td>学院ID：</td>
                        <td><input type="text" name="teacher-collegeID" id="teacher-collegeID" value="${update_teacher.collegeid}">
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
