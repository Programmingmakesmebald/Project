<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>个人中心--xun书网</title>
	<link href="/PersonCenter/img/icon.png" rel="icon" type="image/x-ico">
</head>
 
<body>

<link href="/PersonCenter/css/mydd_head.css" rel="stylesheet" type="text/css">
<link href="/PersonCenter/css/mydd_public.css" rel="stylesheet" type="text/css">
<link href="/PersonCenter/css/mydd_title.css" rel="stylesheet" type="text/css">
<link href="/PersonCenter/css/mydd_leftnavi.css" rel="stylesheet" type="text/css">
<link href="/PersonCenter/css/mydd_foot.css" rel="stylesheet" type="text/css">
<link href="/PersonCenter/css/order_info.css" rel="stylesheet" type="text/css">
<script type="application/javascript"></script>
<link href="/PersonCenter/css/header_150803.css" rel="stylesheet" type="text/css">
<script charset="gb2312" type="text/javascript">var width = 0; narrow = 1;</script>
<script src="/PersonCenter/js/pagetop2015.js" charset="gb2312" type="text/javascript" ></script>
<script src="/PersonCenter/js/dd.menu-aim.js" charset="gb2312" type="text/javascript" ></script>
<script src="/PersonCenter/js/infor.js" type="application/javascript" charset="UTF-8" ></script>

<div id="hd">
	<div id="tools">
		<div class="tools">
			<div class="ddnewhead_operate" dd_name="顶链接">
				<ul class="ddnewhead_operate_nav">
					<li class="my_dd"><a id="a_myddchannel" class="menu_btn" target="_blank" href="/PersonCenter/infor.jsp" name="我的当当" dd_name="我的当当" onmouseover="showgaoji('a_myddchannel','__ddnav_mydd')" onmouseout="hideotherchannel('a_myddchannel','__ddnav_mydd');">个人中心</a>
						<ul class="ddnewhead_gcard_list" id="__ddnav_mydd" onmouseover="showgaoji('a_myddchannel','__ddnav_mydd')" onmouseout="hideotherchannel('a_myddchannel','__ddnav_mydd');" style="display: nonr;width: 83px;">
							<li><a target="_blank" href="/PersonCenter/order.html" name="mydd_7" dd_name="新_我的订单">我的订单</a></li>
							<li><a target="_blank" href="#购物车链接" name="mydd_8" dd_name="新_购物车" rel="nofollow">购物车</a></li>
						</ul>
					</li>
					<li><a target="_blank" href="#上传卖书链接"  dd_name="我要出书">我要卖书</a></li>
					<li class="hover "><a id="a_bzzxchannel" class="menu_btn" href="#服务中心链接" style="cursor:default;" name="ddkf_0" dd_name="客户服务" onmouseover="showgaoji('a_bzzxchannel','__ddnav_bzzx');" onmouseout="hideotherchannel('a_bzzxchannel','__ddnav_bzzx');">客户服务</a>
					<ul class="ddnewhead_gcard_list" id="__ddnav_bzzx" onmouseover="showgaoji('a_bzzxchannel','__ddnav_bzzx');" onmouseout="hideotherchannel('a_bzzxchannel','__ddnav_bzzx');">
						<li><a target="_blank" href="#联系客服链接" name="ddkf_4" dd_name="联系客服">联系客服</a></li>           
					</ul>
					</li>
				</ul>
				<div class="ddnewhead_welcome" display="none;">
					<span><a href="/massage/GetMassage">我的消息</a></span>
					<span id=""><span class="hi hi_none">欢迎光临小xun,
                    <%if(session.getAttribute("user")!=null){
						out.print(session.getAttribute("UserName"));
					%> &nbsp; <span><a href="/user/unlogin">退出</a></span><%
						}else {
						%></span><a href="../index/login.jsp" class="login_link">登录</a><a href="../index/regist.jsp">免费注册</a></span><%
					}%>
				</div>
				<div class="new_head_znx" id="znx_content" style="display:none;"></div>
			</div>
		</div>
	</div>
	<div id="header_end"></div>
	<div class="logo_line_out" style="position:relative;">
		<div class="logo_line" dd_name="搜索框">
			<div class="logo">
				<img src="/PersonCenter/img/logo.png" usemap="#logo_link">
				<map id="logo_link" name="logo_link" dd_name="logo区">
					<area shape="rect" coords="0,18,200,93" href="#首页链接" title="小xun" onfocus="this.blur()">
					<area shape="rect" coords="200,18,320,93" href="#首页链接" title="" target="_blank" onfocus="this.blur();">		
				</map>
			</div>
			<div class="search">
				<form id="form_search_new" action="#处理搜索的网页" name="searchform" onsubmit="return searchsubmit();" method="get">
					<input placeholder="请输入要搜索的内容" id="key_s" class="text gray" type="text" name="key" autocomplete="off" onclick="key_onclick(event);" onfocus="key_onfocus(event);" onblur="key_onblur();" onbeforepaste="onpaste_search();">
					<a class="del-keywords" href="javascript:void(0);" onclick="clearkeys();"></a>
					<input class="button" type="button" dd_name="搜索按钮" onclick="javascript:document.getElementById('search_btn').click();">
				</form>
			</div>
			<div class="search_bottom">
				<div class="search_hot">
					热搜：
					<a href="#" name="hotword" target="_blank">高数</a>
					<a href="#" name="hotword" target="_blank">Java</a>
					<a href="#" name="hotword" target="_blank">英语四级</a>
					<a href="#" name="hotword" target="_blank">教师资格证</a>
					<a href="#" name="hotword" target="_blank">英语六级</a>
					<a href="#" name="hotword" target="_blank">西方经济学</a>
				</div>
			</div>
			<div class="ddnew_cart">
				<a href="#" name="购物车" dd_name="购物车">
					<i class="icon_card"></i>购物车
				</a>
			</div>
			<div class="ddnew_order">
				<a target="_blank" href="/PersonCenter/myorder.jsp" name="我的订单" dd_name="我的订单" rel="nofollow">我的订单
					<b id="unpaid_num" style="color:#ff2832;font: bold 12px Arial;"></b>
				</a>
			</div>
		</div>
	</div>
	<div class="nav_top" dd_name="一级导航条">
		<div class="nav_top">
			<ul>
				<li class="all">
					<a id="a_category" class="sort_button" href="#" name="cate" dd_name="全部商品分类" target="_blank">全部商品分类</a>
				</li>
				<li><a  name="nav1" href="#" target="_blank">通用图书</a></li>
				<li><a  name="nav1" href="#" target="_blank">专业图书</a></li>
				<li><a  name="nav1" href="#" target="_blank">热门考试</a></li>
				<li><a  name="nav1" href="#" target="_blank">文学社科</a></li>
				<li><a  name="nav1" href="#" target="_blank">杂志新闻</a></li>
			</ul>
		</div>
	</div>
	<div class="sub">
		<ul>
			<li><a name="nav2" target="_blank" href="#">计算机二级</a></li>
			<li><a name="nav2" target="_blank" href="#">考研英语</a></li>
			<li><a name="nav2" target="_blank" href="#">专业书</a></li>
			<li><a name="nav2" target="_blank" href="#">小说</a></li>
			<li><a name="nav2" target="_blank" href="#">杂志新闻</a></li>
			<li><a name="nav2" target="_blank" href="#">线代</a></li>
			<li><a name="nav2" target="_blank" href="#">会计证</a></li>
			<li><a name="nav2" target="_blank" href="#">思政书</a></li>
		</ul>
	</div>
</div>
<link href="/PersonCenter/css/rightSidebar.css" rel="stylesheet" type="text/css">
<div id="J_muneAndContentWrap" class="mydang">
	<div class="my_left" id="myLeftMenu">
		<link href="/PersonCenter/css/menu.css" rel="stylesheet" type="text/css">
		<div class="my_menu">
			<h3 class="my_menu_title"><a id="J_myhomeBtn" href="/PersonCenter/infor.jsp">个人中心</a></h3>
			<dl>
				<dt id="class600" name="orders">我的交易</dt>
				<dd><a class="j-menuItem" name="myallorders" href="/order/selectOrdersByState" target="_parent">我的订单</a></dd>
				<dt id="class605" name="sell">我卖的书</dt>
				<dd><a class="j-menuItem" name="sell" href="/book/SelectByState" target="_parent">我卖的书</a></dd>
				<dt id="class620" name="account">我的钱包</dt>
				<dd><a class="j-menuItem" name="mybalance" href="#我的余额" target="_parent">我的余额</a></dd>
				<dt id="class630" name="selfservice">客服服务</dt>
				<dd><a class="j-menuItem" name="service" href="#联系客服" target="_parent">联系客服</a></dd>
				<dd><a class="j-menuItem" name="question" href="#问卷调查" target="_parent">问卷调查</a></dd>
				<dd><a class="j-menuItem" name="question" href="#问卷调查" target="_parent">举报</a></dd>
			</dl>
		</div>
	</div>
	<div id="myMainWrap" class="my_main">
		<link href="/PersonCenter/css/style.css" rel="stylesheet" type="text/css">
		<div id="J_userInfoWrap">
			<div class="user_message">
				<div class="user_info">
					<div class="user_photo">
						<img src="/PersonCenter/img/header_o.jpg">
						<span class="opacity_mask"></span>
					</div>
					<span id="J_userNick" class="user_name">用户名</span>
				</div>
				<div class="account_message">
					<ul>
						<li>
							<a class="pic lpk" href="#我的订单链接" target="_blank"></a>
							<a href="#我的订单链接" target="_blank">我的订单</a>
						</li>
						<li>
							<a class="pic ye" href="#我的余额链接" target="_blank"></a>
							<a href="#我的余额链接" target="_blank">余额</a>
							<a href="我的余额链接" target="_blank">XXX</a>
						</li>
						<li>
							<a class="pic jf" href="#我卖的书链接" target="_blank"></a>
							<a href="#我卖的书链接" target="_blank">我卖的书</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="J_myOrderWrap">
			<div class="my_order">
				<div class="my_title">
					<span class="title">个人信息</span>
				</div>
				<div class="dt">
					<form action="/user/alterInfo" method="post" onsubmit="return checkSubmit()">
					<table align="center" cellspacing="0" border="0" style="border-spacing: 25px 10px;">
						<tbody>
							<tr>
								<td width="50px"><img src="/PersonCenter/img/user.png"></td>
								<td width="100px">用户名：</td>
								<td>
									<input type="text" id="snumber" name="UserName" onBlur="userNameBlur()" placeholder="快点想一个用户名！" value="${sessionScope.user.getUserName()}"  class="input_text">
									<span id="snumberid" style="display:inline-block;word-wrap:break-word;white-space:normal;font-size: 13px;color:red"></span>
								</td>
							</tr>
							<tr>
								<td width="50px"><img src="/PersonCenter/img/phone.png"></td>
								<td>手机号：</td>
								<td width="350px">
									<input type="text" id="telphone" name="PhoneNum" onBlur="telBlur()" placeholder="手机号"  value="${sessionScope.user.getPhoneNum()}" class="input_text">
									<span id="telphoneid" style="display:inline-block;word-wrap:break-word;white-space:normal;font-size: 13px;color:red"></span>
								</td>
							</tr>
							<tr>
								<td width="50px"><img src="img/school.png"></td>
								<td>所在学校：</td>
								<td>
									<input type="text" id="school" name="School" onBlur="schoolBlur()" placeholder="学校" value="${sessionScope.user.getSchool()}" class="input_text">
									<span id="schoolid" style="display:inline-block;word-wrap:break-word;white-space:normal;font-size: 13px;color:red"></span>
								</td>
							</tr>
							<tr>
								<td width="50px"><img src="/PersonCenter/img/points.png"></td>
								<td>信用积分：</td>
								<td>${sessionScope.user.getCredit()}</td>
							</tr>
							<tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>
							<tr>
								<td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
								<td width="70px">
									<input type="submit" value="保 存 ">
								</td>
								<td width="200px" align="right">
									<a href="/PersonCenter/changepwd.jsp" target="_parent">
										<ul>
											<li><img src="/PersonCenter/img/inforchange.png"></li>
											<li><img src="/PersonCenter/img/onlinkinfor.png"></li>
											<span style="font-size:12px;">修改密码</span>
										</ul>
									</a>
								</td>
							</tr>
						</tbody>
					</table>
					</form>
				</div>
			</div>
		</div>
	</div>
	</div>
	<link href="/PersonCenter/css/footer_140522.css" rel="stylesheet" type="text/css" />
	<div id="footer">
		<div class="footer">
			<div class="footer_nav_box">
				<div class="footer_copyright"><span>Copyright (C) xun书网 </span><a href="#" target="_blank" class="footer_img" rel="nofollow"><img src="/PersonCenter/img/validate.gif"></a></div>
			</div>
		</div>
	</div>
</body>
</html>
