<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: pc
  Date: 2019/9/23
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>全部订单</title>
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.css" >
    <script src="/bootstrap/jquery-3.4.0.min.js"></script>
    <script src="/bootstrap/js/bootstrap.js"></script>

</head>
    <body>
        <center>
            <div >
                <nav aria-label="Page navigation">
                    <ul class="pagination">
                        <li>
                            <a>买家编号: <input type="text" name="Buyer" id="Buyer"  value="${Buyer}" onblur="f()"/> </a>
                        </li>
                    </ul>
                </nav>
            </div>
            全部订单
            <!-- 分页页码部分 -->
            <table border="1" width="500">
                <tr>
                    <td>订单编号</td>
                    <td>买家编号</td>
                    <td>卖家编号</td>
                    <td>图书编号</td>
                    <td>订单状态</td>
                    <td>交易价格</td>
                    <td>交易时间</td>
                </tr>

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
            </table>
            <br/>
            <div >
                <nav aria-label="Page navigation">
                    <ul class="pagination">
                        <li>
                            <a href="${pageContext.request.contextPath}/order/selectOrder?page=${1}&pageSize=${pageInfo.pageSize}&Buyer=${Buyer}">首页</a>
                        </li>
                        <c:if test="${pageInfo.pageNum>1}">
                            <li>
                                <a href="${pageContext.request.contextPath}/order/selectOrder?page=${pageInfo.pageNum-1}&pageSize=${pageInfo.pageSize}&Buyer=${Buyer}" aria-label="Previous">
                                    <span aria-hidden="true">上一页</span>
                                </a>
                            </li>
                        </c:if>
                        <c:forEach begin="${pageInfo.pageNum>2?pageInfo.pageNum-2:1}" end="${pageInfo.pageNum<pageInfo.pages-2?pageInfo.pageNum+2:pageInfo.pages}" var="i">
                            <c:if test="${pageInfo.pageNum==i}">
                                <li class="active"> <a href="${pageContext.request.contextPath}/order/selectOrder?Buyer=${Buyer}&pageSize=${pageInfo.pageSize}&page=${i}">${i}</a></li>
                            </c:if>
                            <c:if test="${pageInfo.pageNum!=i}">
                                <li> <a href="${pageContext.request.contextPath}/order/selectOrder?Buyer=${Buyer}&pageSize=${pageInfo.pageSize}&page=${i}">${i}</a></li>
                            </c:if>
                        </c:forEach>
                        <c:if test="${pageInfo.pageNum<pageInfo.pages}">
                            <li>
                                <a href="${pageContext.request.contextPath}/order/selectOrder?page=${pageInfo.pageNum+1}&pageSize=${pageInfo.pageSize}&Buyer=${Buyer}" aria-label="Next">
                                    <span aria-hidden="true">下一页</span>
                                </a>
                            </li>
                        </c:if>
                        <li>
                            <a href="${pageContext.request.contextPath}/order/selectOrder?page=${pageInfo.pages}&pageSize=${pageInfo.pageSize}&Buyer=${Buyer}">末尾</a>
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
        </center>
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

            //获取用户输入的记录数stuAge
            var Buyer = document.getElementById("Buyer").value;
            //判断是否输入的数值
            if(!IsNum(Buyer)){
                alert("请输入正确的订单编号！");
                return;
            }
            //把记录数发送到后台
            var url = "${pageContext.request.contextPath}/order/selectOrder?pageSize="+pageSize+"&Buyer="+Buyer;
            window.location.href=url;
        }
        function IsNum(num){
            var reNum=/^\d*$/;
            return(reNum.test(num));
        }
        </script>
    </body>
</html>
