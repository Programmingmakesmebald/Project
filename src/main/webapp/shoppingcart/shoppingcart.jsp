<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html >
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>xun书</title>

    <script src="/shoppingcart/js/jquery_1.8.js"></script>
    <script src="/shoppingcart/js/jquery_cookie.js"></script>
	<link rel="shortcut icon" href="/shoppingcart/images/favicon.ico?v=20181226" type="image/x-icon" />
    <link href="/shoppingcart/css/shopping_cart_new.css?v=20181226" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="/shoppingcart/css/size_color.css?v=20181226"/>
    <link rel="stylesheet" href="/shoppingcart/css/style.css?v=20181226"/>
    <link rel="stylesheet" type="text/css" href="/bootstrap/css/bootstrap.min.css"/>
</head>
<body style="padding-bottom:82px">
<script type="text/javascript">
    eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('r(1c 1H=="O"){o U;(p(){o k={1d:"1I.1J",1e:\'1K\',D:\'O\',1f:\'O\'};k.1g={1h:0,1L:"",F:8,1i:p(a){o b=l.1h?"1M":"1N";o c="";P(o i=0;i<a.B*4;i++){c+=b.1j((a[i>>2]>>((i%4)*8+4))&1k)+b.1j((a[i>>2]>>((i%4)*8))&1k)}u c},1l:p(x,e){x[e>>5]|=1O<<((e)%32);x[(((e+1P)>>>9)<<4)+14]=e;o a=1Q;o b=-1R;o c=-1S;o d=1T;P(o i=0;i<x.B;i+=16){o f=a;o g=b;o h=c;o j=d;a=l.v(a,b,c,d,x[i+0],7,-1U);d=l.v(d,a,b,c,x[i+1],12,-1V);c=l.v(c,d,a,b,x[i+2],17,1W);b=l.v(b,c,d,a,x[i+3],22,-1X);a=l.v(a,b,c,d,x[i+4],7,-1Y);d=l.v(d,a,b,c,x[i+5],12,1Z);c=l.v(c,d,a,b,x[i+6],17,-24);b=l.v(b,c,d,a,x[i+7],22,-25);a=l.v(a,b,c,d,x[i+8],7,26);d=l.v(d,a,b,c,x[i+9],12,-27);c=l.v(c,d,a,b,x[i+10],17,-28);b=l.v(b,c,d,a,x[i+11],22,-29);a=l.v(a,b,c,d,x[i+12],7,2a);d=l.v(d,a,b,c,x[i+13],12,-2b);c=l.v(c,d,a,b,x[i+14],17,-2c);b=l.v(b,c,d,a,x[i+15],22,2d);a=l.w(a,b,c,d,x[i+1],5,-2e);d=l.w(d,a,b,c,x[i+6],9,-2f);c=l.w(c,d,a,b,x[i+11],14,2g);b=l.w(b,c,d,a,x[i+0],20,-2h);a=l.w(a,b,c,d,x[i+5],5,-2i);d=l.w(d,a,b,c,x[i+10],9,2j);c=l.w(c,d,a,b,x[i+15],14,-2k);b=l.w(b,c,d,a,x[i+4],20,-2l);a=l.w(a,b,c,d,x[i+9],5,2m);d=l.w(d,a,b,c,x[i+14],9,-2n);c=l.w(c,d,a,b,x[i+3],14,-2o);b=l.w(b,c,d,a,x[i+8],20,2p);a=l.w(a,b,c,d,x[i+13],5,-2q);d=l.w(d,a,b,c,x[i+2],9,-2r);c=l.w(c,d,a,b,x[i+7],14,2s);b=l.w(b,c,d,a,x[i+12],20,-2t);a=l.z(a,b,c,d,x[i+5],4,-2u);d=l.z(d,a,b,c,x[i+8],11,-2v);c=l.z(c,d,a,b,x[i+11],16,2w);b=l.z(b,c,d,a,x[i+14],23,-2x);a=l.z(a,b,c,d,x[i+1],4,-2y);d=l.z(d,a,b,c,x[i+4],11,2z);c=l.z(c,d,a,b,x[i+7],16,-2A);b=l.z(b,c,d,a,x[i+10],23,-2B);a=l.z(a,b,c,d,x[i+13],4,2C);d=l.z(d,a,b,c,x[i+0],11,-2D);c=l.z(c,d,a,b,x[i+3],16,-2E);b=l.z(b,c,d,a,x[i+6],23,2F);a=l.z(a,b,c,d,x[i+9],4,-2G);d=l.z(d,a,b,c,x[i+12],11,-2H);c=l.z(c,d,a,b,x[i+15],16,2I);b=l.z(b,c,d,a,x[i+2],23,-2J);a=l.A(a,b,c,d,x[i+0],6,-2K);d=l.A(d,a,b,c,x[i+7],10,2L);c=l.A(c,d,a,b,x[i+14],15,-2M);b=l.A(b,c,d,a,x[i+5],21,-2N);a=l.A(a,b,c,d,x[i+12],6,2O);d=l.A(d,a,b,c,x[i+3],10,-2P);c=l.A(c,d,a,b,x[i+10],15,-2Q);b=l.A(b,c,d,a,x[i+1],21,-2R);a=l.A(a,b,c,d,x[i+8],6,2S);d=l.A(d,a,b,c,x[i+15],10,-2T);c=l.A(c,d,a,b,x[i+6],15,-2U);b=l.A(b,c,d,a,x[i+13],21,2V);a=l.A(a,b,c,d,x[i+4],6,-2W);d=l.A(d,a,b,c,x[i+11],10,-2X);c=l.A(c,d,a,b,x[i+2],15,2Y);b=l.A(b,c,d,a,x[i+9],21,-2Z);a=l.C(a,f);b=l.C(b,g);c=l.C(c,h);d=l.C(d,j)}u V(a,b,c,d)},J:p(q,a,b,x,s,t){u l.C(l.1m(l.C(l.C(a,q),l.C(x,t)),s),b)},v:p(a,b,c,d,x,s,t){u l.J((b&c)|((~b)&d),a,b,x,s,t)},w:p(a,b,c,d,x,s,t){u l.J((b&d)|(c&(~d)),a,b,x,s,t)},z:p(a,b,c,d,x,s,t){u l.J(b^c^d,a,b,x,s,t)},A:p(a,b,c,d,x,s,t){u l.J(c^(b|(~d)),a,b,x,s,t)},1n:p(a){o b=V();o c=(1<<l.F)-1;P(o i=0;i<a.B*l.F;i+=l.F)b[i>>5]|=(a.30(i/l.F)&c)<<(i%32);u b},C:p(x,y){o a=(x&W)+(y&W);o b=(x>>16)+(y>>16)+(a>>16);u(b<<16)|(a&W)},1m:p(a,b){u(a<<b)|(a>>>(32-b))},1o:p(s){u l.1i(l.1l(l.1n(s),s.B*l.F))}};k.X={1p:p(a){o b=Y(a)+"=",Q=K.L.E(b),Z=1q;r(Q>-1){o c=K.L.E(";",Q);r(c==-1){c=K.L.B}Z=31(K.L.18(Q+b.B,c))}u Z},19:p(a,b,c,d,e,f){o g=Y(a)+"="+Y(b);r(c 33 N){g+="; 34="+c.36()}r(d){g+="; 37="+d}r(e){g+="; 38="+e}r(f){g+="; 39"}K.L=g},3a:p(a,b,c,d){l.19(a,"",G N(0),b,c,d)}};k.3b={3c:p(a){o b=G 3d();r(a.E("?")>0){o c=a.18(a.E("?")+1);r(c.E("#")>0){c=c.18(0,c.E("#"))}o d=c.1a("&");P(o i=0;i<d.B;i++){b[d[i].1a("=")[0]]=d[i].1a("=")[1]}}u b}};k.3e=p(a,b,c){r(a.1r){a.1r(b,c,1s)}R r(a.1t){a.1t("T"+b,c)}R{a["T"+b]=c}};k.3f=p(a,b,c){r(a.1u){a.1u(b,c,1s)}R r(a.1v){a.1v("T"+b,c)}R{a["T"+b]=1q}};k.3g=p(x){o a=3h(x);r(3i(a)){u 0.1w}o a=I.3j(x*1x)/1x;o b=a.3k();o c=b.E(\'.\');r(c<0){c=b.B;b+=\'.\'}3l(b.B<=c+2){b+=\'0\'}u b};k.1y=p(){o n=G N();o y=n.3m()+\'\';o m=n.3n()+1;r(m<10)m="0"+m;o d=n.3o();r(d<10)d="0"+d;o H=n.3p();r(H<10)H="0"+H;o M=n.3q();r(M<10)M="0"+M;o S=n.3r();r(S<10)S="0"+S;o a="1w"+n.3s();a=a.1b(a.B-3,3);o b=I.1z(1A+I.1B()*1C);o c=I.1z(1A+I.1B()*1C);o e=y+m+d+H+M+S+a+b+c+k.1e;o f=k.1g.1o(e);f=k.1D(f);u y+m+d+H+M+S+a+f+b+c};k.1D=p(a){o b=3t(a.1b(0,8),16);o c=3u(b).1b(0,6);o d=c.B;r(d<6){c+=k.1E(\'0\',I.3v(6-d))}u c};k.1E=p(a,b){u G V(b+1).3w(a)};k.1F=p(){o t=G N();u t.3x()};k.1G=p(){k.D=k.X.1p("D");r(1c k.D==\'O\'||!/^\\d{35}$/.3y(k.D)){o a=G N(3z,1,1);k.D=k.1y();k.X.19("D",k.D,a,"/",k.1d)}k.1f=k.1F()};U=k;U.1G()})()}',62,222,'|||||||||||||||||||||this|||var|function||if|||return|md5_ff|md5_gg|||md5_hh|md5_ii|length|safe_add|__permanent_id|indexOf|chrsz|new||Math|md5_cmn|document|cookie||Date|undefined|for|cookieStart|else||on|ddclick_head_functions|Array|0xFFFF|CookieUtil|encodeURIComponent|cookieValue|||||||||substring|set|split|substr|typeof|__cookieDomain|__ddclick_hash_key|__timestap|Md5Util|hexcase|binl2hex|charAt|0xF|core_md5|bit_rol|str2binl|hex_md5|get|null|addEventListener|false|attachEvent|removeEventListener|detachEvent|00|100|createPermanentID|floor|100000|random|900000|formatHashCode|str_repeat|initTime|init|ddclick_page_tracker|dangdang|com|DDClick521|b64pad|0123456789ABCDEF|0123456789abcdef|0x80|64|1732584193|271733879|1732584194|271733878|680876936|389564586|606105819|1044525330|176418897|1200080426|||||1473231341|45705983|1770035416|1958414417|42063|1990404162|1804603682|40341101|1502002290|1236535329|165796510|1069501632|643717713|373897302|701558691|38016083|660478335|405537848|568446438|1019803690|187363961|1163531501|1444681467|51403784|1735328473|1926607734|378558|2022574463|1839030562|35309556|1530992060|1272893353|155497632|1094730640|681279174|358537222|722521979|76029189|640364487|421815835|530742520|995338651|198630844|1126891415|1416354905|57434055|1700485571|1894986606|1051523|2054922799|1873313359|30611744|1560198380|1309151649|145523070|1120210379|718787259|343485551|charCodeAt|decodeURIComponent||instanceof|expires||toGMTString|path|domain|secure|unset|URLUtil|getKeyValueArray|Object|addEventHandler|removeEventHandler|changeTwoDecimal|parseFloat|isNaN|round|toString|while|getFullYear|getMonth|getDate|getHours|getMinutes|getSeconds|getMilliseconds|parseInt|String|abs|join|getTime|test|2020'.split('|'),0,{}))</script>
<link href="/shoppingcart/css/a.css" rel="stylesheet" type="text/css" charset="UTF-8">
<script charset="utf-8" type="text/javascript">var width = 0; narrow = 1;</script>
<script src="/shoppingcart/js/a.js" charset="utf-8" type="text/javascript"></script>
<script src="/shoppingcart/js/b.js" charset="utf-8" type="text/javascript"></script>

<div id="hd">
    <c:set var="totalPages" value="${requestScope.pagemsg.totalPage}"/>
    <c:set var="page" value="${requestScope.pagemsg.currentPage}"/>
<div id="tools">
<div class="tools">
    <div class="ddnewhead_operate" dd_name="顶链接">
        <ul class="ddnewhead_operate_nav">
        <li class="ddnewhead_cart"><a href="javascript:AddToShoppingCart(0);" name="购物车" dd_name="购物车">
            <i class="icon_card"></i>购物车<b id="shoppingcount"></b></a></li>
        <li><a target="_blank" href="#" name="我的订单" dd_name="我的订单" rel="nofollow">我的订单<b id="unpaid_num" style="color:#ff2832;font:bold 12px Arial;"></b></a></li>
    
        <li class="my_dd"><a class="menu_btn" target="_blank" href="#" name="我的小xun" dd_name="我的小xun" id="a_myddchannel" onmouseover="showgaoji('a_myddchannel','__ddnav_mydd')" onmouseout="hideotherchannel('a_myddchannel','__ddnav_mydd');">我的小xun</a>
            <ul class="ddnewhead_gcard_list" id="__ddnav_mydd" onmouseover="showgaoji('a_myddchannel','__ddnav_mydd')" onmouseout="hideotherchannel('a_myddchannel','__ddnav_mydd');">
                <li><a target="_blank" href="#" name="mydd_7" dd_name="新_我的订单">我的订单</a></li>
               <li><a target="_blank" href="#" name="mydd_8" dd_name="新_购物车" rel="nofollow">购物车</a></li>
            </ul>
        </li>
        <li class="hover "><a class="menu_btn" href="javascript:void(0);" style="cursor:default;" name="ddkf_0" dd_name="客户服务" id="a_bzzxchannel" onmouseover="showgaoji('a_bzzxchannel','__ddnav_bzzx');" onmouseout="hideotherchannel('a_bzzxchannel','__ddnav_bzzx');">客户服务</a>
            <ul class="ddnewhead_gcard_list" id="__ddnav_bzzx" onmouseover="showgaoji('a_bzzxchannel','__ddnav_bzzx');" onmouseout="hideotherchannel('a_bzzxchannel','__ddnav_bzzx');">
                <li><a target="_blank" href="#" name="ddkf_4" dd_name="联系客服">联系客服</a></li>
            </ul>
        </li>
        </ul>
        <div class="ddnewhead_welcome" display="none;">
            <span id="  "><span class="hi hi_none">欢迎光临小xun，请</span><a href="#" class="login_link">登录</a><a href="#">免费注册</a></span>
        </div>
        <div class="new_head_znx" id="znx_content" style="display:none;"></div>
    </div>
</div>
</div> 
<div id="header_end"></div>
<!--CreateDate  2017-07-03 00:30:01--></div>
<form action="http://search.dangdang.com/search.aspx" id="bootpagetopSearch" name="bootpagetopSearch" method="GET"></form>
<script type="text/javascript">var nick_num = 0;initHeaderOperate();</script>
		<div class="shoppingcart_wrapper" id="ad_cpt_11850"></div>
<div class="logo_line">
    <div class="w960">
        <div class="shopping_procedure"><span class="current">我的购物车</span><span>填写订单</span><span>完成订单</span></div>
        <div class="logo"><a href="#"><img src="images/gwclogo.png" alt=""></a></div>
    </div> 
</div> 
<div class="w960" id="showTip">

    <div id="giftDiv" class="pop_tip gift_select" style="left:50%; top:50%; margin:-200px 0 0 -302px; position: fixed; z-index: 1001; display: none;">
		<div class="head_title">
			<div class="title_name">您购物车中以下商品可选为赠品</div>
			<div class="close"></div>
		</div>
		<div class="products_sort" id="giftArea">
			
		</div>
		<a href="javascript:void(0)" class="btn_b fn-back-cart">返回购物车选赠品</a><a id="gift_checkout" href="#" class="btn_b">继续结算，土豪任性不要了</a>
	</div>
	<div class="login_tip"  style = "display: none;" >
		<span class="icon"></span>
	</div>
	<div id="remove_pop" class="login_tip"  style = "display: none;" >
		<span class="icon"></span>
	</div>
	<div id="clear_pop" class="login_tip"  style = "display: none;" >
		<span class="icon"></span>
	</div>
	
	<!-- 缺货 pop-->
	<div id="stockShortDiv" class="pop_stock"  style="left:50%; top:50%; margin:-200px 0 0 -253px; position: fixed; z-index: 1004; display: none;">
		<a class="close"></a>
		<div class="pop_title">以下商品缺货，为您修改到最大可购买数量</div>
		<div class="popup_out">
			<ul class="out_list">
			</ul>
		</div>
		<div class="btn_bar limit_bar">
			<a href="#" class="btn_red">确定</a>
		</div>
	</div>
	
</div>
<div class="w960" id="cart">
    <ul class="shopping_title" id="j_carttitle">
        <li class="f1">  <a id="j_selectall" class="checknow fn-checkall" href="javascript:selectAll()">全选</a> / <a href="javascript:selectNotAll()">全不选</a>></li>
        <li class="f2">商品信息</li>
        <li class="f3">单价（元）</li>
        <li class="f4">数量</li>
        <li class="f4">金额（元）</li>
        <li class="f5">操作</li>
    </ul>
    <div class="fn-shops" id = "J_cartContent">

    </div>
    <%int i=0;%>
    <c:forEach items="${BookInfos}" var="bookinfo" varStatus="status">
        <%i++;%>
        <div style="width: 100%;height: 100px "  id="booksDiv${bookinfo.getBookId()}">
            <table style="width:100%;height: 100px">
                <tr>
                    <td style="width: 10%;"><input type="checkbox" onchange="selectbook()" name="book" id="book<%=i%>" value="${bookinfo.getBookId()}" ></td>
                    <td style="width: 40%;">
                        <img src="${bookinfo.getPath()}" style="width:90px;height: 94px;float: left;">
                        <div style="float: right;width:270px;">
                            <div style="float: top;height: 30px;text-align: center">${bookinfo.getBookName()}</div><!-- 商品名称-->
                            <div style="float: bottom;height: 60px">${bookinfo.getBookText()}</div><!-- 商品描述-->
                        </div>
                    </td>
                    <td style="width: 15%;text-align: center;"><span>${bookinfo.getPrice()}</span>&nbsp;&nbsp;￥</td>
                    <td style="width: 15%;text-align: center;"><span>1</span>&nbsp;&nbsp;（本）</td>
                    <td style="width: 10%;text-align: center;"><span>${bookinfo.getPrice()}</span>&nbsp;&nbsp;￥</td>
                    <td style="width: 10%">
                        <div style="float: top;height: 25px;text-align: center"><button  onclick="singleBuy(<%=i%>)">购买</button></div>
                        <div style="float: bottom;height: 25px;text-align: center"><button  onclick="deleteShoppingCart(${bookinfo.getBookId()})">删除</button></div>
                    </td>
                </tr>
            </table>

        </div>
    </c:forEach>

    <div class="row justify-content-center" style="text-align: center">
        <c:set var="totalPages" value="${requestScope.pagemsg.totalPage}"/>
        <c:set var="page" value="${requestScope.pagemsg.currentPage}"/>
        <nav>
            <ul class="pagination">
                <li class="page-item"><a class="page-link" href="<c:url value="/cart/showCartByPage?currentPage=1"/>">首页</a></li>
                <li class="page-item"><a class="page-link"
                                         href="<c:url value="/cart/showCartByPage?currentPage=${page-1>1?page-1:1}"/>">&laquo;</a>
                </li>
                <c:forEach begin="1" end="${totalPages}" varStatus="loop">
                    <c:set var="active" value="${loop.index==page?'active':''}"/>
                    <li class="page-item ${active}">
                        <a class="page-link"
                           href="<c:url value="/cart/showCartByPage?currentPage=${loop.index}"/>">${loop.index}</a>
                    </li>
                </c:forEach>
                <li class="page-item">
                    <a class="page-link"
                       href="<c:url value="/cart/showCartByPage?currentPage=${page+1<totalPages?page+1:totalPages}"/>">&raquo;</a>
                </li>
                <li class="page-item">
                    <a class="page-link"
                       href="<c:url value="/cart/showCartByPage?currentPage=${totalPages}&UserId=1"/>">尾页</a></li>
            </ul>
           <span>总记录数 ：${requestScope.pagemsg.totalCount }     总页数：${requestScope.pagemsg.totalPage}</span>
        </nav>
    </div>
</div>
<div id="hide_div" style="height:0px;visibility:hidden;"></div>
<div style="position:static;bottom:-20px;z-index: 101;width:100%;left:0px;">
  <div class="shopping_total" id = "J_totalMoneyBlock">
      <div style="color: #1d1f63;float: left;"><span style="font-size: 20px;font-family: 幼圆;font-stretch: extra-expanded">您选中了<span id="countBook"></span>件商品</span></div>
    <div class="shopping_total_right">
        <a class="total_btn fn-checkout"  onsubmit="" id="checkout_btn" onclick="Allcount()" dd_name="结算">结&nbsp;&nbsp;算</a>

        <div class="subtotal">
            <p><span class="cartsum">总计(不含运费)：</span><span id="payAmount" class="price"></span></p>

<%--            <p><span class="cartsum">已节省：</span><span id="totalFavor"></span></p>--%>
        </div>
    </div> 
    <div class="shopping_total_left" id="J_leftBar">
        <div id = "J_batchRemoveProductBox" style = "display: none;z-index:-1;left:0px;" class="pop_del"><p>您确定要批量删除商品吗？</p><a href="javascript:;" class="pop_btn fn-confirm-batchremovebox">确定</a><a href="javascript:;" class="pop_btn fn-close-batchremovebox">取消</a></div>
        <div id = "J_batchAddWishBox" style = "display: none;z-index:-1;left:85px;" class="pop_del col "><p>您确定要批量移入收藏吗？</p><a href="javascript:;" class="pop_btn fn-confirm-batchaddwish">确定</a><a href="javascript:;" class="pop_btn fn-close-batchwishbox">取消</a></div>
    </div> 
  </div>
</div>
<div id = "J_errorBox" style = "display: none;z-index:102" class="pop_del col">
    <p></p>
    <a class="pop_btn fn-close-removebox" href="javascript:;">确定</a>
</div>
<div id = "J_addToWishTipHtml" style = "display: none; position: absolute;"></div>
<div id = "J_addWishBox" style = "display: none" class="pop_del col "><p>移入收藏后，将不在购物车显示，是否继续操作？</p><a href="javascript:;" class="pop_btn fn-confirm-addwish">确定</a><a href="javascript:;" class="pop_btn fn-close-wishbox">取消</a></div>
<div id = "J_removeProductBox" style = "display: none;" class="pop_del"><p>您确定要删除商品吗？</p><a href="javascript:;" class="pop_btn fn-confirm-removebox">确定</a><a href="javascript:;" class="pop_btn fn-close-removebox">取消</a></div>
<div id = "J_removeGiftBox" style = "display: none;" class="pop_del"><p>您确定要删除赠品吗？</p><a href="javascript:;" class="pop_btn fn-confirm-removegiftbox">确定</a><a href="javascript:;" class="pop_btn fn-close-removebox">取消</a></div>
<div class="w960">
    <div class="empty" id="empty" style="display:none">
        <p>您的购物车还是空的，您可以：</p>
        <a href="http://www.dangdang.com" class="btn">去逛逛</a>
    </div>
    	<div class="shopping_ads" id="fn-weinituijian" style="display:none;"></div>
    	<div class="shopping_ads" id="fn-recent-view" style="display:none;"></div>
    	<div class="shopping_ads" id="J_alsobuy" style="display:none;"></div>
    	<div class="shopping_ads my_tui" id="hot_ad"></div>
    
    	<div class="shopping_ads" id="fn-my-wish" style="display:none;"></div>
    
</div>

<div id="mask"></div>
<div id="sema">
    <div id="size_color_box" class="size_color_box" dd_name="购物车换分色分码弹窗">
        <div class="pic_info clearfix">
            <a href="javascript:;" class="sc_close fn-close-ss"></a>
            <div class="show_pic">
                <a class="big" title="商品名称" href="##">
                    <span class="pic"><img class="fn-img" width="350" height="350" alt="商品名称"></span>
                </a>
            </div>
            <div class="show_info">
                <div class="head" name="Title_pub"> 
                    <h1 class="fn-data" data-set="title"></h1> 
                </div>
                <div class="buy_area">
                    <div class="clearfix" id="colorDivId">
                        <div class="show_info_left fn-data" data-set="colorname" ></div>
                        <div class="show_info_right o_h">
                            <ul class="color fn-colors" id="select_color_id">
                            </ul>
                        </div>
                    </div>
                    <div class="clearfix m_t8">
                        <div class="show_info_left">&nbsp;</div>
                        <div class="show_info_right c_red fn-errormsg"></div>
                    </div>
                    <div class="clearfix m_t8">
                        <div class="show_info_left">&nbsp;</div>
                        <div class="show_info_right clearfix">
                            <a id="changeSkuDivId" href="javascript:;" class="yes_id_do fn-semasubmit" dd_name="购物车换分色分码确认">确 认</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">
    if(typeof(window.DDAD_RDM) == 'undefined') {
	    window.DDAD_RDM = (new Date().getTime()).toString() + parseInt(Math.random()*(999999999-100000000)+100000000);
	}
	var ip=0;
 	var Tools = {
	trim : function(s){
		return s.replace(/^\s+|\s+$/g,"");
	},
	cookiefun : function(name, value, options) {
		if (typeof value != 'undefined') {
			options = options || {};
			var expires = '';
			if (typeof options.expires == 'number') {
				var date = new Date();
				date.setTime(date.getTime() + (options.expires * 24 * 60 * 60 * 1000));
				expires = '; expires=' + date.toGMTString();
			}
			var path = options.path ? '; path=' + options.path : '; path=/';
			var domain = options.domain ? '; domain=' + options.domain : '';
			var secure = options.secure ? '; secure' : '';
			document.cookie = [name, '=', encodeURIComponent(value), expires, path, domain, secure].join('');
			return null;
		} else {
			var cookieValue = null;
			if (document.cookie && document.cookie != '') {
				var cookies = document.cookie.split(';');
				for (var i = 0; i < cookies.length; i++) {
					var cookie = Tools.trim(cookies[i]);
						if (cookie.substring(0, name.length + 1) == (name + '=')) {
							cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
							break;
						}
					}
				}
				return cookieValue;
			}
		}
	};
	var NAMESPACE_CART = {}
	NAMESPACE_CART.isLogin = true
	NAMESPACE_CART.PROD_BASE_URL='http://product.dangdang.com/'
	NAMESPACE_CART.PROMO_BASE_URL='http://promo.dangdang.com/'
	NAMESPACE_CART.isDDADOpen = true
	NAMESPACE_CART.abOpen=''
	NAMESPACE_CART.couponJsUrl = 'http://static.ddimg.cn/js/coupon/autoActivity.js'
	NAMESPACE_CART.need4LevelCacheProvinceId = ',2_162,2_163,2_164,2_137,'
	NAMESPACE_CART.shippingThreshold = '49'
	NAMESPACE_CART.shippingExcludeProvince = ',171,172,173,165,154,'
	/**与接口降级有关的参数，布尔类型标识是否降级**/
	/**分色分码**/
	NAMESPACE_CART.EAPIDowngradeable_PRODUCT_API_SKU = false
	
</script>
<script type="application/javascript" charset="UTF-8" src="/shoppingcart/js/shoppingcount.js"  ></script>
<script type = "text/javascript" src = "/shoppingcart/js/slider.js?v=20181226"></script>
<script type = "text/javascript" src = "/shoppingcart/js/c.js?v=20181226" charset="utf-8"></script>
<script src="/shoppingcart/js/district_new.js?v=20181226"></script>
<script src="/shoppingcart/js/coupon.js?v=20181226"></script>
<script src="/shoppingcart/js/cart.js?v=20181226"></script>
<script type = "text/javascript" src = "/shoppingcart/js/abtest.js?v=20181226"></script>
<script type="text/javascript" src="http://a.dangdang.com/getJS.php?cpc=true&cpm=true&cpt=true?v=20181226" charset="UTF-8"></script>
<script type="text/javascript" src="/shoppingcart/js/d.js?v=20181226" charset="utf-8"></script>
<script type="text/javascript" src="/shoppingcart/js/e.js?v=20181226" charset="utf-8"></script>
<script type="text/javascript" src="/shoppingcart/js/f.js"></script>
<script type="text/javascript">
    $(function () {
        CC.cart()
    })
</script>
<script type="text/javascript">
     try{
	     DD_ADSMART.fetchCPT(11850,3,3);
	     if(NAMESPACE_CART.isDDADOpen){
	       DD_AD.fetchCPC(9, 0, '', 1, 'new','pers3');
	     }  
	 }catch(error){
	 	if ($("#hot_ad").html() == ''){
     	$("#hot_ad").hide();
	     }else{
	     	$("#hot_ad").show();
	     }
	 } 
     var google_tag_params = {
		ecomm_pagetype: 'mycart'
	 };
	 var google_conversion_id = 1066666760;
	 var google_custom_params = window.google_tag_params;
	 var google_remarketing_only = true;
</script> 
<link href="/shoppingcart/css/b.css?20160906" rel="stylesheet" type="text/css" />
<div id="footer">
<div class="footer">
	<div class="footer_nav_box">
		<div class="footer_copyright"><span>Copyright (C) xun书网 2019-2020, All Rights Reserved</span>
			<a href="http://www.hd315.gov.cn/beian/view.asp?bianhao=010202001051000098" target="_blank" class="footer_img" rel="nofollow">
				<img src="..images/validate.gif"></a><span><a href="http://www.miibeian.gov.cn/" target="_blank" rel="nofollow">京ICP证041189号</a></span><span>出版物经营许可证&nbsp;新出发京批字第直0673号</span></div>
	</div>
</div>
</div>
<script src="/index/js/shoppingNum.js" charset="UTF-8" type="text/javascript" ></script>
<script src="/shoppingcart/js/g.js?20160928" type="text/javascript"></script>
<script  type="text/javascript">login_session.browsePageOperate();</script>
<script src="/shoppingcart/js/k.js?20160928" type="text/javascript"></script>
<script type="text/javascript" src="/shoppingcart/js/h.js?20160928"></script>
<script type="text/javascript" src="/shoppingcart/js/i.js?20170619"></script>
<script type="text/javascript" src="/shoppingcart/js/j.js?20170619"></script>
<script type="text/javascript">
    var send_flag = true;
    var item_product_ids = "";
		send_flag = false;
	try {
		DDT.Api.getRpms(function(rpms){
		    if (send_flag) {
		    	$.ajax({
		    		  "type" : 'post',
		              "url": "orderTrace?append_items="+item_product_ids+"&referer=&prevReferer=&currentUrl=&operateCode=&page_tracing="+rpms,
		              "dataType": "json",
		              "success": function(data) {
		              }
		        });
		    }
		})
	} catch (error) {
		if (send_flag) {
		    	$.ajax({
		    		  "type" : 'post',
		              "url": "orderTrace?append_items="+item_product_ids+"&referer=&prevReferer=&currentUrl=&operateCode=",
		              "dataType": "json",
		              "success": function(data) {
		              }
		        });
		}
	}
</script>
</body>
</html>
