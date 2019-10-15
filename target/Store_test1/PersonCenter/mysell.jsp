<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>我的卖书--xun书网</title>
		<link href="../PersonCenter/img/icon.png" rel="icon" type="image/x-ico">
		<link href="../PersonCenter/ordercss/public.css" rel="stylesheet" type="text/css">
		<link href="../PersonCenter/ordercss/myorder.css" rel="stylesheet" type="text/css">
		<link href="../PersonCenter/ordercss/iconfont.css" rel="stylesheet" type="text/css">
		<script src="../PersonCenter/orderjs/jquery-1.11.3.min.js" type="text/javascript" ></script>
		<script src="../PersonCenter/orderjs/juicer-min.js" type="text/javascript" ></script>
		<script src="../PersonCenter/orderjs/LoginWindow.js" type="text/javascript" ></script>
		<link href="../PersonCenter/ordercss/win_login20150728.css" rel="stylesheet" type="text/css">
		<script src="../PersonCenter/orderjs/imip.js" type="text/javascript" ></script>
		<link href="../PersonCenter/ordercss/laydate.css" rel="stylesheet" type="text/css">
		<link href="../PersonCenter/ordercss/red_laydate.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<link href="../PersonCenter/ordercss/mydd_head.css" rel="stylesheet" type="text/css">
		<link href="../PersonCenter/ordercss/mydd_public.css" rel="stylesheet" type="text/css">
		<link href="../PersonCenter/ordercss/mydd_title.css" rel="stylesheet" type="text/css">
		<link href="../PersonCenter/ordercss/mydd_leftnavi.css" rel="stylesheet" type="text/css">
		<link href="../PersonCenter/ordercss/mydd_foot.css" rel="stylesheet" type="text/css">
		<script type="text/javascript"></script>
		<link href="../PersonCenter/ordercss/header_150803.css" rel="stylesheet" type="text/css">
		<script charset="gb2312" type="text/javascript">var width = 0; narrow = 1;</script>
		<script src="../PersonCenter/js/pagetop2015.js" charset="gb2312" type="text/javascript" ></script>
		<script src="../PersonCenter/js/dd.menu-aim.js" charset="gb2312" type="text/javascript" ></script>
		<div id="hd">
			<div id="tools">
				<div class="tools">
					<div class="ddnewhead_operate" dd_name="顶链接">
						<ul class="ddnewhead_operate_nav">
							<li class="my_dd"><a id="a_myddchannel" class="menu_btn" target="_blank" href="../PersonCenter/infor.html" name="我的当当" dd_name="我的当当" onmouseover="showgaoji('a_myddchannel','__ddnav_mydd')" onmouseout="hideotherchannel('a_myddchannel','__ddnav_mydd');">个人中心</a>
								<ul class="ddnewhead_gcard_list" id="__ddnav_mydd" onmouseover="showgaoji('a_myddchannel','__ddnav_mydd')" onmouseout="hideotherchannel('a_myddchannel','__ddnav_mydd');" style="display: none;width: 83px;">
									<li><a target="_blank" href="myorder.jsp" name="mydd_7" dd_name="新_我的订单">我的订单</a></li>
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
						<div id="znx_content" class="new_head_znx" style="display: none;"></div>
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
					</div>
				</div>
			</div>
			<div id="header_end"></div>
			<div class="logo_line_out" style="position: relative;">
				<div class="logo_line" dd_name="搜索框">
					<div class="logo">
						<img src="../PersonCenter/img/logo.png" usemap="#logo_link">
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
					<div id="suggest_key" class="suggest_key" style="display: none;"></div>
					<div class="ddnew_cart">
						<a href="#" name="购物车" dd_name="购物车">
						<i class="icon_card"></i>购物车
						</a>
					</div>
					<div class="ddnew_order">
						<a target="_blank" href="myorder.jsp" name="我的订单" dd_name="我的订单" rel="nofollow">我的订单
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
			<div class="home_nav_l_box"></div>
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
		<div id="J_muneAndContentWrap" class="mydang">
			<div id="adDiv" class="my_ad"></div>
			<div id="myLeftMenu" class="my_left">
				<link href="../PersonCenter/ordercss/menu.css" rel="stylesheet" type="text/css">
				<div class="my_menu">
					<h3 class="my_menu_title">
						<a id="J_myhomeBtn" href="../PersonCenter/infor.html">个人中心</a>
					</h3>
					<dl>
						<dt id="class600" name="orders">我的交易</dt>
						<dd><a class="j-menuItem" name="myallorders" href="/order/selectOrdersByState" target="_parent">我的订单</a></dd>
						<dt id="class605" name="sell">我卖的书</dt>
						<dd><a class="j-menuItem" name="sell" href="/book/SelectByState" target="_parent"><span style="color: red;">我卖的书</span></a></dd>
						<dt id="class620" name="account">我的钱包</dt>
						<dd><a class="j-menuItem" name="mybalance" href="#我的余额" target="_parent">我的余额</a></dd>
						<dt id="class630" name="selfservice">客服服务</dt>
						<dd><a class="j-menuItem" name="service" href="#联系客服" target="_parent">联系客服</a></dd>
						<dd><a class="j-menuItem" name="question" href="#问卷调查" target="_parent">问卷调查</a></dd>
						<dd><a class="j-menuItem" name="report" href="#问卷调查" target="_parent">举报</a></dd>
					</dl>
				</div>
			</div>
			<div id="my_order_page" class="my_order_page">
				<div id="head">
					<div class="order_head_info">
						<div class="order_menu">
							<ul class="menu_list">
								<li class="j_menu current" statuscondition="0">
									<a href="/book/SelectByState" dd_name="全部售卖记录">
										<span class="j_menu_text">全部售卖记录</span>
									</a>
									<span class="number_color">&nbsp;</span>
								</li>
								<li class="j_menu" statuscondition="1">
									<a href="/book/SelectByState?state=0" dd_name="未出售">
										<span class="j_menu_text">未出售</span>
									</a>
								</li>
								<li class="j_menu" statuscondition="7">
									<a href="/book/SelectByState?state=1" dd_name="待发货">
										<span class="j_menu_text">待发货</span>
									</a>
								</li>
								<li class="j_menu" statuscondition="13">
									<a href="/book/SelectByState?state=2" dd_name="待收货">
										<span class="j_menu_text">待收货</span>
									</a>
								</li>
								<li class="j_menu" statuscondition="18">
									<a href="/book/SelectByState?state=3" dd_name="已售出">
										<span class="j_menu_text">已售出</span>
									</a>
								</li>
							</ul>
							<div class="search_frame">
								<input id="J_orderSearchInput" class="search_input" type="text" placeholder="商品名称">
								<a href="javascript:;"><span id="J_orderSearchBut" class="order_search">搜索</span></a>
							</div>
							<div id="J_orderMenuBorder" class="slide_line" style="left: 0px;">
								<div class="red_line"></div> 
							</div>
						</div>
						<div class="order_detail">
							<span class="order_detail1">售卖详情</span>
							<span class="order_detail2">售卖状态</span>
							<span class="order_detail3">操作</span>
						</div>
					</div>
				</div>

                <div class="order_show_all">
					<% int  i=1;%>
					<c:forEach items="${bookInfos}" var="bookInfo">
						<div class="order_div">
							<div class="order_div_up">
								<div class="order_div_id">
									<span class="order_id">图书编号:</span>
									<span class="order_id_span" id="orderId">${bookInfo.getBookId()}</span>
								</div>
								<div class="order_div_time">
									<span class="order_time">下单时间:</span>
									<span class="order_time_span">${bookInfo.getBookTime()}</span>
								</div>
								<div class="order_div_price">
									<span class="order_price_span">￥图书价格</span>
								</div>
								<div class="order_div_state">
									图书状态
								</div>
								<div class="order_div_do">
									操作
								</div>
							</div>
							<div class="order_div_down">

								<div class="order_div_img">
									<img class="order_div_img" name="图书图片" src="${bookInfo.getPath()}"/>
								</div>
								<div class="order_div_bookinfo">
									<div class="order_div_bookname">
										<span class="order_div_bookname" id="bookinfo">图书名称:
										</span>
										<span class="order_div_bookname_content">
											${bookInfo.getBookName()}
										</span>
									</div>
									<div class="order_div_booktype">
										<span class="order_div_booktype" id="bookinfo">图书类型:</span>
										<span class="order_div_booktype_content">专业课—技术型</span>
									</div>
									<div class="order_div_booktext">
										<span class="order_div_booktext" id="bookinfo">
											图书简介:
										</span>
										<p class="order_div_booktext_content" >
											${bookInfo.getBookText()}
										</p>
									</div>
								</div>
								<div class="order_div_bookprice"><span style="font-size: 15px;"> ${bookInfo.getPrice()} ￥</span></div>
								<div class="order_div_bookstate">
									<span style="font-size: 12px;">
										<c:if test="${bookInfo.getBookState()==0}">上架中</c:if>
										<c:if test="${bookInfo.getBookState()==1}">待发货</c:if>
										<c:if test="${bookInfo.getBookState()==2}">待收货</c:if>
										<c:if test="${bookInfo.getBookState()==3}">已售出</c:if>
										<c:if test="${bookInfo.getBookState()==-1}">已取消</c:if>
									</span>
								</div>
								<div class="order_div_bookdo">
									<span style="font-size: 12px;">
										<c:if test="${bookInfo.getBookState()==3}"><a onclick="
										var s=confirm('确定删除嘛？');
										if(s){
											window.location.href='/book/deleteBook?BookId=${bookInfo.getBookId()}';
										}
										">删除</a></c:if>
										<c:if test="${bookInfo.getBookState()==2}"><a  style="color: #761c19;">*不可操作</a></c:if>
										<c:if test="${bookInfo.getBookState()==-1}"><a  style="color: #761c19;">*已取消</a></c:if>
										<c:if test="${bookInfo.getBookState()==0}"><a
										onclick="
										var s=confirm('确定取消嘛？');
										if(s){
											window.location.href='/book/deleteBook?BookId=${bookInfo.getBookId()}&state=${bookInfo.getBookState()}';
										}
										"
										>取消上架</a></c:if>
										<c:if test="${bookInfo.getBookState()==1}"><a
												onclick="
										var s=confirm('确定收货了嘛？');
										if(s){
											window.location.href='/book/changeState?BookId=${bookInfo.getBookId()}&state=${bookInfo.getBookState()}';
										}
										"
										>确定发货</a></c:if>
									</span>
								</div>


							</div>
						</div>
						<%i++;%>
					</c:forEach>
					<link href="/PersonCenter/css/order_info.css" rel="stylesheet" type="text/css">
                    <link href="../PersonCenter/ordercss/ad.css" rel="stylesheet" type="text/css">
                    <script src="../PersonCenter/orderjs/jquery-1.11.3.min_2015.js" type="text/javascript"></script>
                    <script src="../PersonCenter/orderjs/juicer-min_2015.js" type="text/javascript"></script>
                    <script src="../PersonCenter/orderjs/tool.js" type="text/javascript"></script>
                    <script src="../PersonCenter/orderjs/collect.js?20160329" type="text/javascript"></script>
                    <script src="../PersonCenter/orderjs/myAds.js?20160329" type="text/javascript"></script>
                </div>
			</div>
		</div>
		<link href="../PersonCenter/ordercss/footer_140522.css" rel="stylesheet" type="text/css" />
		<div id="footer">
			<div class="footer">
				<div class="footer_nav_box">
					<div class="footer_copyright"><span>Copyright (C) xun书网 </span><a href="#" target="_blank" class="footer_img" rel="nofollow"><img src="../PersonCenter/img/validate.gif"></a></div>
				</div>
			</div>
		</div>
		<!--表单控件 -->
        <script src="../PersonCenter/orderjs/jquery.placeholder.span.js" type="text/javascript" ></script>
        <!--日期控件 -->
        <script src="../PersonCenter/orderjs/laydate.dev.js"></script>
        <!--广告控件 -->
        <script src="../PersonCenter/orderjs/smart.js"></script>
        <script src="../PersonCenter/orderjs/conf.js"></script>
        <script src="../PersonCenter/orderjs/tool.js"></script>
        <script src="../PersonCenter/orderjs/myorder.js"></script>
        <script src="../PersonCenter/orderjs/cim.min.js" charset="utf8" defer async></script>

	</body>
</html>