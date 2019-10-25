<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2019/10/20
  Time: 20:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <jsp:include page="/admin/includes/header.jsp"/>
</head>
<body>
    <form action="/admin/regist" method="post">
        昵称：<input type="text" name="AdminName"><br>
        手机号：<input type="text" name="AdminNum"><br>
        密码：<input type="text" name="APassword"><br>
        学校：<input type="text" name="School"><br>
        <input type="submit" value="注册"><br>
    </form>
</body>
</html>
