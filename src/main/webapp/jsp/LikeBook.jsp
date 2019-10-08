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

    <div class="row justify-content-center">
        <div class="col-md-8">
            <p>总记录数:${pageInfo.pages },当前页:${pageInfo.pageNum}每页显示:${pageInfo.pageSize}</p>
        </div>
    </div>
<%--<% List<BookInfo> bookinfo=(List<BookInfo>) request.getAttribute("bookinfo");--%>

    <div class="row justify-content-center">
        <div class="container">
                <tbody>
                <% int k=0; %>

                    <c:forEach var="book" items="${pageInfo.list}">
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
                    <li>
                        <a href="${pageContext.request.contextPath}/order/selectOrder?page=${1}&key=${requestScope.key}">首页</a>
                    </li>
                    <c:if test="${pageInfo.pageNum>1}">
                        <li>
                            <a href="${pageContext.request.contextPath}/order/selectOrder?page=${pageInfo.pageNum-1}&key=${requestScope.key}}" aria-label="Previous">
                                <span aria-hidden="true">上一页</span>
                            </a>
                        </li>
                    </c:if>
                    <c:forEach begin="${1}" end="${pageInfo.pages}" var="i">
                        <c:if test="${pageInfo.pageNum==i}">
                            <li class="active"> <a href="${pageContext.request.contextPath}/order/selectOrder?key=${requestScope.key}&page=${i}">${i}</a></li>
                        </c:if>
                        <c:if test="${pageInfo.pageNum!=i}">
                            <li> <a href="${pageContext.request.contextPath}/order/selectOrder?key=${requestScope.key}&page=${i}">${i}</a></li>
                        </c:if>
                    </c:forEach>
                    <c:if test="${pageInfo.pageNum<pageInfo.pages}">
                        <li>
                            <a href="${pageContext.request.contextPath}/order/selectOrder?page=${pageInfo.pageNum+1}&key=${requestScope.key}" aria-label="Next">
                                <span aria-hidden="true">下一页</span>
                            </a>
                        </li>
                    </c:if>
                    <li>
                        <a href="${pageContext.request.contextPath}/order/selectOrder?page=${pageInfo.pages}&key=${requestScope.key}}">末尾</a>
                    </li>
                    <li>
                        <a>共${pageInfo.pages}页</a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    </center>
</div>
</body>
</html>
