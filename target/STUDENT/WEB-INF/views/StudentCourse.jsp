<%--
  Created by IntelliJ IDEA.
  User: zeng
  Date: 19-6-2
  Time: 下午12:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生课程页面</title>
    <%-- 引入JQ和Bootstrap --%>
    <script src="js/jquery/2.0.0/jquery.min.js"></script>
    <link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <link href="css/style.css" rel="stylesheet">
    <script>
        $(function () {
            $("ul.pagination li.disabled a").click(function () {
                return false;
            });
        });
    </script>
</head>
<body>


<div class="addDIV">

    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">课程管理</h3>
        </div>
        <div class="panel-body">

            <form method="post" role="form">
                <table class="addTable">
                    <tr>
                        <td>课程ID：</td>
                        <td><input type="text" name="course_id" id="course_id" value="${stu_course.cId}"
                                   readonly="true">
                        </td>
                    </tr>
                    <tr>
                        <td>课程名称：</td>
                        <td><input type="text" name="course_name" id="course_name" value="${stu_course.cName}"
                                   readonly="true">
                        </td>
                    </tr>
                    <tr>
                        <td>教师ID：</td>
                        <td><input type="text" name="course_teacher" id="course_teacher" value="${stu_course.cTeacherid}"
                                   readonly="true">
                        </td>
                    </tr>
                    <tr>
                        <td>班级：</td>
                        <td><input type="text" name="course_room" id="course_room" value="${stu_course.cRoom}"
                                   readonly="true">
                        </td>
                    </tr>
                    <tr>
                        <td>学生上限：</td>
                        <td><input type="text" name="course_studentMax" id="course_studentMax" value="${stu_course.cMaxstudentnum}"
                                   readonly="true">
                        </td>
                    </tr>
                    <tr>
                        <td>学院ID：</td>
                        <td><input type="text" name="course_college" id="course_college" value="${stu_course.collegeid}"
                                   readonly="true">
                        </td>
                    </tr>


                </table>
            </form>
        </div>
    </div>

<%--</div>--%>


</body>
</html>
