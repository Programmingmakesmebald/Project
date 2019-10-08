<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>Book_info</title>
<!--    <link rel="stylesheet" type="text/css" href="/bootstrap/css/bootstrap.css">-->
<!--    <script type="application/javascript" charset="UTF-8"  src="/bootstrap/js/bootstrap.min.js"></script>-->
<link rel="stylesheet" type="text/css" href="/bootstrap/css/bootstrap.min.css"/>
</head>
<body style="background: #e1e9eb;">
    <h1 align="center">购物车</h1>
    <hr>
    <c:set var="totalPages" value="${requestScope.pagemsg.totalPage}"/>
    <c:set var="page" value="${requestScope.pagemsg.currentPage}"/>

    <div class="row justify-content-center">
        <div class="col-md-8">
            <p>总记录数:${requestScope.pagemsg.totalCount },当前页:${requestScope.pagemsg.currentPage};每页显示:${requestScope.pagemsg.pageSize}</p>
        </div>
    </div>
    <%--action="/cart/showCart"--%>
        <form  id="cartForm" method="post">
            <table>
            <tr>
                <th><input type="checkbox"/></th>
                <th>书名</th>
                <th>价格</th>
            </tr>
    <%--@elvariable id="CartList" type="java.util.List"--%>
    <%--<c:forEach items="${CartList}" var="BookInfo" varStatus="status">--%>
        <c:forEach items="${requestScope.pagemsg.lists}" var="BookInfo" varStatus="status">
            <tr>
                <td><input type="checkbox" /></td>
                <td>${BookInfo.getBookName()}</td>
                <td>￥${BookInfo.getPrice()}</td>
            </tr>
    </c:forEach>
        </table>
        <input type="submit" value="结算"/>
        </form>
    <div class="row justify-content-center">
        <c:set var="totalPages" value="${requestScope.pagemsg.totalPage}"/>
        <c:set var="page" value="${requestScope.pagemsg.currentPage}"/>
            <nav>
                <ul class="pagination">
                    <li class="page-item"><a class="page-link" href="<c:url value="/cart/showCartByPage?currentPage=1&UserId=1"/>">首页</a></li>
                    <li class="page-item"><a class="page-link"
                                             href="<c:url value="/cart/showCartByPage?currentPage=${page-1>1?page-1:1}&UserId=1"/>">&laquo;</a>
                    </li>
                    <c:forEach begin="1" end="${totalPages}" varStatus="loop">
                        <c:set var="active" value="${loop.index==page?'active':''}"/>
                        <li class="page-item ${active}">
                            <a class="page-link"
                               href="<c:url value="/cart/showCartByPage?currentPage=${loop.index}&UserId=1"/>">${loop.index}</a>
                        </li>
                    </c:forEach>
                    <li class="page-item">
                        <a class="page-link"
                           href="<c:url value="/cart/showCartByPage?currentPage=${page+1<totalPages?page+1:totalPages}&UserId=1"/>">&raquo;</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link"
                           href="<c:url value="/cart/showCartByPage?currentPage=${totalPages}&UserId=1"/>">尾页</a></li>
                </ul>
                <p>总记录数 ：${requestScope.pagemsg.totalCount }    , 总页数：${requestScope.pagemsg.totalPage}</p>
            </nav>
    </div>

</body>


</html>
