<%@ page import="edu.heuet.Pojo.BookInfo" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2019/9/21
  Time: 21:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书详情</title>
</head>
<body>
<div class="container" role="main">
    <div class="row justify-content-center">
<%
    List<BookInfo> bookInfos=(List<BookInfo>) request.getAttribute("bookInfos");
//    List<BookPicture> bookPictures=(List<BookPicture>) request.getAttribute("bookPictures");
    int i=(int)request.getAttribute("i");
    List<String> imageList=new ArrayList<String>();
    BookInfo bookInfo=bookInfos.get(i);
%>
    图书名称：<%=bookInfo.getBookName()%><br>
    图书价格：<%=bookInfo.getPrice()%>元<br>
    图书类别：<%=bookInfo.getTypeId()%><br>
    图书简介：<%=bookInfo.getBookText()%><br>
<%
    String path=bookInfos.get(i).getPath();
    String[] pathList=path.split(",");
    for (String pathlist:pathList) {
        imageList.add(pathlist);
    }
%>
    本书图片：<br>
<%
    for(String image :imageList){
%>
    <img src="<%=image%>" alt="图片找不到了" width="150px" height="250px">
<%
    }
%>
<script src="/jsp/js/ajax.js" charset="UTF-8" type="application/javascript"></script>
<form action="/book/CreateOrder" method="post">
    <input type="hidden" name="BookName" value="<%=bookInfo.getBookName()%>">
    <input type="hidden" name="Price" value="<%=bookInfo.getPrice()%>">
    <input type="hidden" name="BookText" value="<%=bookInfo.getBookText()%>">
    <input type="hidden" name="BookId" id="BookId" value="<%=bookInfo.getBookId()%>">
    <input type="hidden" name="Seller" value="<%=bookInfo.getSeller()%>">
    <button type="submit" >购买</button><span >
    <button type="button" id="cartAdd" onclick="addCart()">添加到购物车</button> </span>
    <span id="block"></span>
    <a href="/cart/addCart">ddddddddd</a>
</form>
<br>
<span><a href="/book/info">返回</a></span>
<br>
    </div>
</div>
</body>
</html>
