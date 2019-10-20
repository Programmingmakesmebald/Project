<%@ page import="edu.heuet.Pojo.Admin" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2019/10/10
  Time: 13:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>后台管理员</title>
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.css" >
    <link rel="stylesheet" href="../assets/css/amazeui.css" />
    <link rel="stylesheet" href="../assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/css/core.css" />
    <link rel="stylesheet" href="../assets/css/menu.css" />
    <link rel="stylesheet" href="../assets/css/index.css" />
    <link rel="stylesheet" href="../assets/css/admin.css" />
    <link rel="stylesheet" href="../assets/css/page/typography.css" />
    <link rel="stylesheet" href="../assets/css/page/form.css" />

</head>
<body>
<%
    Admin admin=(Admin) request.getAttribute("admin");
    session=request.getSession();
%>
<!-- Begin page -->
<header class="am-topbar am-topbar-fixed-top">
    <div class="am-topbar-left am-hide-sm-only">
        <a href="admin.jsp" class="logo"><span>管理员</span><i class="zmdi zmdi-layers"></i></a>
    </div>

    <div class="contain">
        <ul class="am-nav am-navbar-nav am-navbar-left">

            <li><h4 class="page-title">订单</h4></li>
        </ul>

        <ul class="am-nav am-navbar-nav am-navbar-right">
            <li class="inform"><i class="am-icon-bell-o" aria-hidden="true"></i></li>
            <li class="hidden-xs am-hide-sm-only">
                <form role="search" class="app-search">
                    <input type="text" placeholder="用户手机号" class="form-control"  name="PhoneNum" id="PhoneNum"  value="${PhoneNum}" />
                    <a onclick="f()"><img src="../assets/img/search.png"></a>
                </form>
            </li>
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
                    <img src="../assets/img/avatar-1.jpg" alt="user-img" title="Mat Helme" class="img-circle img-thumbnail img-responsive">
                    <div class="user-status offline"><i class="am-icon-dot-circle-o" aria-hidden="true"></i></div>
                </div>
                <h5><%=session.getAttribute("AdminName") %></h5>
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
                <li><a href="/admin.jsp"><span class="am-icon-home"></span> 首页</a></li>
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
        <center>
        <!-- Start content -->
        <div class="content">
            <div class="card-box">
                <!-- row start -->
                <div class="am-g">
                    <!-- col start -->
                    <div class="am-u-sm-12 ">
                            <h4 class="page-title">历史订单</h4>
                            <table class="am-table am-table-bordered">
                                <thead>
                                <tr>
                                    <th>订单编号</th>
                                    <th>买家编号</th>
                                    <th>卖家编号</th>
                                    <th>图书编号</th>
                                    <th>订单状态</th>
                                    <th>交易价格</th>
                                    <th>交易时间</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${pageInfo.list}" var="d" >
                                    <tr>
                                        <td>${d.getOrderId()}</td>
                                        <td>${d.getBuyer()}</td>
                                        <td>${d.getSeller()}</td>
                                        <td>${d.getBookId()}</td>
                                        <td>${d.getOrderState()}</td>
                                        <td>${d.getPrice()}</td>
                                        <td>${d.getOrderTime()}</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                                <nav aria-label="Page navigation">
                                    <ul class="pagination">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/admin/selectOrders?page=${1}&pageSize=${pageInfo.pageSize}&PhoneNum=${PhoneNum}">首页</a>
                                        </li>
                                        <c:if test="${pageInfo.pageNum>1}">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/admin/selectOrders?page=${pageInfo.pageNum-1}&pageSize=${pageInfo.pageSize}&PhoneNum=${PhoneNum}" aria-label="Previous">
                                                    <span aria-hidden="true">上一页</span>
                                                </a>
                                            </li>
                                        </c:if>
                                        <c:forEach begin="${pageInfo.pageNum>2?pageInfo.pageNum-2:1}" end="${pageInfo.pageNum<pageInfo.pages-2?pageInfo.pageNum+2:pageInfo.pages}" var="i">
                                            <c:if test="${pageInfo.pageNum==i}">
                                                <li class="active"> <a href="${pageContext.request.contextPath}/admin/selectOrders?PhoneNum=${PhoneNum}&pageSize=${pageInfo.pageSize}&page=${i}">${i}</a></li>
                                            </c:if>
                                            <c:if test="${pageInfo.pageNum!=i}">
                                                <li> <a href="${pageContext.request.contextPath}/admin/selectOrders?PhoneNum=${PhoneNum}&pageSize=${pageInfo.pageSize}&page=${i}">${i}</a></li>
                                            </c:if>
                                        </c:forEach>
                                        <c:if test="${pageInfo.pageNum<pageInfo.pages}">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/admin/selectOrders?page=${pageInfo.pageNum+1}&pageSize=${pageInfo.pageSize}&PhoneNum=${PhoneNum}" aria-label="Next">
                                                    <span aria-hidden="true">下一页</span>
                                                </a>
                                            </li>
                                        </c:if>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/admin/selectOrders?page=${pageInfo.pages}&pageSize=${pageInfo.pageSize}&PhoneNum=${PhoneNum}">末尾</a>
                                        </li>
                                        <li>
                                            <a>共${pageInfo.pages}页</a>
                                        </li>
                                        <li>
                                            <a>每页显示 <input type="text" name="pageSize" id="pageSize" size="2" value="${pageInfo.pageSize }" onblur="f()"/> 条</a>
                                        </li>
                                    </ul>
                                </nav>

                    </div>
                </div>
                    <!-- col end -->
            </div>
            <!-- row end -->
        </div>
        </center>
    </div>
    <!-- end right Content here -->
    <!--</div>-->
</div>
</div>

<script>//获取用户输入的值，传至后台。
    //改变每页显示记录数的方法
    function f(){
        //获取用户输入的记录数PageSize
        var pageSize = document.getElementById("pageSize").value;
        //判断是否输入的数值
        if(!IsNum(pageSize)){
            alert("请输入正确的数值！");
            return;
        }

        //获取用户输入的PhoneNum
        var PhoneNum = document.getElementById("PhoneNum").value;
        //判断是否输入的数值
        if(!IsNum(PhoneNum)){
            alert("请输入正确的手机号！");
            return;
        }
        //把记录数发送到后台
        var url = "${pageContext.request.contextPath}/admin/selectOrders?pageSize="+pageSize+"&PhoneNum="+PhoneNum;
        window.location.href=url;
    }
    function IsNum(num){
        var reNum=/^\d*$/;
        return(reNum.test(num));
    }
</script>

<!-- navbar -->
<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>

<script type="text/javascript" src="../assets/js/jquery-2.1.0.js" ></script>
<script type="text/javascript" src="../assets/js/amazeui.min.js"></script>
<script type="text/javascript" src="../assets/js/app.js" ></script>
<script type="text/javascript" src="../assets/js/blockUI.js" ></script>
<script src="/bootstrap/jquery-3.4.0.min.js"></script>
<script src="/bootstrap/js/bootstrap.js"></script>



</body>

</html>
