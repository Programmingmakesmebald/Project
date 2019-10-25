<%@ page import="edu.heuet.Pojo.Admin" %><%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2019/10/13
  Time: 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <a href="/admin/html/admin.jsp" class="logo"><span>管理员</span><i class="zmdi zmdi-layers"></i></a>
    </div>

    <div class="contain">
        <ul class="am-nav am-navbar-nav am-navbar-left">

            <li><h4 class="page-title">图书</h4></li>
        </ul>

        <ul class="am-nav am-navbar-nav am-navbar-right">
            <li class="inform"><i class="am-icon-bell-o" aria-hidden="true"></i></li>
            <li class="hidden-xs am-hide-sm-only">
                <form role="search" class="app-search">
                    <input type="text" placeholder="用户手机号" class="form-control"  name="PhoneNum" id="PhoneNum"  value="${PhoneNum}" />
                    <a onclick="f()"><img src="../admin/assets/img/search.png"></a>
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
                            <div class="am-input-group am-input-group-sm ">
                                <select id="selectTypeId" class="am-input-group am-input-group-sm">
                                    <option value="">全部类型</option>
                                    <option value="1">语文</option>
                                    <option value="2">数学</option>
                                    <option value="3">英语</option>
                                </select>
                                <span class="am-input-group-btn">
                                    <button class="am-btn am-btn-default" type="submit" onclick="f()" >确定</button>
                                </span>
                            </div>
                        </div>
                    </div>
                    <!-- Row end -->
                    <!-- row start -->
                    <div class="am-g">
                        <!-- col start -->
                        <div class="am-u-sm-12">
                            <c:forEach  var="book" items="${requestScope.pageInfo.list}" >
                                <div class="box">
                                    <div class="box_img">
                                        <a href="/admin/one-book/${book.getBookId()}">
                                            <img src="${book.getImagePath().get(0)}" alt="图片找不到了" width="180px" height="250px"><br>
                                            图书编号:${book.getBookId()}<br>
                                            图书名字:${book.getBookName()}<br>
                                            图书简介:${book.getBookText()}<br>
                                            图书价格:${book.getPrice()}<br>
                                            图书类别编号:${book.getTypeId()}<br>
                                        </a>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <center>
                            <nav aria-label="Page navigation">
                            <ul class="pagination">
                                <li>
                                    <a href="${pageContext.request.contextPath}/admin/selectBooks?page=${1}&pageSize=${pageInfo.pageSize}&PhoneNum=${PhoneNum}">首页</a>
                                </li>
                                <c:if test="${pageInfo.pageNum>1}">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/admin/selectBooks?page=${pageInfo.pageNum-1}&pageSize=${pageInfo.pageSize}&PhoneNum=${PhoneNum}" aria-label="Previous">
                                            <span aria-hidden="true">上一页</span>
                                        </a>
                                    </li>
                                </c:if>
                                <c:forEach begin="${pageInfo.pageNum>2?pageInfo.pageNum-2:1}" end="${pageInfo.pageNum<pageInfo.pages-2?pageInfo.pageNum+2:pageInfo.pages}" var="i">
                                    <c:if test="${pageInfo.pageNum==i}">
                                        <li class="active"> <a href="${pageContext.request.contextPath}/admin/selectBooks?PhoneNum=${PhoneNum}&pageSize=${pageInfo.pageSize}&page=${i}">${i}</a></li>
                                    </c:if>
                                    <c:if test="${pageInfo.pageNum!=i}">
                                        <li> <a href="${pageContext.request.contextPath}/admin/selectBooks?PhoneNum=${PhoneNum}&pageSize=${pageInfo.pageSize}&page=${i}">${i}</a></li>
                                    </c:if>
                                </c:forEach>
                                <c:if test="${pageInfo.pageNum<pageInfo.pages}">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/admin/selectBooks?page=${pageInfo.pageNum+1}&pageSize=${pageInfo.pageSize}&PhoneNum=${PhoneNum}" aria-label="Next">
                                            <span aria-hidden="true">下一页</span>
                                        </a>
                                    </li>
                                </c:if>
                                <li>
                                    <a href="${pageContext.request.contextPath}/admin/selectBooks?page=${pageInfo.pages}&pageSize=${pageInfo.pageSize}&PhoneNum=${PhoneNum}">末尾</a>
                                </li>
                                <li>
                                    <a>共${pageInfo.pages}页</a>
                                </li>
                                <li>
                                    <a>每页显示 <input type="text" name="pageSize" id="pageSize" size="2" value="${pageInfo.pageSize }" onblur="f()"/> 条</a>
                                </li>
                            </ul>
                        </nav>
                        </center>
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
    function f(){
        //获取用户输入的记录数PageSize
        var pageSize = document.getElementById("pageSize").value;
        //判断是否输入的数值
        if(!IsNum(pageSize)){
            alert("请输入正确的数值！");
            return;
        }

        //获取用户输入的selectValue
        var obj = document.getElementById("selectTypeId"); //定位id
        var index = obj.selectedIndex; // 选中索引
        var selectValue = obj.options[index].value; // 选中值

        // 获取用户输入的PhoneNum
        var PhoneNum = document.getElementById("PhoneNum").value;
        //判断是否输入的数值
        if(!IsNum(PhoneNum)){
            alert("请输入正确的手机号！");
            return;
        }
        //把记录数发送到后台
        var url = "${pageContext.request.contextPath}/admin/selectBooks?pageSize="+pageSize+"&PhoneNum="+PhoneNum+"&selectValue="+selectValue;
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
