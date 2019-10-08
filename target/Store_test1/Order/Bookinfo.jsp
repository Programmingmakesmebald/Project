<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2019/9/21
  Time: 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post" action="/order/createOrder">
<%--    商品名称 ： <input type="text" name=""/>--%>
    卖家编号 ： <input type="number" name="Seller"><br/><br/>
    卖家编号 ：<input type="number" name="Buyer"><br/><br/>
    图书编号 ：<input type="number" name="BookId"><br/><br/>
    <input type="submit" value="下单">
</form>
</body>
</html>
