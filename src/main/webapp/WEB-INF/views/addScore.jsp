<%--
  Created by IntelliJ IDEA.
  User: zeng
  Date: 19-6-1
  Time: 下午11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加成绩</title>
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

            <form method="post" action="${pageContext.request.contextPath}/addScore" role="form">
                <table class="addTable">
                    <tr>
                        <td>成绩序列号：</td>
                        <td><input type="text" name="score_id" id="score_id">
                        </td>
                    </tr>
                    <tr>
                        <td>学生学号：</td>
                        <td><input type="text" name="score_stuID" id="score_stuID">
                        </td>
                    </tr>
                    <tr>
                        <td>课程号：</td>
                        <td><input type="text" name="score_CourseID" id="score_CourseID">
                        </td>
                    </tr>
                    <tr>
                        <td>分数：</td>
                        <td><input type="text" name="score" id="score">
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
