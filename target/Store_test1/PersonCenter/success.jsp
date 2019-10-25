<%--
  Created by IntelliJ IDEA.
  User: 1031576719
  Date: 2019/10/18
  Time: 14:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>success</title>
</head>
<body>
    <script charset="UTF-8" type="application/javascript" >
        var flag=${flag};
        if(flag==1){
            alert("密码修改成功！");
            window.location.href="/PersonCenter/infor.jsp";
        }else if(flag==2) {
            alert("密码修改失败！");
            window.location.href="/PersonCenter/infor.jsp";
        }else if(flag==3){
            alert("资料修改成功！");
            window.location.href="/PersonCenter/infor.jsp";
        }else if(flag==4) {
            alert("资料修改失败！");
            window.location.href="/PersonCenter/infor.jsp";
        }
    </script>
</body>
</html>
