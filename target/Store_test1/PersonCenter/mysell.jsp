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
							<span id="nickname">
								<span class="hi">Hi,
									<a class="login_link" href="../PersonCenter/infor.html" target="_blank"><b>用户名</b></a>
									<a href="#" target="_self">[退出]</a>
								</span>
							</span>
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
						<dd><a class="j-menuItem" name="myallorders" href="myorder.jsp" target="_parent">我的订单</a></dd>
						<dt id="class605" name="sell">我卖的书</dt>
						<dd><a class="j-menuItem" name="sell" href="mysell.jsp" target="_parent"><span style="color: red;">我卖的书</span></a></dd>
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
									<a href="javascript:;" dd_name="全部售卖记录">
										<span class="j_menu_text">全部售卖记录</span>
									</a>
									<span class="number_color">&nbsp;</span>
								</li>
								<li class="j_menu" statuscondition="1">
									<a href="javascript:;" dd_name="未出售">
										<span class="j_menu_text">未出售</span>
									</a>
								</li>
								<li class="j_menu" statuscondition="7">
									<a href="javascript:;" dd_name="待发货">
										<span class="j_menu_text">待发货</span>
									</a>
								</li>
								<li class="j_menu" statuscondition="13">
									<a href="javascript:;" dd_name="待收货">
										<span class="j_menu_text">待收货</span>
									</a>
								</li>
								<li class="j_menu" statuscondition="18">
									<a href="javascript:;" dd_name="已售出">
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
						<div class="order_time">
							<div class="time_show"></div>
							<div class="time_show_pic">
								<div class="order_back">
									<span class="rubbish_pic"></span>
									<a id="mydeleteorders" href="#售卖回收站链接" dd_name="售卖回收站" target="_blank">
										<span>售卖回收站</span>
									</a>
								</div>
							</div>
						</div>
						<div class="order_detail">
							<span class="order_detail1">售卖详情</span>
							<span class="order_detail2">售卖状态</span>
							<span class="order_detail3">操作</span>
						</div>
						<div class="turn_page" id="divbody">
							<div id="headPaging" class="con paginating clearfix" name="m1418885_pid0_t12836" style="display: block;">
							</div>
						</div>
					</div>
				</div>

                <div class="order_show_all">
                    <div id="J_order_list" style="display: block;">
                    	<div id="orderList">
                    		<!--售卖状态为已出售-->
                    		<div class="order_remind">
                    			<div class="order_show order_show_special" >
                    				<div class="order_show_head order_show_head1" style="*z-index:;">
                    					<span>上传时间：</span>
                    					<span class="order_number" shop_id="0">
                    						<a dd_name="订单号查看" href="#订单详情页面" class="pay1" target="_blank">XXXX年XX月XX日</a>
                    					</span>
                    					<span class="time_order">该书的名字</span>
                    					<span class="price">￥&nbsp;上传的价格
                    						<span></span>
                    					</span>
                    					<span class="pay_person">
                    						该书上传时所属的类别
                    					</span>
                    					<span class="customers_service">
                    						<a dd_name="小能" class="cim_entry customer_service" shop_id="0" data-shopid="0" data-ddshopid="0" data-orderid="38738771566" data-sourcepage="order"></a>
                    						<span>在线客服</span>
                    					</span>	
                    				</div>
                    				<div class="order_show_area" style="*z-index:108;">
                    					<div class="pic_show_area">
                    						<ul>
                    							<li class="">
                    								<a dd_name="商品快照" href="#商品详情页面链接" target="_blank" class="j_productImg">
                    									<img src="#商品图片路径">
                    								</a>
                    								<span class="introduce_detail j_product_detail" style="display: none; left: 98px;">
                    									<span class="info">
                    										<a href="#商品详情页面" class="info_introduce">商品名称</a> 
                    										<span class="price_s">
                    											<span class="price_num">商品价格</span>
                    											×
                    											<span class="number">商品数量</span>
                    										</span>
                    									</span>
                    								</span>
                    							</li>
                    						</ul>
                    					</div>
                    					<div class="trace_order" style="z-index:148;">
                    						<p></p>
                    						<p>已出售</p><!--售卖状态为已出售-->
                    						<div class="trace_order_wrap j_orderTraceWrap trace"></div>
                    					</div>
                    					<div class="check_order">
                    						<ul>
                    							<li><a dd_name="订单详情" href="订单详情页面链接" class="pay1" target="_blank">订单详情</a></li>
                    							<li><a dd_name="删除" href="#" class="pay1">删除</a></li>
                    						</ul>
                    					</div>
                    				</div>
                    			</div>
                    		</div>
                    		
                    		<!--售卖状态为正在出售-->
                    		<div class="order_remind">
                    			<div class="order_show order_show_special" >
                    				<div class="order_show_head order_show_head1" style="*z-index:;">
                    					<span>上传时间</span>
                    					<span class="order_number" shop_id="0">
                    						<a dd_name="订单号查看" class="pay1" target="_blank">XXXX年XX月XX日</a>
                    					</span>
                    					<span class="time_order">该书的名字</span>
                    					<span class="price">￥&nbsp;上传的价格
                    						<span></span>
                    					</span>
                    					<span class="pay_person">
                    						该书所属的类别
                    					</span>
                    					<span class="customers_service">
                    						<a dd_name="小能" class="cim_entry customer_service" shop_id="0" data-shopid="0" data-ddshopid="0" data-orderid="38738771566" data-sourcepage="order"></a>
                    						<span>在线客服</span>
                    					</span>	
                    				</div>
                    				<div class="order_show_area" style="*z-index:108;">
                    					<div class="pic_show_area">
                    						<ul>
                    							<li class="">
                    								<a dd_name="商品快照" href="#商品详情页面链接" target="_blank" class="j_productImg">
                    									<img src="#商品图片路径">
                    								</a>
                    								<span class="introduce_detail j_product_detail" style="display: none; left: 98px;">
                    									<span class="info">
                    										<a href="#商品详情页面" class="info_introduce">商品名称</a> 
                    										<span class="price_s">
                    											<span class="price_num">商品价格</span>
                    											×
                    											<span class="number">商品数量</span>
                    										</span>
                    									</span>
                    								</span>
                    							</li>
                    						</ul>
                    					</div>
                    					<div class="trace_order" style="z-index:148;">
                    						<p></p>
                    						<p>正在出售</p><!--售卖状态为正在出售-->
                    						<div class="trace_order_wrap j_orderTraceWrap trace"></div>
                    					</div>
                    					<div class="check_order">
                    						<ul>
                    							<li><a dd_name="商品详情" href="商品详情链接" class="pay1" target="_blank">商品详情</a></li>
                    							<li><a dd_name="取消" href="#" class="pay1">取消出售</a></li>
                    						</ul>
                    					</div>
                    				</div>
                    			</div>
                    		</div>
                    		
                    		<!--无某类型卖书时显示-->
                    		<div class="my_collect" style="display:none;" id="noContent">
                    			<div class="collection_box">
                    				<div class="show_list">
                    					<div class="none_box">
                    						<img src="../PersonCenter/img/monkey.jpg">
                    						<h3>您没有该类型的卖书，回首页<a dd_name="列表无数据返回首页" href="#首页链接    " target="_blank">逛逛去~~</a></h3>
                    					</div>
                    				</div>
                    			</div>
                    		</div>
                    		

                    		<div id="contentPaging" class="con paginating clearfix" name="m1418885_pid0_t12836"></div>
                    	</div>
                    	<script src="../PersonCenter/orderjs/orderList.js?20171017" type="text/javascript"></script>
                    </div>
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