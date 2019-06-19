<%--
  Created by IntelliJ IDEA.
  User: zeng
  Date: 19-6-1
  Time: 下午10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加课程</title>
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
            <h3 class="panel-title">增加课程</h3>
        </div>
        <div class="panel-body">

            <form method="post" action="${pageContext.request.contextPath}/addCourse" role="form">
                <table class="addTable">
                    <tr>
                        <td>课程ID：</td>
                        <td><input type="text" name="course_id" id="course_id">
                        </td>
                    </tr>
                    <tr>
                        <td>课程名称：</td>
                        <td><input type="text" name="course_name" id="course_name">
                        </td>
                    </tr>
                    <tr>
                        <td>教师ID：</td>
                        <td><input type="text" name="course_teacher" id="course_teacher">
                        </td>
                    </tr>
                    <tr>
                        <td>班级：</td>
                        <td><input type="text" name="course_room" id="course_room">
                        </td>
                    </tr>
                    <tr>
                        <td>学生上限：</td>
                        <td><input type="text" name="course_studentMax" id="course_studentMax">
                        </td>
                    </tr>
                    <tr>
                        <td>学院ID：</td>
                        <td><input type="text" name="course_college" id="course_college">
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
