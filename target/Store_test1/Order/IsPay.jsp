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
    <script charset="UTF-8" type="application/javascript" src="/Order/js/payJs.js"></script>
</head>
<body>
<div id="Alipay">
    <%--    商品名称 ： <input type="text" name=""/>--%>
    商品名称 ：<p>${OrderInfo.getBookId()}</p>
    买家编号 ：<p>${OrderInfo.getBuyer()}</p><br/>
    图书编号 ：<p>${OrderInfo.getBookId()}</p><br/>
    商品价格 : <p>${OrderInfo.getPrice()}</p>
    下单时间 ：<p>${OrderInfo.getOrderTime()}</p>
    <form method="post" action="/order/createPay" onsubmit="confirm('是否确定？')">

        <input type="hidden" name="OrderId" value="${OrderInfo.getOrderId()}">
        <input type="hidden" name="Price" value="${OrderInfo.getPrice()}">
        <input type="hidden" name="BookName" value="${BookInfo.getBookName()}">
        <input type="hidden" name="BookText" value="${BookInfo.getBookText()}">
        <button type="submit"  >支付</button>
    </form>
<%--<script type="application/javascript" charset="UTF-8">--%>
<%--    function isPay() {--%>
<%--        if(confirm())--%>
<%--    }--%>
<%--</script>--%>
</div>



</body>
</html>
