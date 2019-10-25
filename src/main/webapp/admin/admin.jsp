<%@ page import="edu.heuet.Pojo.Admin" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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
    <jsp:include page="/admin/includes/nav-header.jsp"/>
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
            <div class="am-g">
                <!-- Row start -->
                <div class="am-u-md-3">
                    <div class="card-box">
                        <h4 class="header-title m-t-0 m-b-30">总收入</h4>
                        <div class="widget-chart-1 am-cf">
                            <div id="widget-chart-box-1" style="height: 110px;width: 110px;float: left;">
                            </div>

                            <div class="widget-detail-1" style="float: right;">
                                <h2 class="p-t-10 m-b-0"> 256 </h2>
                                <p class="text-muted">今日收入</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- col end -->
                <div class="am-u-md-3">
                    <div class="card-box">
                        <h4 class="header-title m-t-0 m-b-30">销售分析</h4>
                        <div class="widget-box-2">
                            <div class="widget-detail-2">
                                <span class="badge  pull-left m-t-20  am-round" style="color: #fff; background: #0e90d2;">32% <i class="zmdi zmdi-trending-up"></i> </span>
                                <h2 class="m-b-0"> 8451 </h2>
                                <p class="text-muted m-b-25">Revenue today</p>
                            </div>
                            <div class="am-progress am-progress-xs am-margin-bottom-0">
                                <div class="am-progress-bar" style="width: 80%"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- col end -->
                <div class="am-u-md-3">
                    <div class="card-box">
                        <h4 class="header-title m-t-0 m-b-30">总收入</h4>
                        <div class="widget-chart-1 am-cf">
                            <div id="widget-chart-box-2" style="height: 110px;width: 110px;float: left;">
                            </div>

                            <div class="widget-detail-1" style="float: right;">
                                <h2 class="p-t-10 m-b-0"> 256 </h2>
                                <p class="text-muted">今日收入</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- col end -->
                <div class="am-u-md-3">
                    <div class="card-box">
                        <h4 class="header-title m-t-0 m-b-30">销售分析</h4>
                        <div class="widget-box-2">
                            <div class="widget-detail-2">
                                <span class="badge  pull-left m-t-20  am-round progress-bar-pink" style="color: #fff;">32% <i class="zmdi zmdi-trending-up"></i> </span>
                                <h2 class="m-b-0"> 8451 </h2>
                                <p class="text-muted m-b-25">Revenue today</p>
                            </div>
                            <div class="am-progress am-progress-xs am-margin-bottom-0" style="background: rgba(255, 138, 204, 0.2);">
                                <div class="am-progress-bar progress-bar-pink" style="width: 80%"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Row end -->
            </div>

            <div class="am-g">
                <!-- Row start -->
                <div class="am-u-md-4">
                    <div class="card-box">
                        <h4 class="header-title m-t-0">环形图</h4>
                        <div id="index-pie-1" style="height: 345px;height: 300px;"></div>
                    </div>
                </div>

                <div class="am-u-md-4">
                    <div class="card-box">
                        <h4 class="header-title m-t-0">环形图</h4>
                        <div id="index-bar-1" style="height: 345px;height: 300px;"></div>
                    </div>
                </div>

                <div class="am-u-md-4">
                    <div class="card-box">
                        <h4 class="header-title m-t-0">环形图</h4>
                        <div id="index-line-1" style="height: 345px;height: 300px;"></div>
                    </div>
                </div>
                <!-- Row end -->
            </div>
        </div>
    </div>
    <!-- end right Content here -->
</div>

<!-- navbar -->
<a href="/admin/admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>

<jsp:include page="/admin/includes/footer.jsp"/>

</body>

</html>

