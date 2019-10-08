<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2019/9/21
  Time: 13:29
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page pageEncoding="UTF-8" %>
<%request.setCharacterEncoding("utf-8");%>
<!DOCTYPE html>
<html>
<head>
    <title>分页</title>
    <link rel="stylesheet" type="text/css" href="/jsp/css/style.css">
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.css" >
    <script src="/bootstrap/jquery-3.4.0.min.js"></script>
    <script src="/bootstrap/js/bootstrap.js"></script>
</head>
<body>
<div class="container" role="main">
    <c:set var="totalPages" value="${requestScope.pagemsg.totalPage}"/>
    <c:set var="page" value="${requestScope.pagemsg.currentPage}"/>

    <div class="row justify-content-center">
        <div class="col-md-8">
            <p>总记录数:${requestScope.pagemsg.totalCount },当前页:${requestScope.pagemsg.currentPage}每页显示:${requestScope.pagemsg.pageSize}</p>
        </div>
    </div>

    <span ><a style="font-size: 20px;" href="/cart/showCartByPage"> 查看当前购物车</a></span>
<%--<% List<BookInfo> bookinfo=(List<BookInfo>) request.getAttribute("bookinfo");--%>

    <div class="row justify-content-center">
        <div class="container">
                <tbody>
                <% int k=0; %>

                    <c:forEach var="book" items="${requestScope.pagemsg.lists}">
                        <div class="box">
                            <div class="box_img">
                                <a href="one_info/<%=k%>">
                                    <img src="${book.getImagePath().get(0)}" alt="图片找不到了" width="170px" height="250px"><br>
                                    图书编号:${book.getBookId()}<br>
                                    图书名字:${book.getBookName()}<br>
                                    图书简介:${book.getBookText()}<br>
                                    图书价格:${book.getPrice()}<br>
                                    图书类别编号:${book.getTypeId()}<br>
                                </a>
                                <% k++;%>
                            </div>
                        </div>
                    </c:forEach>
                </tbody>
        </div>
    </div>
    <center>
    <div class="row justify-content-center">
        <div>
            <nav aria-label="Page navigation">
                <ul class="pagination">
                    <li class="page-item"><a class="page-link" href="<c:url value="/book/main?currentPage=1"/>">首页</a></li>
                    <li class="page-item"><a class="page-link"
                                             href="<c:url value="/book/main?currentPage=${page-1>1?page-1:1}"/>">&laquo;</a>
                    </li>
                    <c:forEach begin="1" end="${totalPages}" varStatus="loop">
                        <c:set var="active" value="${loop.index==page?'active':''}"/>
                        <li class="page-item ${active}">
                            <a class="page-link"
                               href="<c:url value="/book/main?currentPage=${loop.index}"/>">${loop.index}</a>
                        </li>
                    </c:forEach>
                    <li class="page-item">
                        <a class="page-link"
                           href="<c:url value="/book/main?currentPage=${page+1<totalPages?page+1:totalPages}"/>">&raquo;</a>
                    </li>
                    <li class="page-item">
                        <a class="page-link"
                           href="<c:url value="/book/main?currentPage=${totalPages}"/>">尾页</a></li>
                </ul>
            </nav>
        </div>
    </div>
    </center>
</div>
</body>
</html>
