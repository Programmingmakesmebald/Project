<%--
  Created by IntelliJ IDEA.
  User: 1031576719
  Date: 2019/10/8
  Time: 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/test/GetMassage">查看我的消息</a>
<form action="/test/CreateMassage" method="post">
    发送给：<input type="text" name="receiver"><br>
    发送内容：<input type="text" name="content" ><br>
    <input type="submit" value="发送">
</form>
</body>
</html>
