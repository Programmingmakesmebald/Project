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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/amazeui.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/core.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/menu.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/index.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/admin.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/page/typography.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/assets/css/page/form.css" />
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
    <!--<div class="am-g">-->
    <!-- ========== Left Sidebar Start ========== -->
    <!--<div class="left side-menu am-hide-sm-only am-u-md-1 am-padding-0">
        <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 548px;">
            <div class="sidebar-inner slimscrollleft" style="overflow: hidden; width: auto; height: 548px;">-->
    <!-- sidebar start -->
    <div class="admin-sidebar am-offcanvas  am-padding-0" id="admin-offcanvas">
        <div class="am-offcanvas-bar admin-offcanvas-bar">
            <!-- User -->
            <div class="user-box am-hide-sm-only">
                <div class="user-img">
                    <img src="${pageContext.request.contextPath}/admin/assets/img/avatar-1.jpg" alt="user-img" title="Mat Helme" class="img-circle img-thumbnail img-responsive">
                    <div class="user-status offline"><i class="am-icon-dot-circle-o" aria-hidden="true"></i></div>
                </div>
                <h5><%=request.getSession().getAttribute("AdminName") %></h5>
                <ul class="list-inline">
                    <li>
                        <a href="#">
                            <i class="am-icon-cog" aria-hidden="true"></i>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="text-custom">
                            <i class="am-icon-cog" aria-hidden="true"></i>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- End User -->

            <ul class="am-list admin-sidebar-list">
                <li><a href="${pageContext.request.contextPath}/admin/admin.jsp"><span class="am-icon-home"></span> 首页</a></li>
                <li class="admin-parent">
                    <a class="am-cf" data-am-collapse="{target: '#collapse-nav1'}"><span class="am-icon-table"></span> 用户 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                    <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav1">
                        <li><a href="/admin/selectUsers" class="am-cf">查询用户</a></li>
                    </ul>
                </li>
                <li class="admin-parent">
                    <a class="am-cf" data-am-collapse="{target: '#collapse-nav2'}"><i class="am-icon-line-chart" aria-hidden="true"></i> 图书 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                    <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav2">
                        <li><a href="/admin/selectBooks" class="am-cf"> 查询图书</a></li>
                    </ul>
                </li>
                <li class="admin-parent">
                    <a class="am-cf" data-am-collapse="{target: '#collapse-nav5'}"><span class="am-icon-file"></span> 订单 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                    <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav5">
                        <li><a href="/admin/selectOrders" class="am-cf"> 查询订单</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!-- sidebar end -->

    <!--</div>
</div>
</div>-->
    <!-- ========== Left Sidebar end ========== -->



    <!--	<div class="am-g">-->
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
    <!--</div>-->
</div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/assets/js/jquery-2.1.0.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/assets/js/amazeui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/assets/js/app.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/assets/js/blockUI.js" ></script>
<script src="${pageContext.request.contextPath}/bootstrap/jquery-3.4.0.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>

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





</body>

</html>
