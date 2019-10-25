<%@ page import="edu.heuet.Pojo.BookInfo" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="edu.heuet.Pojo.Admin" %><%--
  Created by IntelliJ IDEA.
User: pc
Date: 2019/10/13
Time: 16:01
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>后台管理员</title>
    <jsp:include page="/admin/includes/header.jsp"/>
</head>
<body>
<!-- Begin page -->
<header class="am-topbar am-topbar-fixed-top">
    <div class="am-topbar-left am-hide-sm-only">
        <a href="${pageContext.request.contextPath}/admin.jsp" class="logo"><span>管理员</span><i class="zmdi zmdi-layers"></i></a>
    </div>

    <div class="contain">
        <ul class="am-nav am-navbar-nav am-navbar-left">

            <li><h4 class="page-title">图书</h4></li>
        </ul>
    </div>
</header>
<!-- end page -->


<div class="admin">
    <!-- ========== Left Sidebar Start ========== -->
    <jsp:include page="/admin/includes/nav.jsp"/>
    <!-- ========== Left Sidebar end ========== -->




    <!-- ============================================================== -->
    <!-- Start right Content here -->
    <div class="content-page">
            <!-- Start content -->
            <div class="content">
                <div class="card-box">
                    <!-- row start -->
                    <div class="am-g">
                        <!-- col start -->
                        <div class="am-u-sm-12">
                            <div class="container" role="main">
                                <div class="row justify-content-center">
                                    <%
                                        BookInfo bookInfo=(BookInfo) request.getAttribute("bookInfo");
                                        List<String> imageList=new ArrayList<String>();
                                    %>
                                    出售者ID：<%=bookInfo.getSeller()%><br>
                                    图书编号：<%=bookInfo.getBookId()%><br>
                                    图书名称：<%=bookInfo.getBookName()%><br>
                                    图书价格：<%=bookInfo.getPrice()%>元<br>
                                    图书类别：<%=bookInfo.getTypeId()%><br>
                                    图书简介：<%=bookInfo.getBookText()%><br>
                                    <%
                                        String path=bookInfo.getPath();
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
                                    <br/><br>
                                    <span class="am-input-group-btn">
                                        <button class="am-btn am-btn-default" type="submit" onclick="deleteBook(<%=bookInfo.getBookId()%>)" >删除</button>
                                    </span>
                                </div>
                            </div>

                        </div>
                    </div>
                    <!-- col end -->
                </div>
                <!-- row end -->
            </div>
    </div>
    <!-- end right Content here -->
</div>

<script>//获取用户输入的值，传至后台。
    //改变每页显示记录数的方法
    function deleteBook(BookId){
        //把记录数发送到后台
        var url = "${pageContext.request.contextPath}/admin/deleteBook?BookId="+BookId;
        window.location.href=url;
    }
</script>

<!-- navbar -->
<a href="${pageContext.request.contextPath}/admin/admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>

<jsp:include page="/admin/includes/footer.jsp"/>

</body>

</html>
