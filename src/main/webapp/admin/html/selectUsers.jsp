<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="edu.heuet.Pojo.Admin" %><%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2019/10/10
  Time: 14:37
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
<%
    Admin admin=(Admin) request.getAttribute("admin");
    session=request.getSession();
%>
<!-- Begin page -->
<header class="am-topbar am-topbar-fixed-top">
    <div class="am-topbar-left am-hide-sm-only">
        <a href=/admin/admin.jsp" class="logo"><span>管理员</span><i class="zmdi zmdi-layers"></i></a>
    </div>

    <div class="contain">
        <ul class="am-nav am-navbar-nav am-navbar-left">

            <li><h4 class="page-title">用户</h4></li>
        </ul>

        <ul class="am-nav am-navbar-nav am-navbar-right">
            <li class="inform"><i class="am-icon-bell-o" aria-hidden="true"></i></li>
            <li class="hidden-xs am-hide-sm-only">
                <form role="search" class="app-search">
                    <input type="text" placeholder="用户ID" class="form-control"  name="UserId" id="UserId"  value="${UserId}">
                    <a onclick="UserId()"><img src="../admin/assets/img/search.png"></a>
                </form>
            </li>
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
                <!-- Row start -->

                    <div class="am-g" >
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-input-group am-input-group-sm">
                                <input type="text" class="am-form-field" name="PhoneNum" id="PhoneNum" value="${PhoneNum}" placeholder="用户手机号">
                                <span class="am-input-group-btn">
                                    <button class="am-btn am-btn-default" type="submit" onclick="PhoneNum()" >搜索</button>
                                </span>
                            </div>
                        </div>
                    </div>
                <!-- Row end -->

                <!-- Row start -->
                <div class="am-g">
                    <div class="am-u-sm-12">
                        <form class="am-form">
                            <table class="am-table am-table-striped am-table-hover table-main">
                                <thead>
                                <tr>
                                    <th class="table-id">ID</th>
                                    <th class="table-title">姓名</th>
                                    <th class="table-type">手机号</th>
                                    <th class="table-author am-hide-sm-only">密码</th>
                                    <th class="table-date am-hide-sm-only">学校</th>
                                    <th class="table-set">信用分</th>
                                    <th class="table-set">操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <% int k=0;%>
                                <c:forEach items="${pageInfo.list}" var="user" >
                                    <% k++;%>
                                    <tr>
                                        <td>${user.getUserId()}</td>
                                        <td>${user.getUserName()}</td>
                                        <td id="punishNum">${user.getPhoneNum()}</td>
                                        <td>${user.getLPassword()}</td>
                                        <td>${user.getSchool()}</td>
                                        <td id="Credit">${user.getCredit()}</td>
                                        <td>
                                            <div class="am-btn-toolbar">
                                                <div class="am-btn-group am-btn-group-xs">
                                                    <button onclick="Punish(${user.getPhoneNum()},${user.getCredit()})" class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 处罚</button>
                                                    <button onclick="Blacklist(${user.getPhoneNum()},${user.getCredit()})" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 黑名单</button>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <div class="am-cf">
                                共${pageInfo.total}条记录
                                <div class="am-fr">
                                    <ul class="am-pagination">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/admin/selectUsers?page=${1}&PhoneNum=${PhoneNum}">首页</a>
                                        </li>
                                        <c:if test="${pageInfo.pageNum>1}">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/admin/selectUsers?page=${pageInfo.pageNum-1}&PhoneNum=${PhoneNum}" aria-label="Previous">
                                                    <span aria-hidden="true">上一页</span>
                                                </a>
                                            </li>
                                        </c:if>
                                        <c:forEach begin="${pageInfo.pageNum>2?pageInfo.pageNum-2:1}" end="${pageInfo.pageNum<pageInfo.pages-2?pageInfo.pageNum+2:pageInfo.pages}" var="i">
                                            <c:if test="${pageInfo.pageNum==i}">
                                                <li class="active"> <a href="${pageContext.request.contextPath}/admin/selectUsers?PhoneNum=${PhoneNum}&page=${i}">${i}</a></li>
                                            </c:if>
                                            <c:if test="${pageInfo.pageNum!=i}">
                                                <li> <a href="${pageContext.request.contextPath}/admin/selectUsers?PhoneNum=${PhoneNum}&page=${i}">${i}</a></li>
                                            </c:if>
                                        </c:forEach>
                                        <c:if test="${pageInfo.pageNum<pageInfo.pages}">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/admin/selectUsers?page=${pageInfo.pageNum+1}&PhoneNum=${PhoneNum}" aria-label="Next">
                                                    <span aria-hidden="true">下一页</span>
                                                </a>
                                            </li>
                                        </c:if>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/admin/selectUsers?page=${pageInfo.pages}&PhoneNum=${PhoneNum}">末尾</a>
                                        </li>
                                        <li>
                                            <a>共${pageInfo.pages}页</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <hr />
                        </form>
                    </div>

                </div>
                <!-- Row end -->

            </div>
        </div>

    </div>
<!-- end right Content here -->
</div>
    <script>
        function Punish(punishNum,Credit){
            // var td_content = $(obj).parents("tr").children("td");  //获取当前行中的所有td值
            // var punishNum = td_content.eq(2).text(); //获取当前行第一个td的值
            // var Credit = td_content.eq(5).text(); //获取当前行第二个td的值
            // alert(punishNum);
            // alert(Credit);
            var url = "${pageContext.request.contextPath}/admin/punishUser?punishNum="+punishNum+"&Credit="+Credit;
            window.location.href=url;
        }
        function Blacklist(punishNum,Credit){
            var url = "${pageContext.request.contextPath}/admin/Blacklist?punishNum="+punishNum+"&Credit="+Credit;
            window.location.href=url;
        }
        function Delete(punishNum){
            var url = "${pageContext.request.contextPath}/admin/Delete?punishNum="+punishNum;
            window.location.href=url;
        }
    </script>
    <script>//获取用户输入的值，传至后台。
        //改变每页显示记录数的方法
        function PhoneNum(){
            //获取用户输入的PhoneNum
            var PhoneNum = document.getElementById("PhoneNum").value;
            //判断是否输入的数值
            if(!IsNum(PhoneNum)){
                alert("请输入正确的手机号！");
                return;
            }
            //把记录数发送到后台
            var url = "${pageContext.request.contextPath}/admin/selectUsers?&PhoneNum="+PhoneNum;
            window.location.href=url;
        }
        function UserId(){
            //获取用户输入的PhoneNum
            var UserId = document.getElementById("UserId").value;
            //判断是否输入的数值
            if(!IsNum(UserId)){
                alert("请输入正确的ID！");
                return;
            }
            //把记录数发送到后台
            var url = "${pageContext.request.contextPath}/admin/selectUsersByUserId?&UserId="+UserId;
            window.location.href=url;
        }
        function IsNum(num){
            var reNum=/^\d*$/;
            return(reNum.test(num));
        }
    </script>
<!-- navbar -->
<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>

<jsp:include page="/admin/includes/footer.jsp"/>

</body>

</html>

