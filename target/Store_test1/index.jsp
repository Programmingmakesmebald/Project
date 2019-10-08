<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>

欢迎光临！
<%if(session.getAttribute("user")!=null){
out.print(session.getAttribute("UserName"));
    }else {
%><a href="jsp/login.jsp">请先登录</a>,<span>没有账号？那先<a href="jsp/register.jsp">注册吧</a></span><%
}%>
<br/>
<span><a href="">查看我的售卖记录</a></span>
<br/>
<h2>你没有看错 我就是主页！！！！</h2>
<br/>
<br/>
点我进去商品页<span>立即<a href="/book/main">查看图书信息</a></span>
<br/>
<br/>
<a href="/jsp/buy-sell/sell.jsp">我要卖书</a>
<br/>
<a href="/cart/showCartByPage"> 查看我的购物车</a>
</body>
</html>
