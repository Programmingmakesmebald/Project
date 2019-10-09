<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 1031576719
  Date: 2019/10/8
  Time: 20:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我售的书</title>
</head>
<body>
<span><a href="/order/selectOrdersByState?state=0">已下单未支付</a><span id="state0" name="">2</span></span> &nbsp;&nbsp;&nbsp;&nbsp;
<span><a href="/order/selectOrdersByState?state=1">待发货</a><span id="state1" name="">3</span></span> &nbsp;&nbsp;&nbsp;&nbsp;
<span><a href="/order/selectOrdersByState?state=2">待收货</a><span id="state2" name="">1</span></span>
<span><a href="/order/selectOrdersByState?state=3">已收货</a><span id="state3" name="">1</span></span>&nbsp;&nbsp;&nbsp;&nbsp;
<br>
<% int  i=1;%>
<c:forEach items="${orderInfos}" var="orderInfo">
    <div id="div<%=i%>">
        书名：<span>${orderInfo.getBookName()}</span><br>
        编号：<span>${orderInfo.getBookId()}</span><br>
        状态：<span>${orderInfo.getBookState()}</span><br>
        <c:if   test="${orderInfo.getBookState()==1}">
            <button type="button" onclick="getGoods(${bookInfo.getBookId()},${bookInfo.getBookState()},<%=i%>)">我已发货</button><br>
        </c:if>
    </div>
    <%i++;%>
</c:forEach>
<script  src="/orderinfo/js/StateJs.js" charset="UTF-8" type="application/javascript"></script>
<%--<script src="/massage/js/jquery-3.4.0.min.js" type="application/javascript" charset="UTF-8"></script>--%>


</body>
</html>
