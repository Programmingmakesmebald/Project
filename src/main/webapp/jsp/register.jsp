<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2019/9/16
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>BookSellRegister</title>
<!--    <link rel="stylesheet" type="text/css" href="/bootstrap/css/bootstrap.css">-->
<!--    <script type="application/javascript" charset="UTF-8"  src="/bootstrap/js/bootstrap.min.js"></script>-->
<script type="application/javascript" src="/jsp/js/ajax.js" charset="UTF-8"></script>
</head>
<body>

<form action="/user/register" method="post">
    手机号：<input type="varchar"  id="PhoneNum" name="PhoneNum"  onblur="checkNum()">
    <button type="button" id="checkbtn" onclick="check1(1)">发送验证码</button><br/><span id="checkinfo" style="color: #ac2925;font-stretch: condensed"></span><br/>
    验证码：<input type="text" name="CheckCode"><br/><br/>
    密码：<input type="password" name="LPassword"><br/><br/>
    学校：<input type="number" name="School"><br/>
    <input type="submit" value="注册"><br/>
    <a href="/jsp/login.jsp">已有账号？点击登录</a>
</form>

</body>


</html>
