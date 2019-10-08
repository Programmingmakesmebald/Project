<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2019/9/16
  Time: 13:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
</head>
<body>

<script src="/jsp/js/ajax.js" charset="UTF-8"></script>

<div>
    <form action="/user/login" method="post">
    手机号：<input type="text"  id="PhoneNum" name="PhoneNum" onblur=checkNum()>
    <button type="button" id="checkbtn" onclick="check1(0)">发送验证码</button><br/><span id="checkinfo" style="color: #761c19"></span><br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" placeholder="请输入验证码" name="CheckCode"><br/>
        <input type="submit" value="登录">
        <span>没有账号？立即<a href="/jsp/register.jsp">注册</a></span><br>

</form>
</div>

</body>
</html>
