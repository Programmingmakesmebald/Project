<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2019/9/21
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发布图书</title>
</head>
<body>
        <form action="/book/sell" method="post" enctype="multipart/form-data">
            图书名称：<input type="text"  name="BookName"   ><br>
            图书价格：<input type="text"  name="Price"      ><br>
            图书类别：<br>
                      <input type="radio" name="TypeId"     value="101" checked>语文
                      <input type="radio" name="TypeId"     value="102">数学
                      <input type="radio" name="TypeId"     value="103">英语<br>
            图书简介：<input type="text"  name="BookText"   ><br>
            添加图片：<input type="file"  name="BookPicture" accept="image/*" multiple="multiple"><br>
            <input type="submit" value="发布"><br/><br>
            <span>立即<a href="/book">查看我所卖图书</a></span>
        </form>
</body>
</html>
