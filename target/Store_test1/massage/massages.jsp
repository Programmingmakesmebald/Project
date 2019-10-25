<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: pc--%>
<%--  Date: 2019/10/9--%>
<%--  Time: 16:58--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<span style="font-size:20px;">--%>
<%--    我的消息--%>
<%--</span>--%>

<%--<table border="1">--%>
<%--    <c:forEach items="${massages}" var="massage">--%>
<%--        <tr>--%>
<%--            <td>--%>
<%--                    系统提示：${massage.getContent()}!--%>
<%--            </td>--%>
<%--            <td>--%>
<%--                <span>--%>
<%--                    时间--%>
<%--                </span>--%>
<%--            </td>--%>
<%--        </tr>--%>

<%--    </c:forEach>--%>
<%--</table>--%>


<%--</body>--%>
<%--</html>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>xun书</title>

    <script src="/index/js/jquery_1.8.js"></script>
    <script src="/index/js/jquery_cookie.js"></script>
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css" type="text/css">
    <link rel="shortcut icon" href="/index/images/favicon.ico" type="image/x-icon" />
    <link href="/index/css/shopping_cart_new.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="/index/css/size_color.css"/>
    <link rel="stylesheet" href="/index/css/style.css"/>

    <link rel="stylesheet" href="/index/css/base.css" type="text/css" />
    <link rel="stylesheet" href="/index/css/moco.min.css" type="text/css" />
    <link rel="stylesheet" href="/index/css/common-less.css" type="text/css" />
    <link rel="stylesheet" href="/index/css/common-less（1）.css" type="text/css" />
    <link rel="stylesheet" href="/index/css/profile-less.css" type="text/css" />



</head>
<body style="padding-bottom:82px">
<script type="text/javascript">
    eval(function(p,a,c,k,e,r){e=function(c){return(c<a?'':e(parseInt(c/a)))+((c=c%a)>35?String.fromCharCode(c+29):c.toString(36))};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('r(1c 1H=="O"){o U;(p(){o k={1d:"1I.1J",1e:\'1K\',D:\'O\',1f:\'O\'};k.1g={1h:0,1L:"",F:8,1i:p(a){o b=l.1h?"1M":"1N";o c="";P(o i=0;i<a.B*4;i++){c+=b.1j((a[i>>2]>>((i%4)*8+4))&1k)+b.1j((a[i>>2]>>((i%4)*8))&1k)}u c},1l:p(x,e){x[e>>5]|=1O<<((e)%32);x[(((e+1P)>>>9)<<4)+14]=e;o a=1Q;o b=-1R;o c=-1S;o d=1T;P(o i=0;i<x.B;i+=16){o f=a;o g=b;o h=c;o j=d;a=l.v(a,b,c,d,x[i+0],7,-1U);d=l.v(d,a,b,c,x[i+1],12,-1V);c=l.v(c,d,a,b,x[i+2],17,1W);b=l.v(b,c,d,a,x[i+3],22,-1X);a=l.v(a,b,c,d,x[i+4],7,-1Y);d=l.v(d,a,b,c,x[i+5],12,1Z);c=l.v(c,d,a,b,x[i+6],17,-24);b=l.v(b,c,d,a,x[i+7],22,-25);a=l.v(a,b,c,d,x[i+8],7,26);d=l.v(d,a,b,c,x[i+9],12,-27);c=l.v(c,d,a,b,x[i+10],17,-28);b=l.v(b,c,d,a,x[i+11],22,-29);a=l.v(a,b,c,d,x[i+12],7,2a);d=l.v(d,a,b,c,x[i+13],12,-2b);c=l.v(c,d,a,b,x[i+14],17,-2c);b=l.v(b,c,d,a,x[i+15],22,2d);a=l.w(a,b,c,d,x[i+1],5,-2e);d=l.w(d,a,b,c,x[i+6],9,-2f);c=l.w(c,d,a,b,x[i+11],14,2g);b=l.w(b,c,d,a,x[i+0],20,-2h);a=l.w(a,b,c,d,x[i+5],5,-2i);d=l.w(d,a,b,c,x[i+10],9,2j);c=l.w(c,d,a,b,x[i+15],14,-2k);b=l.w(b,c,d,a,x[i+4],20,-2l);a=l.w(a,b,c,d,x[i+9],5,2m);d=l.w(d,a,b,c,x[i+14],9,-2n);c=l.w(c,d,a,b,x[i+3],14,-2o);b=l.w(b,c,d,a,x[i+8],20,2p);a=l.w(a,b,c,d,x[i+13],5,-2q);d=l.w(d,a,b,c,x[i+2],9,-2r);c=l.w(c,d,a,b,x[i+7],14,2s);b=l.w(b,c,d,a,x[i+12],20,-2t);a=l.z(a,b,c,d,x[i+5],4,-2u);d=l.z(d,a,b,c,x[i+8],11,-2v);c=l.z(c,d,a,b,x[i+11],16,2w);b=l.z(b,c,d,a,x[i+14],23,-2x);a=l.z(a,b,c,d,x[i+1],4,-2y);d=l.z(d,a,b,c,x[i+4],11,2z);c=l.z(c,d,a,b,x[i+7],16,-2A);b=l.z(b,c,d,a,x[i+10],23,-2B);a=l.z(a,b,c,d,x[i+13],4,2C);d=l.z(d,a,b,c,x[i+0],11,-2D);c=l.z(c,d,a,b,x[i+3],16,-2E);b=l.z(b,c,d,a,x[i+6],23,2F);a=l.z(a,b,c,d,x[i+9],4,-2G);d=l.z(d,a,b,c,x[i+12],11,-2H);c=l.z(c,d,a,b,x[i+15],16,2I);b=l.z(b,c,d,a,x[i+2],23,-2J);a=l.A(a,b,c,d,x[i+0],6,-2K);d=l.A(d,a,b,c,x[i+7],10,2L);c=l.A(c,d,a,b,x[i+14],15,-2M);b=l.A(b,c,d,a,x[i+5],21,-2N);a=l.A(a,b,c,d,x[i+12],6,2O);d=l.A(d,a,b,c,x[i+3],10,-2P);c=l.A(c,d,a,b,x[i+10],15,-2Q);b=l.A(b,c,d,a,x[i+1],21,-2R);a=l.A(a,b,c,d,x[i+8],6,2S);d=l.A(d,a,b,c,x[i+15],10,-2T);c=l.A(c,d,a,b,x[i+6],15,-2U);b=l.A(b,c,d,a,x[i+13],21,2V);a=l.A(a,b,c,d,x[i+4],6,-2W);d=l.A(d,a,b,c,x[i+11],10,-2X);c=l.A(c,d,a,b,x[i+2],15,2Y);b=l.A(b,c,d,a,x[i+9],21,-2Z);a=l.C(a,f);b=l.C(b,g);c=l.C(c,h);d=l.C(d,j)}u V(a,b,c,d)},J:p(q,a,b,x,s,t){u l.C(l.1m(l.C(l.C(a,q),l.C(x,t)),s),b)},v:p(a,b,c,d,x,s,t){u l.J((b&c)|((~b)&d),a,b,x,s,t)},w:p(a,b,c,d,x,s,t){u l.J((b&d)|(c&(~d)),a,b,x,s,t)},z:p(a,b,c,d,x,s,t){u l.J(b^c^d,a,b,x,s,t)},A:p(a,b,c,d,x,s,t){u l.J(c^(b|(~d)),a,b,x,s,t)},1n:p(a){o b=V();o c=(1<<l.F)-1;P(o i=0;i<a.B*l.F;i+=l.F)b[i>>5]|=(a.30(i/l.F)&c)<<(i%32);u b},C:p(x,y){o a=(x&W)+(y&W);o b=(x>>16)+(y>>16)+(a>>16);u(b<<16)|(a&W)},1m:p(a,b){u(a<<b)|(a>>>(32-b))},1o:p(s){u l.1i(l.1l(l.1n(s),s.B*l.F))}};k.X={1p:p(a){o b=Y(a)+"=",Q=K.L.E(b),Z=1q;r(Q>-1){o c=K.L.E(";",Q);r(c==-1){c=K.L.B}Z=31(K.L.18(Q+b.B,c))}u Z},19:p(a,b,c,d,e,f){o g=Y(a)+"="+Y(b);r(c 33 N){g+="; 34="+c.36()}r(d){g+="; 37="+d}r(e){g+="; 38="+e}r(f){g+="; 39"}K.L=g},3a:p(a,b,c,d){l.19(a,"",G N(0),b,c,d)}};k.3b={3c:p(a){o b=G 3d();r(a.E("?")>0){o c=a.18(a.E("?")+1);r(c.E("#")>0){c=c.18(0,c.E("#"))}o d=c.1a("&");P(o i=0;i<d.B;i++){b[d[i].1a("=")[0]]=d[i].1a("=")[1]}}u b}};k.3e=p(a,b,c){r(a.1r){a.1r(b,c,1s)}R r(a.1t){a.1t("T"+b,c)}R{a["T"+b]=c}};k.3f=p(a,b,c){r(a.1u){a.1u(b,c,1s)}R r(a.1v){a.1v("T"+b,c)}R{a["T"+b]=1q}};k.3g=p(x){o a=3h(x);r(3i(a)){u 0.1w}o a=I.3j(x*1x)/1x;o b=a.3k();o c=b.E(\'.\');r(c<0){c=b.B;b+=\'.\'}3l(b.B<=c+2){b+=\'0\'}u b};k.1y=p(){o n=G N();o y=n.3m()+\'\';o m=n.3n()+1;r(m<10)m="0"+m;o d=n.3o();r(d<10)d="0"+d;o H=n.3p();r(H<10)H="0"+H;o M=n.3q();r(M<10)M="0"+M;o S=n.3r();r(S<10)S="0"+S;o a="1w"+n.3s();a=a.1b(a.B-3,3);o b=I.1z(1A+I.1B()*1C);o c=I.1z(1A+I.1B()*1C);o e=y+m+d+H+M+S+a+b+c+k.1e;o f=k.1g.1o(e);f=k.1D(f);u y+m+d+H+M+S+a+f+b+c};k.1D=p(a){o b=3t(a.1b(0,8),16);o c=3u(b).1b(0,6);o d=c.B;r(d<6){c+=k.1E(\'0\',I.3v(6-d))}u c};k.1E=p(a,b){u G V(b+1).3w(a)};k.1F=p(){o t=G N();u t.3x()};k.1G=p(){k.D=k.X.1p("D");r(1c k.D==\'O\'||!/^\\d{35}$/.3y(k.D)){o a=G N(3z,1,1);k.D=k.1y();k.X.19("D",k.D,a,"/",k.1d)}k.1f=k.1F()};U=k;U.1G()})()}',62,222,'|||||||||||||||||||||this|||var|function||if|||return|md5_ff|md5_gg|||md5_hh|md5_ii|length|safe_add|__permanent_id|indexOf|chrsz|new||Math|md5_cmn|document|cookie||Date|undefined|for|cookieStart|else||on|ddclick_head_functions|Array|0xFFFF|CookieUtil|encodeURIComponent|cookieValue|||||||||substring|set|split|substr|typeof|__cookieDomain|__ddclick_hash_key|__timestap|Md5Util|hexcase|binl2hex|charAt|0xF|core_md5|bit_rol|str2binl|hex_md5|get|null|addEventListener|false|attachEvent|removeEventListener|detachEvent|00|100|createPermanentID|floor|100000|random|900000|formatHashCode|str_repeat|initTime|init|ddclick_page_tracker|dangdang|com|DDClick521|b64pad|0123456789ABCDEF|0123456789abcdef|0x80|64|1732584193|271733879|1732584194|271733878|680876936|389564586|606105819|1044525330|176418897|1200080426|||||1473231341|45705983|1770035416|1958414417|42063|1990404162|1804603682|40341101|1502002290|1236535329|165796510|1069501632|643717713|373897302|701558691|38016083|660478335|405537848|568446438|1019803690|187363961|1163531501|1444681467|51403784|1735328473|1926607734|378558|2022574463|1839030562|35309556|1530992060|1272893353|155497632|1094730640|681279174|358537222|722521979|76029189|640364487|421815835|530742520|995338651|198630844|1126891415|1416354905|57434055|1700485571|1894986606|1051523|2054922799|1873313359|30611744|1560198380|1309151649|145523070|1120210379|718787259|343485551|charCodeAt|decodeURIComponent||instanceof|expires||toGMTString|path|domain|secure|unset|URLUtil|getKeyValueArray|Object|addEventHandler|removeEventHandler|changeTwoDecimal|parseFloat|isNaN|round|toString|while|getFullYear|getMonth|getDate|getHours|getMinutes|getSeconds|getMilliseconds|parseInt|String|abs|join|getTime|test|2020'.split('|'),0,{}))</script>
<link href="/index/css/a.css" rel="stylesheet" type="text/css">
<script charset="gb2312" type="text/javascript">var width = 0; narrow = 1;</script>
<script src="/index/js/a.js" charset="gb2312" type="text/javascript"></script>
<script src="/index/js/b.js" charset="gb2312" type="text/javascript"></script>
<div id="hd">
    <div id="tools">
        <div class="tools">
            <div class="ddnewhead_operate" dd_name="顶链接">
                <ul class="ddnewhead_operate_nav">
                    <li class="ddnewhead_cart"><a href="javascript:AddToShoppingCart(0);" name="购物车" dd_name="购物车"><i class="icon_card"></i>购物车<b id="cart_items_count"></b></a></li>
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
                    <span><a href="/index/index.jsp">返回主页</a></span>
                    <span><a href="/massage/GetMassage">我的消息</a></span>
                    <span id=""><span class="hi hi_none">欢迎光临小xun,
                    <%if(session.getAttribute("user")!=null){
                        out.print(session.getAttribute("UserName"));
                    %> &nbsp; <span><a href="/user/unlogin">退出</a></span><%
                        }else {
                        %></span><a href="/index/login.jsp" class="login_link">登录</a><a href="/index/regist.jsp">免费注册</a></span><%
                    }%>
                </div>
                <div class="new_head_znx" id="znx_content" style="display:none;"></div>
            </div>
        </div>
    </div>
    <div id="header_end"></div>
</div>
<form action="http://search.dangdang.com/search.aspx" id="bootpagetopSearch" name="bootpagetopSearch" method="GET"></form>
<script type="text/javascript">var nick_num = 0;initHeaderOperate();</script>
<div class="shoppingcart_wrapper" id="ad_cpt_11850"></div>

<div>

<%--        <div>--%>

<%--        </div>--%>

<div style="float: top;width: 80%;height: 80%;margin-left: 10%;">
    <center>
    <table  style="width:80%;border: #0d0d0d;border: 2px">
        <caption style="font-size: 30px;font-weight: bolder;text-align: center">
            我的消息
        </caption>
        <tr style="font-size: 20px;font-weight: bolder;color: #0d0d0d;text-align: center">
            <th width="15%">
                发送者
            </th>
            <th width="50%">
                发送内容
            </th>
            <th width="20%">
                发送时间
            </th>
            <th width="15%">
                消息状态
            </th>
        </tr>

        <c:forEach items="${massages}" var="massage">
            <tr>
                <td>系统提示</td>
                <td>${massage.getContent()}</td>
                <td>${massage.getFormatTime()}</td>
                <td>${massage.getMsgstate()}</td>
            </tr>
        </c:forEach>

    </table>
    </center>
<%--    <nav aria-label="Page navigation"style="float:left;margin-left: 44%;margin-top: 490px">--%>
<%--        <ul class="pagination">--%>
<%--            <li>--%>
<%--                <a href="${pageContext.request.contextPath}/massage/GetMassage?page=${1}">首页</a>--%>
<%--            </li>--%>
<%--            <c:if test="${pageInfo.pageNum>1}">--%>
<%--                <li>--%>
<%--                    <a href="${pageContext.request.contextPath}/massage/GetMassage?page=${pageInfo.pageNum-1}" aria-label="Previous">--%>
<%--                        <span aria-hidden="true">上一页</span>--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--            </c:if>--%>
<%--            <c:forEach begin="${pageInfo.pageNum>2?pageInfo.pageNum-2:1}" end="${pageInfo.pageNum<pageInfo.pages-2?pageInfo.pageNum+2:pageInfo.pages}" var="i">--%>
<%--                <c:if test="${pageInfo.pageNum==i}">--%>
<%--                    <li class="active"> <a href="${pageContext.request.contextPath}/massage/GetMassage?page=${i}">${i}</a></li>--%>
<%--                </c:if>--%>
<%--                <c:if test="${pageInfo.pageNum!=i}">--%>
<%--                    <li> <a href="${pageContext.request.contextPath}/massage/GetMassage?page=${i}">${i}</a></li>--%>
<%--                </c:if>--%>
<%--            </c:forEach>--%>
<%--            <c:if test="${pageInfo.pageNum<pageInfo.pages}">--%>
<%--                <li>--%>
<%--                    <a href="${pageContext.request.contextPath}/massage/GetMassage?page=${pageInfo.pageNum+1}" aria-label="Next">--%>
<%--                        <span aria-hidden="true">下一页</span>--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--            </c:if>--%>
<%--            <li>--%>
<%--                <a href="${pageContext.request.contextPath}/massage/GetMassage?page=${pageInfo.pages}">末尾</a>--%>
<%--            </li>--%>
<%--            <li>--%>
<%--                <a>共${pageInfo.pages}页</a>--%>
<%--            </li>--%>
<%--        </ul>--%>
<%--    </nav>--%>
<%--    <div class="row justify-content-center" style="float:left;margin-left: 44%;margin-top: 490px">--%>
<%--        <div>--%>
<%--            <nav aria-label="Page navigation">--%>
<%--                <ul class="pagination">--%>
<%--                    <li class="page-item"><a class="page-link" href="<c:url value="/massage/GetMassage?page=1"/>">首页</a></li>--%>
<%--                    <li class="page-item"><a class="page-link"--%>
<%--                                             href="<c:url value="/massage/GetMassage?page=${page-1>1?page-1:1}"/>">&laquo;</a>--%>
<%--                    </li>--%>
<%--                    <c:forEach begin="1" end="${totalPages}" varStatus="loop">--%>
<%--                        <c:set var="active" value="${loop.index==page?'active':''}"/>--%>
<%--                        <li class="page-item ${active}">--%>
<%--                            <a class="page-link"--%>
<%--                               href="<c:url value="/massage/GetMassage?page=${loop.index}"/>">${loop.index}</a>--%>
<%--                        </li>--%>
<%--                    </c:forEach>--%>
<%--                    <li class="page-item">--%>
<%--                        <a class="page-link"--%>
<%--                           href="<c:url value="/massage/GetMassage?page=${page+1<totalPages?page+1:totalPages}"/>">&raquo;</a>--%>
<%--                    </li>--%>
<%--                    <li class="page-item">--%>
<%--                        <a class="page-link"--%>
<%--                           href="<c:url value="/massage/GetMassage?page=${totalPages}"/>">尾页</a></li>--%>
<%--                </ul>--%>
<%--            </nav>--%>
<%--        </div>--%>
<%--    </div>--%>
</div>
</div>
    <script src="/bootstrap/js/bootstrap.min.js"></script>
    <script src="/index/js/ssologin.js"></script>
    <script type="text/javascript" src="/index/js/sea.js"></script>
    <script type="text/javascript" src="/index/js/sea_config.js"></script>
    <script type="text/javascript">seajs.use("../"+OP_CONFIG.module+"/"+OP_CONFIG.page);</script>
    <script src="/index/js/jquery-3.4.0.min.js"></script>




    <div style="display: none">
        <script type="text/javascript">
            var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
            document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Ff0cfcccd7b1393990c78efdeebff3968' type='text/javascript'%3E%3C/script%3E"));
            (function (d) {
                window.bd_cpro_rtid="rHT4P1c";
                var s = d.createElement("script");s.type = "text/javascript";s.async = true;s.src = location.protocol + "js/rt.js";
                var s0 = d.getElementsByTagName("script")[0];s0.parentNode.insertBefore(s, s0);
            })(document);
        </script>
        <script>
            (function(){
                var bp = document.createElement('script');
                bp.src = 'js/push.js';
                var s = document.getElementsByTagName("script")[0];
                s.parentNode.insertBefore(bp, s);
            })();
        </script>
    </div>



</body>
</html>
