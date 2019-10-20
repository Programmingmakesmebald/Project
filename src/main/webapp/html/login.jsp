<%@ page import="edu.heuet.Util.CookieUtils" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="../assets/css/core.css" />
    <link rel="stylesheet" href="../assets/css/menu.css" />
    <link rel="stylesheet" href="../assets/css/amazeui.css" />
    <link rel="stylesheet" href="../assets/css/component.css" />
    <link rel="stylesheet" href="../assets/css/page/form.css" />

</head>
<body >
<div class="account-pages">
    <div class="wrapper-page">
        <div class="text-center">
            <a class="logo"><span>管理员</span></a>
        </div>

        <div class="m-t-40 card-box">
            <div class="text-center">
                <h4 class="text-uppercase font-bold m-b-0">登 录</h4>
            </div>
            <div class="panel-body">
                <div class="am-form-group" ${message==null?"style='display: none'":""} >
                    ${message}
                </div>
                    <%--      两种方法显示提示信息       --%>
                <c:if test="${message!=null}">
                    <div class="am-form-group" >
                        ${message}
                    </div>
                </c:if>
                <form class="am-form" action="/admin/login" method="post" onsubmit="return login(this)">
                    <div class="am-g">
                        <div class="am-form-group">
                            <input type="text" class="am-radius" name="AdminNum"  placeholder="手机号" ID="txtUserName" value="${sjh}" >
                        </div>

                        <div class="am-form-group form-horizontal m-t-20">
                            <input type="password" class="am-radius" name="APassword"  placeholder="密码" ID="txtPassword" value="${miMa}">
                        </div>

                        <div class="am-form-group ">
                            <label style="font-weight: normal;color: #999;">
                                <input id="remember_password" name="isRemember" type="checkbox" class="remeber" ${Remember==true?"checked":""}> 记住我
                            </label>
                        </div>
                        <div class="am-form-group ">
<%--                            <button type="button" class="am-btn am-btn-primary am-radius" style="width: 100%;height: 100%;" onclick="javascript:document.getElementById('login').click();">登录</button>--%>
                            <input type="submit" class="am-btn am-btn-primary am-radius"style="width: 100%;height: 100%;" value="登录"  >
                        </div><%--javascript:document.getElementById('login').click();--%>
<%--                        <input type="submit" id="login"   style="display:none"/>--%>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>
</body>
<script >
    function login(form){
        for(i=0;i<form.length;i++) {
            for(i=0;i<form.length;i++) {
                if(form.elements[i].value=="")
                {
                    alert("亲："+form.elements[i].placeholder+"不能为空");
                    form.elements[i].focus();
                    return false;
                }
            }
        }
    }
</script>
</html>

