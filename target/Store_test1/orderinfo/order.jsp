<%@ page import="edu.heuet.Pojo.BookInfo" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>订单结算--xun书网</title>
	<link href="/orderinfo/img/icon.png" rel="icon" type="image/x-ico">
	<link href="/orderinfo/css/style.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="/orderinfo/css/dev.css">
	<link rel="stylesheet" href="/orderinfo/css/iconfont.css">
</head>
 
<body>
<link href="//static.dangdang.com/css/header2012/header_960_150611.css?20180907" rel="stylesheet" type="text/css">
<script src="//static.dangdang.com/js/header2012/pagetop2015_0827.js?20180907" charset="gb2312" type="text/javascript"></script>

<div id="hd">
<div id="tools">
<div class="tools">
    <div class="ddnewhead_operate" dd_name="顶链接">
        <ul class="ddnewhead_operate_nav">
        <li class="ddnewhead_cart"><a href="#购物车链接" name="购物车" dd_name="购物车"><i class="icon_card"></i>购物车</a></li>
        <li><a target="_blank" href="#我的订单链接" name="我的订单" dd_name="我的订单" rel="nofollow">我的订单<b id="unpaid_num" style="color:#ff2832;font:bold 12px Arial;"></b></a></li>
        <li class="my_dd"><a class="menu_btn" target="_blank" href="http://myhome.dangdang.com/" name="我的当当" dd_name="我的当当" id="a_myddchannel" onmouseover="showgaoji('a_myddchannel','__ddnav_mydd')" onmouseout="hideotherchannel('a_myddchannel','__ddnav_mydd');">个人中心</a>
            <ul class="ddnewhead_gcard_list" id="__ddnav_mydd" onmouseover="showgaoji('a_myddchannel','__ddnav_mydd')" onmouseout="hideotherchannel('a_myddchannel','__ddnav_mydd');">
                <li><a target="_blank" href="#订单链接" name="mydd_7" dd_name="新_我的订单">我的订单</a></li>
               <li><a target="_blank" href="#购物车链接" name="mydd_8" dd_name="新_购物车" rel="nofollow">购物车</a></li>
            </ul>
        </li>
        <li><a target="_blank" href="#上传卖书链接"  dd_name="我要出书">我要卖书</a></li>
        <li class="hover "><a class="menu_btn" href="服务中心链接" style="cursor:default;" name="ddkf_0" dd_name="客户服务" id="a_bzzxchannel" onmouseover="showgaoji('a_bzzxchannel','__ddnav_bzzx');" onmouseout="hideotherchannel('a_bzzxchannel','__ddnav_bzzx');">客户服务</a>
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
<!--CreateDate  2019-09-22 03:00:01--></div>
<form  id="bootpagetopSearch" name="bootpagetopSearch" method="GET"></form>
<div class="logo_line">
	<div class="w960">
		<div class="shopping_procedure"><span><a href="#购物车链接">我的购物车</a></span><span class="current">填写订单</span><span>完成订单</span></div>
		<div class="logo"><a href="#首页链接"><img src="/orderinfo/img/orderlogo.png" alt=""/></a></div>
	</div>
</div>
	<div class="w960" style="min-height:650px;">
	    <div id="div_checkout_tips" class="checkout_tip" style="">
	    	<span class="icon_tip"></span>
	    	<b>温馨提示：</b>
	    	<div class="con"><p>xun书平台及卖家不会以任何理由，要求您点击任何网址链接进行退款或支付操作。</p></div>
	    </div>
		<!--收货人信息-->
		<div id="address_div" class="address">
			<h1 class="title">收货人信息</h1>
			<div class="addr_list">
				<ul>
					<li class="addr active" id="address_block_304687155" address_index="0" address_id="304687155" address_status="2">
						<h1>收货人姓名<span>收货人电话</span></h1>
						<div id="default_304687155"></div>		
					</li>
				</ul>
			</div>
		</div>
		<!-- 海外购身份验证 -->
		<div id="oversea_identification_div" class="w960"></div>
		<!--配送方式-->
		<div id="shipments_div" class="w960">
			<h1 class="title"><a class="fr modify" href="/cart/showCartByPage">返回购物车</a>送货清单</h1>
			<div class="shipping">
				<div class="shipment_0_0_div">
					<div class="title"><span class="icon"></span>xun书网</div>
					<div class="ship_box">
						<div class="main">
							<div id="delivery_0_0" class="left">
								<p>温馨提示：</p>
								<p>本网站为校内二手书交易网站，无退换货保障！</p>
							</div>
							<div id="order_0_0_div" class="right clearfix">
								<div class="subpackage_title">以下商品24小时发货<span>无需运费</span></div>
								<table class="list" width="100%" cellpadding="0" border="0">
									<tbody>
										<tr>
											<th class="th_img" scope="col"></th>
											<th class="th_name" scope="col">商品名称</th>
											<th scope="col">单价</th>
											<th scope="col">数量</th>
											<th scope="col">总价</th>
										</tr>
										<% List<BookInfo> bookInfoList= (List<BookInfo>) request.getAttribute("BookInfos");%>
										<%int i=bookInfoList.size();double countPrice=0.0;
											for ( BookInfo bookInfo:bookInfoList) {
												countPrice+=bookInfo.getPrice();
											}
										%>
										<c:forEach items="<%=bookInfoList%>" var="bookinfo">
										<!--普通商品-->
										<tr id="25137790_NOTGIFT" ddt-data-key="productid" ddt-data="25137790">
											<td class="img"><img src="${bookinfo.getPath()}" width="70" height="70"></td>
											<td class="name"><a href="#该书的详情页面" target="_blank" dd_name="查看详情" style="word-break: break-all;word-wrap: break-word;text-align: center">${bookinfo.getBookName()}</a></td>
											<td>${bookinfo.getPrice()} ￥</td>
											<td>1</td>
											<td>${bookinfo.getPrice()} ￥</td>
										</tr>

										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<div id="shipment_sub_0_0_div" class="sub">
							<div class="sub_left"></div>
							<div class="sub_right">
								<p>
									<span class="red">包裹数量:<%=i%></span><span class="tab">商品金额：<%=countPrice%></span><span class="tab"></span>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--支付方式-->
		<div id="payment_div" class="w960">
			<h1 class="title">支付方式</h1>
			<div id="payment_inner_div" class="payment new_payment">
				<ul class="ul_list clearfix">
					<li style="display: block" class="aa">
						<a href="javascript:void(0)" class="btn_pay  current" id="payment_online">余额支付</a>
					</li>
					<li class="aa" style="z-index: 5;">
						<a href="/order/createPay" class="btn_pay " id="payment_after_arrival">支付宝支付</a>
					</li>
				</ul>
			</div>
		</div>
		<div id="installment_bank_div" class="w960"></div>
		<div id="installment_nper_div" class="w960"></div>
		<!--小计-->
		<div id="summary_div">
			<div class="total">
				<div>
					<div class="border">
						<p><span class="name">商品金额：</span><span class="price"><%=countPrice%></span></p>
					</div>
					<p class="total_price">
						<span class="name">应付金额：</span><span class="price red"><%=countPrice%></span>
					</p>
				</div>
			</div>
		</div>
	</div>
	<div id="unsupport_seven_day_div" style="display: none;"></div>
	<div id="submit_div">
		<div id="submit_div_inner" class="submit">
			<div class="box tip_tuan">
				共<span class="red"><%=i%></span>件商品
				<a id="submit" href="/order/createPay" class="btn_red">去支付</a>
			</div>
		</div>
	</div>
	<div style="display:none" id="alltmpl"></div>
    <div id="divUpDialog" style="display:none;z-index:10001;position: absolute;"></div>
	<div id="divDialog" style="display:none;"></div>
	<div id="divShield" style="display:none;"></div>
	<div id="divLoading" class="pop" style="display:none;z-index:99999;"></div>
	<div id="divCardPreviewImage" class="pop pop_preview" style="z-index:99999;display:none;">
		<a href="javascript:;" class="close"></a>
	</div>
	<div id="submitForm" style="display:none;"></div>
	<div class="fixedbar">
		<div class="window_suspend"><a target="_blank" href="#问卷调查">问卷调查</a></div>
	</div>


<link href="//static.dangdang.com/css/header2012/footer_140522.css?20180907" rel="stylesheet" type="text/css" />
<div id="footer">
<div class="footer">
	<div class="footer_nav_box">
		<div class="footer_copyright"><span>Copyright (C) xun书网 </span><a href="#" target="_blank" class="footer_img" rel="nofollow"><img src="//img60.ddimg.cn/upload_img/00459/index/validate.gif"></a></div>
	</div>
</div>
</div>
    <div class="foot_tip_ad">广告</div>
    <style>
        .foot_tip_ad { width:40px; height:40px; font:12px/40px "simsun"; text-align:center; color:#fff; background-color:#474747; position:fixed; right:0; bottom:10px;_position:absolute; _bottom:auto;_top:expression(eval(document.documentElement.scrollTop+document.documentElement.clientHeight-this.offsetHeight-(parseInt(this.currentStyle.marginTop,10)||0)-(parseInt(this.currentStyle.marginBottom,10)||0)));}
    </style>

</body>
    <script type="text/javascript">
    	setTimeout(
    			function asyncImg() {
    				var images = document.images;
    				if (images) {
    					for (var imgnum in images) {
    						var image = images[imgnum];
    						var name = Object.prototype.toString.call(image);
    						if(name != "[object HTMLImageElement]"){
    							continue;
    						}
    						if ((image.readyState == 'complete' || image.readyState == "loaded") || image.complete) {
    							// ok
    						} else {
    							var picsrc = image.src;
    							if (picsrc) {
    								image.src = "";
    							}
    						}
    					}
    				}
    			}, 2000);
	</script>
</html>
