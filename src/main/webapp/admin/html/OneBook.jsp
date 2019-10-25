<%@ page import="edu.heuet.Pojo.Admin" %>
<%@ page import="edu.heuet.Pojo.BookInfo" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
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
<!-- Begin page -->
<header class="am-topbar am-topbar-fixed-top">
    <div class="am-topbar-left am-hide-sm-only">
        <a href="../admin.jsp" class="logo"><span>管理员</span><i class="zmdi zmdi-layers"></i></a>
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
        <center>
            <!-- Start content -->
            <div class="content">
                <div class="card-box">
                    <!-- row start -->
                    <div class="am-g">
                        <!-- col start -->
                        <div class="am-u-sm-12">
                                <h4 class="page-title">图书</h4>
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
                                </div>
                            </div>

                        </div>
                    </div>
                        <!-- col end -->
                </div>
                <!-- row end -->
            </div>
        </center>
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

    //获取用户输入的PhoneNum
    var PhoneNum = document.getElementById("PhoneNum").value;
    //判断是否输入的数值
    if(!IsNum(PhoneNum)){
        alert("请输入正确的手机号！");
        return;
    }
    //把记录数发送到后台
    var url = "${pageContext.request.contextPath}/admin/selectBooks?pageSize="+pageSize+"&PhoneNum="+PhoneNum;
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
