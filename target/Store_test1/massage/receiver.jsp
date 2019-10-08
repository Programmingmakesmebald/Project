<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 1031576719
  Date: 2019/10/8
  Time: 13:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <caption>消息通知</caption>
    <tr>
        <th>发送者</th>
        <th>发送时间</th>
        <th>发送内容</th>
    </tr>
<c:forEach items="${massages}" var="massage">
    <tr>
        <td>${massage.getSender()}</td>
        <td>${massage.getFormatTime()}</td>
        <td>${massage.getContent()}</td>
    </tr>
</c:forEach>

</table>
</body>
</html>
