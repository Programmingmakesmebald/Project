<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- ========== Left Sidebar Start ========== -->
<div class="admin-sidebar am-offcanvas  am-padding-0" id="admin-offcanvas">
    <div class="am-offcanvas-bar admin-offcanvas-bar">
        <!-- User -->
        <div class="user-box am-hide-sm-only">
            <div class="user-img">
                <img src="/admin/assets/img/avatar-1.jpg" alt="user-img" title="Mat Helme" class="img-circle img-thumbnail img-responsive">
                <div class="user-status offline"><i class="am-icon-dot-circle-o" aria-hidden="true"></i></div>
            </div>
            <h5>${sessionScope.AdminName}</h5>
            <ul class="list-inline">
                <li>
                    <a href="#">
                        <i class="fa fa-cog" aria-hidden="true"></i>
                    </a>
                </li>

                <li>
                    <a href="#" class="text-custom">
                        <i class="fa fa-cog" aria-hidden="true"></i>
                    </a>
                </li>
            </ul>
        </div>
        <!-- End User -->

        <ul class="am-list admin-sidebar-list">
            <li><a href="/admin/admin.jsp"><span class="am-icon-home"></span> 首页</a></li>
            <li class="admin-parent">
                <a class="am-cf" data-am-collapse="{target: '#collapse-nav1'}"><span class="am-icon-table"></span> 用户 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav1">
                    <li><a href="/admin/selectUsers">查询用户</a></li>
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
<!-- ========== Left Sidebar end ========== -->