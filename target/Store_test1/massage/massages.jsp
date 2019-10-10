<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2019/10/9
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<span style="font-size:20px;">
    我的消息
</span>
<table border="1">
    <c:forEach items="${massages}" var="massage">
        <tr>
            <td>
                    系统提示：${massage.getContent()}!
            </td>
        </tr>

    </c:forEach>
</table>


</body>
</html>
