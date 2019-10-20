<%@ page import="edu.heuet.Pojo.BookInfo" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>小xun图书</title>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="description" content="详情">
    <meta charset="utf-8">
    <link href="/index/css/book.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.css" >
    <script src="/bootstrap/jquery-3.4.0.min.js"></script>
    <script src="/bootstrap/js/bootstrap.js"></script>
    <script src="/??js/jquery.min.js,js/jcarousellite.min.js,js/jquery.lazyload.min.js,js/juicer.min.js,js/json2.min.js?v=7386480593" charset="gbk"></script>
</head>
<body>

<script>
    var prodCurrItem = 0;
    var prodSpuInfo = {"productId":"23579654","mainProductId":"23579654","productName":"\u4e09\u4f53\uff1a\u5168\u4e09\u518c \u5218\u6148\u6b23\u4ee3\u8868\u4f5c\uff0c\u4e9a\u6d32\u9996\u90e8\u201c\u96e8\u679c\u5956\u201d\u83b7\u5956\u4f5c\u54c1\uff01","productSubName":"","url":"\/23579654.html","shopId":"0","isCatalog":"0","isOverSea":"0","isWireless":"0","isPresent":"0","isVirtualProduct":"0","isSoldOut":"0","displayStatus":"0","categoryPath":"01.03.41.00.00.00","describeMap":"01000031416:1","categoryId":"16837","template":"publish","productType":"0","templateId":"0","mediumId":"0","supId":"DDKW5679733","pathName":"\u79d1\u5e7b","isGiftPackaging":"1","isSupportReturnPolicy":"1","shopType":"0","energyLevel":"-1","icon":[],"ddShopId":"292","isShowOriginalPrice":"1","isRecyclable":"0","isShowRobot":"1","isPod":"0","podId":"0","isJit":"0","eBookId":"1901104637"};
    var isDestAreaEmpty = 0;
    var isWidth = 1210 < screen.width;
    !isWidth && (document.body.className = 'narrow_page');
    var requestUrl = window.location.href;
    var point = '';
    if (requestUrl.indexOf("point") != -1) {
        point = requestUrl.substring(requestUrl.indexOf("point") + 6, requestUrl.lastIndexOf("point") + 5);
    }
    window.onunload = function () {
        window.scrollTo(0, 0);
    }

    var imipUrl = "http://static.dangdang.com/imip/imip.js";
    var couponJs = "http://static.ddimg.cn/js/coupon/autoActivity.js"
    var localUrl = 'http://' + window.location.host + '/index.php';
    var baseUrl = 'http://product.dangdang.com/';
    var reg = /\.dangdang\.com/;
    if (!window.localUrl.match(reg)) {
        var script = document.createElement("script");
        script.src = "/index/js/initCookie.js";
        $("head").append(script);
    }
</script>

<script src="/index/js/item.js" language="javaScript"></script>
<script type="text/javascript">
</script>
<link href="/index/css/header.css" rel="stylesheet" type="text/css">
<script charset="gb2312" type="text/javascript">var width = 1; narrow = 0;</script>
<script src="//static.dangdang.com/js/header2012/pagetop2015_0827.js?20180907" charset="gb2312" type="text/javascript"></script>
<script src="//static.dangdang.com/js/header2012/dd.menu-aim.js?20180907" charset="gb2312" type="text/javascript"></script>


<div id="hd">
    <div id="tools">
        <div class="tools">
            <div class="ddnewhead_operate" dd_name="顶链接">
                <ul class="ddnewhead_operate_nav">

                    <li class="hover "><a class="menu_btn" href="javascript:void(0);" style="cursor:default;" name="ddkf_0" dd_name="客户服务" id="a_bzzxchannel" onmouseover="showgaoji('a_bzzxchannel','__ddnav_bzzx');" onmouseout="hideotherchannel('a_bzzxchannel','__ddnav_bzzx');">客户服务</a>
                        <ul class="ddnewhead_gcard_list" id="__ddnav_bzzx" onmouseover="showgaoji('a_bzzxchannel','__ddnav_bzzx');" onmouseout="hideotherchannel('a_bzzxchannel','__ddnav_bzzx');">
                            <li><a target="_blank" href="" name="ddkf_2" dd_name="帮助中心">帮助中心</a></li>
                            <li><a target="_blank" href="" name="ddkf_3" dd_name="自助退换货">自助退换货</a></li>
                            <li><a target="_blank" href="" name="tsjy_2" dd_name="自助发票" rel="nofollow">自助发票</a></li>
                            <li><a target="_blank" href="" name="ddkf_4" dd_name="联系客服">联系客服</a></li>
                            <li><a target="_blank" href="" name="tsjy_1" dd_name="我要投诉" rel="nofollow">我要投诉</a></li>
                        </ul>
                    </li>
                </ul>
                <div class="new_head_znx" id="znx_content" style="display:none;"></div>
                <div class="ddnewhead_welcome" display="none;">
                    <span><a href="/massage/GetMassage">我的消息</a></span>
                    <span id=""><span class="hi hi_none">欢迎光临小xun,
                    <%if(session.getAttribute("user")!=null){
                        out.print(session.getAttribute("UserName"));
                    %> &nbsp; <span><a href="/user/unlogin">退出</a></span><%
                        }else {
                        %></span><a href="/index/login.jsp" class="login_link">登录</a><a href="/index/regist.jsp">免费注册</a></span><%
                    }%>
                </div>
                <div class="ddnewhead_area">
                    <a href="javascript:void(0);" id="area_one" class="ddnewhead_area_a" onmouseover="show_area_list();" onmouseout="hidden_area_list();">送至：<span id="curent_area"></span></a>
                    <ul class="ddnewhead_area_list" style="display: none;" id="area_list" onmouseover="this.style.display='block';" onmouseout="this.style.display='none';">
                        <li><a href="javascript:void(0);" onclick="change_area('111','北京')" num="111">北京</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('112','天津')" num="112">天津</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('113','河北')" num="113">河北</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('114','山西')" num="114">山西</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('115','内蒙古')" num="115">内蒙古</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('121','辽宁')" num="121">辽宁</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('122','吉林')" num="122">吉林</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('123','黑龙江')" num="123">黑龙江</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('131','上海')" num="131">上海</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('132','江苏')" num="132">江苏</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('133','浙江')" num="133">浙江</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('134','安徽')" num="134">安徽</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('135','福建')" num="135">福建</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('136','江西')" num="136">江西</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('137','山东')" num="137">山东</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('141','河南')" num="141">河南</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('142','湖北')" num="142">湖北</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('143','湖南')" num="143">湖南</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('144','广东')" num="144">广东</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('145','广西')" num="145">广西</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('146','海南')" num="146">海南</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('150','重庆')" num="150">重庆</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('151','四川')" num="151">四川</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('152','贵州')" num="152">贵州</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('153','云南')" num="153">云南</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('154','西藏')" num="154">西藏</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('161','陕西')" num="161">陕西</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('162','甘肃')" num="162">甘肃</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('163','青海')" num="163">青海</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('164','宁夏')" num="164">宁夏</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('165','新疆')" num="165">新疆</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('171','台湾')" num="171">台湾</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('172','香港')" num="172">香港</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('173','澳门')" num="173">澳门</a></li>
                        <li><a href="javascript:void(0);" onclick="change_area('174','钓鱼岛')" num="174">钓鱼岛</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div id="header_end"></div>
    <!--CreateDate  2019-10-08 18:30:02-->
    <div style="position:relative;" class="logo_line_out">
    <div class="logo_line" dd_name="搜索框">
        <div class="logo">
            <a href="/index/index.jsp"><img src="/index/images/15691441038791.png" />
            </a>
        </div>
        <div class="search">
            <form action="" name="searchform"  id="form_search_new" onsubmit="return searchsubmit();"  method="GET">
                <label  for="key_S" class="label_search" id="label_key" onclick="this.style.color='rgb(255, 255, 255)';" style="visibility: visible; color: rgb(102, 102, 102);" >日历2020</label>
                <input type="text" class="text gray"  name="key" ID="key_S" autocomplete="off" onclick="key_onclick(event);" onfocus="key_onfocus(event);"  onblur="key_onblur();" onbeforepaste="onpaste_search();"/><a href="javascript:void(0);" onclick="clearkeys();" class="del-keywords"></a><span class="select"  onmouseover="allCategoryShow();"  onmouseleave="allCategoryHide();" onmouseout='if("\v"!="v"){ allCategoryHide();}'><span id="Show_Category_Name" dd_name="全部分类">全部分类</span><span class="icon"></span>
                <div id="search_all_category" class="select_pop" style="height:0px;padding: 0px;border-width: 0px;" dd_name="搜索分类">
                    <a href="/book/main" onclick="selectCategory('',this);" ><span id="Show_Category_Name" dd_name="全部分类">全部分类</span></a>
                    <a href="/book/main?BookType=10" onclick="selectCategory('100000',this);" dd_name="尾品汇"><span>常用必修</span></a>
                    <a href="/book/main?BookType=20" onclick="selectCategory('01.00.00.00.00.00',this);" dd_name="图书"><span>专业课本</span></a>
                    <a href="/book/main?BookType=30" onclick="selectCategory('98.00.00.00.00.00',this);" dd_name="电子书"><span>休闲小说</span></a>
                    <a href="/book/main?BookType=40" onclick="selectCategory('03.00.00.00.00.00',this);" dd_name="音像"><span>考研考级</span></a>
                    <a href="/book/main?BookType=50" onclick="selectCategory('05.00.00.00.00.00',this);" dd_name="影视"><span>其他资料</span></a>
                </div>
            </span>
                <input type="hidden" id="default_key" value="日历2020"/>
                <input type="submit" id="search_btn" dd_name="搜索按钮"  style="display:none"/>
                <input id="SearchFromTop" style="display:none" type="hidden" name="SearchFromTop" value="1"/>
                <input type="button" id="suggest_product_btn" name="suggestproduct_btn"  style="display:none" onclick="void(0)"/>
                <input type="button" id="suggest_class_btn" name="suggestclass_btn"  style="display:none" onclick="void(0)"/>
                <input type="submit" id="suggest_searchkey_btn" name="suggestsearchkey_btn"  style="display:none" dd_name="搜索按钮"/>
                <input type="hidden" id="catalog_S" name="catalog" value="" >
                <input type="button" class="button" dd_name="搜索按钮" onclick="javascript:document.getElementById('search_btn').click();"/>
            </form>
        </div>
        <div class="search_bottom">
            <div class="search_hot">热搜:
                <a href="http://search.dangdang.com/?key=%C1%CB%B2%BB%C6%F0%B5%C4%D6%D0%B9%FA" name="hotword" target="_blank">了不起的中国</a>
                <a href="http://search.dangdang.com/?key=%B0%CD%C0%AD%B0%CD%C0%AD" name="hotword" target="_blank">巴拉巴拉</a>
                <a href="http://search.dangdang.com/?key=%CE%D2%BA%CD%CE%D2%B5%C4%D7%E6%B9%FA" name="hotword" target="_blank">我和我的祖国</a>
                <a href="http://search.dangdang.com/?key=%B4%BA%C8%D5%D0%F2%C7%FA" name="hotword" target="_blank">春日序曲</a>
                <a href="http://search.dangdang.com/?key=%C3%EB%C9%B11%D4%AA%C7%C0" name="hotword" target="_blank">秒杀1元抢</a></div>
            <a href="http://search.dangdang.com/advsearch" class="search_advs" target="_blank" name="ddnav_adv_s" dd_name="高级搜索">高级搜索</a>
        </div>
        <div id="suggest_key" class="suggest_key" style="display:none;" ></div>
        <div class="ddnew_cart"><a href="/cart/showCartByPage" name="shoppingcart" dd_name="购物车"><i class="icon_card"></i>购物车<b id="shoppingcount"></b></a></div>
        <div class="ddnew_order"><a target="_blank" href="http://myhome.dangdang.com/myOrder" name="我的订单" dd_name="我的订单" rel="nofollow">我的订单<b id="unpaid_num" style="color:#ff2832;font:bold 12px Arial;"></b></a></div>
    </div>
</div><div class="nav_top" dd_name="一级导航条">
    <div class="nav_top">
        <ul>
            <li class="all"><a href="http://category.dangdang.com/?ref=www-0-C" id="a_category" name="cate" class="sort_button" onmouseover=showCategory('a_category','__ddnav_sort','//static.dangdang.com/js/header2012/categorydata_new.js?20180907'); onmouseout=closeCategory('__ddnav_sort'); dd_name="全部商品分类" target="_blank">全部商品分类</a></li>
            <script language="javascript">document.write(is_narrow());</script>
        </ul>
    </div>
</div><div class="home_nav_l_box">
    <div class="home_nav_l" id="nav_l" style="display:none;">

        <div class="new_pub_nav_box"  dd_name="左侧分类导航" style="display:none;" id="__ddnav_sort" onmouseover="showdiv(event,'__ddnav_sort');" onmouseout="hiddenCategory(event,'__ddnav_sort');">
            <span class="new_pub_line_a"></span>
            <span class="new_pub_line_b"></span>
            <div class="new_pub_nav_shadow" id="menu_list">
                <ul class="new_pub_nav" id="menulist_content">
                    <li>
                        <span style="font-size: 13px;font-weight: bold;margin-left: 2px;">常用必修:</span><br/>
                        <span style="font-size: 8px;">
                            <a href="/book/main?BookType=101">数学</a>、<a href="/book/main?BookType=102">英语</a>、<a href="/book/main?BookType=103">马原</a>、<a href="/book/main?BookType=104">毛概</a><br/>
                            <a href="/book/main?BookType=105">高数</a>、<a href="/book/main?BookType=106">线性代数</a>、<a href="/book/main?BookType=107">概率论</a><br/>
                            <a href="/book/main?BookType=100">其他</a></span><br/>
                        <span style="font-size: 13px;font-weight: bold;margin-left: 2px;">专业课本:</span><br/>
                        <span style="font-size: 8px;"><a href="/book/main?BookType=201">数学物理 </a>、<a href="/book/main?BookType=202">专业英语</a><br/>
                            <a href="/book/main?BookType=203">政治经管</a>、<a href="/book/main?BookType=204">电子计算机</a><br/>
                            <a href="/book/main?BookType=205">土木机械</a>、<a href="/book/main?BookType=200">其他</a></span><br/>
                        <span style="font-size: 13px;font-weight: bold;margin-left: 2px;">休闲小说:</span><br/>
                        <span style="font-size: 8px;"><a href="/book/main?BookType=301">言情 </a>、<a href="/book/main?BookType=302">玄幻</a>、<a href="/book/main?BookType=303">科幻</a>
                            <a href="/book/main?BookType=300">其他</a></span><br/>
                        <span style="font-size: 13px;font-weight: bold;margin-left: 2px;">考研考级:</span><br/>
                        <span style="font-size: 8px;">
                            <a href="/book/main?BookType=401">考研资料 </a>、<a href="/book/main?BookType=402">计算机二级</a><br/>
                            <a href="/book/main?BookType=403">英语四六级</a>、<a href="/book/main?BookType=404">雅思托福</a><br/>
                            <a href="/book/main?BookType=405">教资</a>、<a href="/book/main?BookType=406">会计</a>、<a href="/book/main?BookType=400">其他</a></span><br/>
                        <a href="/book/main?BookType=500"> <span style="font-size: 13px;font-weight: bold;margin-left: 2px;">其他资料</span></a>
                    </li>
                </ul>
                </ul>
                <div class="new_pub_nav_pop" style="display: none;" id="__ddnav_sort1"></div>
                <div class="new_pub_nav_pop" style="display: none;" id="__ddnav_sort2"></div>
                <div class="new_pub_nav_pop" style="display: none;" id="__ddnav_sort3"></div>
                <div class="new_pub_nav_pop" style="display: none;" id="__ddnav_sort4"></div>
                <div class="new_pub_nav_pop" style="display: none;" id="__ddnav_sort5"></div>
                <div class="new_pub_nav_pop" style="display: none;" id="__ddnav_sort6"></div>
                <div class="new_pub_nav_pop" style="display: none;" id="__ddnav_sort7"></div>
                <div class="new_pub_nav_pop" style="display: none;" id="__ddnav_sort8"></div>
                <div class="new_pub_nav_pop" style="display: none;" id="__ddnav_sort9"></div>
                <div class="new_pub_nav_pop" style="display: none;" id="__ddnav_sort10"></div>
                <div class="new_pub_nav_pop" style="display: none;" id="__ddnav_sort11"></div>
                <div class="new_pub_nav_pop" style="display: none;" id="__ddnav_sort12"></div>
                <div class="new_pub_nav_pop" style="display: none;" id="__ddnav_sort13"></div>
                <div class="new_pub_nav_pop" style="display: none;" id="__ddnav_sort14"></div>
                <div class="new_pub_nav_pop" style="display: none;" id="__ddnav_sort15"></div>
                <div class="new_pub_nav_pop" style="display: none;" id="__ddnav_sort16"></div>
            </div>
        </div>
    </div>
</div>
</div>    <%
    BookInfo bookInfo=(BookInfo) request.getAttribute("bookInfos");
//    List<BookPicture> bookPictures=(List<BookPicture>) request.getAttribute("bookPictures");

    List<String> imageList=new ArrayList<String>();
%>
<%
    String path=bookInfo.getPath();
    String[] pathList=path.split(",");
    for (String pathlist:pathList) {
        imageList.add(pathlist);
    }
%>

<script type="text/javascript">
    var newsuggesturl = "//schprompt.dangdang.com/suggest_new.php?";
    var nick_num = 1;
    initHeaderOperate();Suggest_Initialize("key_S");
    if(!window.onload){
        window.onload=function(){if(sug_gid("label_key").style.visibility=="visible")sug_gid(search_input_id).value="";}
    }else{
        var funcload=window.onload;
        window.onload=function(){funcload();if(sug_gid("label_key").style.visibility=="visible")sug_gid(search_input_id).value="";}
    }
    ddmenuaim(document.getElementById("menulist_content"),{activate: activateSubmenu,deactivate: deactivateSubmenu});
</script><div class="product_wrapper">
    <div id="ad_cpt_top_16837" class="topbanner_all"></div>    <!-- 面包屑 begin -->

    <div class="breadcrumb" id="breadcrumb" dd_name="顶部面包屑导航" ddt-area="000">
        <a href='http://book.dangdang.com/book.jsp' name='__Breadcrumb_pub' target='_blank' class='domain'><b>图书</b></a>
        <span class="gt">&gt;</span><span><%=bookInfo.getBookName()%></span>
        <div class="outlets" style="display:none" id="bread-crumb-outlets">
            <a class="o_close hidden" style="display: none;"></a>
            <a class="o_icon" href=" http://v.dangdang.com/" title="尾品汇" target="_blank" name="go_outlets">
                <img src="/index/images/outlets.png" alt="尾品汇">
            </a>
            <a class="o_banner hidden" id="olbp" href=" http://v.dangdang.com/17862_3533_1" target="_blank" name="Go_pinpai" style="display: none;">
                <img src="" class="J-outlets-img">
            </a>
        </div>
    </div>


    <script  type="application/javascript" charset="UTF-8">
        var xhr=new XMLHttpRequest();
        xhr.open("post","/book/addFrequent");
        xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        xhr.send("bookId="+<%=bookInfo.getBookId()%>);
        xhr.onreadystatechange=function () {
            if(xhr.status==200&&xhr.readyState==4){

            }
        }
    </script>
    <!-- 面包屑 end -->
    <!-- 图书展示区 begin -->
    <div class="product_main clearfix" dd_name="单品区域">
        <div class="pic_info">
            <!-- 大图区开始 -->

            <div class="pic" id="largePicDiv">
                <a href="javascript:;" dd_name="大图" class="img">
                    <img id="largePic" alt="<%=bookInfo.getBookName()%>！&#10;"
                         src="<%=imageList.get(0)%>"

                         width="320" height="320"
                            />
                    <div id="moveMask" class="zoom_pup" style='position: absolute;background: url(/index/images/zoom_pup.png);display:none'></div>
                </a>
                <div style="display:none" id="promo-icon-tpl">
                    <script type="text/html" data-type="flash">
                        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=9,0,28,0" width="68" height="68">
                            <param name="movie" value="${url}">
                            <param name="quality" value="high">
                            <param name="FlashVars" value="discount=${discount}">
                            <param name="wmode" value="transparent">
                            <embed src="${url}" quality="high" wmode="transparent" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="68" height="68">
                        </object>
                    </script>

                </div>

                <div class="big_pic" style="display: none;" id="detailPicDiv">
                    <img src="http://img3m4.ddimg.cn/32/35/23579654-1_u_3.jpg"
                         alt="<%= bookInfo.getBookName()%>"
                         height="800" width="800" id="detailPic">
                </div>

                <img id="main_img_lable" class="cool_label_80" style="display:none;" src="">

            </div>
            <div class="masks" id="modalMainImg" style="display:none">
                <div class="masks_bg">
                    <iframe></iframe>
                </div>
                <div class="large_image">
                    <a href="javascript:;" class="close" id="masksClose"></a>
                    <div onselectstart="return false;" unselectable="on" class="large_image_pic">
                        <div class="large_l" id="mask-left">
                        </div>
                        <div class="large_r" id="mask-right">
                        </div>
                        <img alt="" src="http://img3m4.ddimg.cn/32/35/23579654-1_u_3.jpg" title="" id="modalBigImg">
                        <!--            <img alt="" src="--><!--" title="" id="modalBigImg">-->
                    </div>
                    <div class="large_wrap_right">
                        <a href="javascript:;" class="btn_a prev" id="mask-up"></a>
                        <a href="javascript:;" class="btn_a next" id="mask-down"></a>
                        <div class="img_list" id="mask-small-list">
                            <ul id="mask-small-list-slider">

                                <!--                    --><!--                        <li><a href="javascript:;" data-imghref="--><!--">-->
                                <!--                                <img src="--><!--">-->
                                <!--                            </a></li>-->
                                <!--                    -->                                                                        <li><a href="javascript:;" data-imghref="http://img3m4.ddimg.cn/32/35/23579654-1_u_3.jpg">
                                <img src="http://img3m4.ddimg.cn/32/35/23579654-1_x_3.jpg"></a></li>
                                <li><a href="javascript:;" data-imghref="http://img3m4.ddimg.cn/32/35/23579654-2_u_5.jpg"><img src="http://img3m4.ddimg.cn/32/35/23579654-2_x_5.jpg"></a></li>
                                <li><a href="javascript:;" data-imghref="http://img3m4.ddimg.cn/32/35/23579654-3_u_3.jpg"><img src="http://img3m4.ddimg.cn/32/35/23579654-3_x_3.jpg"></a></li>
                                <li><a href="javascript:;" data-imghref="http://img3m4.ddimg.cn/32/35/23579654-4_u_3.jpg"><img src="http://img3m4.ddimg.cn/32/35/23579654-4_x_3.jpg"></a></li>
                                <li><a href="javascript:;" data-imghref="http://img3m4.ddimg.cn/32/35/23579654-5_u_3.jpg"><img src="http://img3m4.ddimg.cn/32/35/23579654-5_x_3.jpg"></a></li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            本书图片：<br>
            <%
                for(String image :imageList){
            %>
            <img src="<%=image%>" alt="图片找不到了" width="75px" height="100px" style="float: left;margin: 10px;">
            <%
                }
            %>
            <!-- 大图区结束 -->
        </div>
        <div class="show_info">
            <div class="sale_box clearfix">
                <div class="sale_box_left" id="product_info">
                    <!-- 标题区begin -->
                    <div class="name_info" ddt-area="001">
                        <!-- 主标题 -->
                        <h1 title="三体：全三册 刘慈欣代表作，亚洲首部“雨果奖”获奖作品！">
                            <img src="" class="icon_name">
                            <%=bookInfo.getBookName()%>:      <%=bookInfo.getBookText()%>   </h1>
                        <!-- 副标题、促销语 -->
                        <h2>
                <span class="head_title_name" title="&nbsp;&nbsp;">
    		    	</span>
    	<span class="hot" title="&nbsp;&nbsp;">
    		        </span>
        <span class="yushou" id="presale-title">

        </span>
                        </h2>
                    </div>                        <!-- 标题区 end-->
                    <!-- 出版物begin -->
                    <!-- 图书信息区 -->
                    <div class="messbox_info">
<%--                        <span class="t1" id="author" dd_name="作者" ddt-area="002">作者:--%>
<%--                            <a href="http://search.dangdang.com/?key2=%C1%F5%B4%C8%D0%C0&medium=01&category_path=01.00.00.00.00.00"  target="_blank" dd_name="作者">--%>
<%--                                刘慈欣</a>--%>
<%--                        </span>--%>
<%--                        <span class="t1" dd_name="出版社" ddt-area="003">出版社:--%>
<%--                            <a href="http://search.dangdang.com/?key3=%D6%D8%C7%EC%B3%F6%B0%E6%C9%E7&medium=01&category_path=01.00.00.00.00.00" target="_blank" dd_name="出版社">重庆出版社</a>--%>
<%--                        </span>--%>
                        <span class="t1">上架时间:<%=bookInfo.getBookTime()%>&nbsp;</span>    <!-- 评论数 -->
                        <div class="pinglun clearfix">
                            <!-- 排名 -->
                            <span class="t1" id="pubbang" style="display:none" dd_name="图书排行榜排名"></span>
                            <!-- 星级 -->
        <span class="t1">
            <span class="star_box">
                <span class="star" style="width:93%"></span>
            </span>
            <a href="javascript:void(0)" id="comm_num_down" dd_name="浏览数"><%=bookInfo.getFrequency()%></a>人浏览
        </span>
                            <!--        <a href="javascript:;" class="score write_comment" id="w-comment">我要写评论</a>-->
                        </div>
                    </div>                        <!-- 出版物 end-->
                    <!-- 价格区begin -->
                    <input type="hidden" id="nowPrice" value="">
                    <input type="hidden" id="productId" value="">
                    <input type="hidden" id="shopId" value="">
                    <input type="hidden" id="shopType" value="">
                    <input type="hidden" id="categoryPath" value="">
                    <input type="hidden" id="productName" value="">
                    <div class="masks" style="display: none;" id="price_down_masks">
                        <iframe></iframe>
                    </div>
                    <div class="price_info clearfix">

                        <div class="price_pc" id="pc-price">
                            <div style="width:206px;height: 64px;">
                                <div class="price_d">
                                    <p class="t">
                                        <span  id="dd-price-text">书价</span>
                                    </p>
                                    <p id="dd-price">
                                        <span class="yen">&yen;</span><%=bookInfo.getPrice()%>                </p>
                                </div>

                                <div class="price_zhe" id="dd-zhe"></div>
                            </div>
                        </div>

                        <div class="new_user_price before_user_price" id="dd-vip-price" style="display: none;"></div>
                    </div>



                    <!-- 地址区 -->
                    <div class="area_info clearfix">
                        <div class="left letter03">卖家</div>
                        <span class="2" id="geo-name" dd_name="卖家">寻书网</span>
                        <div class="right" id="geo-info">
                            <div class="select_add clearfix">

                                <b></b>
                                免运费        </div>
                        </div>
                    </div>
                    <div class="area_info clearfix">
                        <div class="left letter02">服务</div>
                        <div class="right">
                            <div class="clearfix">
            <span class="time">由“<b>小xun</b>”发货，并提供售后服务。
                            </div>
                        </div>
                    </div>
                    <!-- 地址区end -->
                    <!-- 按钮区begin -->
                    <div class="buy_box clearfix" ddt-area="030">
                        <div class="buy_box_btn">
                            <button class='btn btn_red' style="background: #e2250e;margin-left:20px ;color: white" name='collect' id="cartAdd" type="button" name="Sc" onclick="addCart(<%=bookInfo.getBookId()%>)">加入购物车</button><span id="block"></span>
<%--                            <a href="javascript:;" id="part_buy_button" class="btn btn_red" dd_name="加入购物车"><i class="cart"></i>加入购物车</a>--%>
                            <a href="/book/CreateOrder?BookId=<%=bookInfo.getBookId()%>" style="background: #e2250e;margin-left:20px ;color: white" id="part_buy_button" class="btn btn_red" dd_name="购买"><i class="cart"></i>购买</a>
                            <a href="javascript:;" id="gift_card_button" class="btn btn_red" dd_name="礼品卡加入购物车" style="display:none"><i class="cart"></i>加入购物车</a>
                            <a href="javascript:;" id="buy_now_button" class="btn_buy_now" dd_name="立即购买" style="display: none"></a>
                            <a href="javascript:;" id="deposit_buy_button" rel="nofollow" class="btn btn_green" dd_name="支付定金" style="display: none"></a>
                            <div class="btn_pop btn_pop_click" style="z-index:30" id="deposit-share">
                                <a href="javascript:;" class="btn btn_b btn_orange02" style="display: none" id="invite_friend_button">邀请好友</a>
                                <div class="btn_yaoqing" id="deposit-share-url">
                                    <span>邀请好友参加吧</span>
            		<span>
            			<a href="javascript:void(0)" class="qq" data-dstweb='qqzone' dd_name="分享到QQ空间" title="分享到QQ空间"></a>
            			<a href="javascript:void(0)" class="sina" data-dstweb='sina' dd_name="分享到新浪微博" title="分享到新浪微博"></a>
        			</span>
                                </div>
                            </div>

                            <a href="javascript:;" id="btn_buy_now" rel="nofollow" class="btn btn_b btn_b_red" dd_name="收藏商品" style="display: none">收藏商品</a>
                        </div>
                        <div id="buy-tip" class="text"></div>
                    </div>

                    <style>
                        .pc_cartshop_daoliu_div1{background: url(http://img62.ddimg.cn/2019/8/16/201908161533271384.png) no-repeat;width: 360px;height: 226px;margin: auto;}
                        .pc_cartshop__img{width: 120px;margin:auto;padding-top: 102px;padding-left: 2px;}
                        .pc_cartshop_daoliu_div2{background: url(http://img61.ddimg.cn/2019/8/16/2019081615440034358.png) no-repeat;width: 360px;height: 167px;margin: auto;position: relative;z-index: 100;top: -17px;}
                        .pc_shopping_button{font-family: MicrosoftYaHei;font-size: 14px;color: #C75B02;text-align: center;line-height: 14px;position: relative;top: 140px;cursor:pointer;}
                    </style>

                    <div class="pro_masks" id="cartshop-pop" style="display:none">
                        <div class="masks_bg" style="filter: alpha(opacity=60);opacity: 0.6;"></div>
                        <div class="pop_lingquan">
                            <div class="pc_daoliu_cloce_div">
                                <img  class="pc_daoliu_cloce_img" style="margin-right:0px;" src="http://img63.ddimg.cn/upload_img/00782/home/ic_close-1565074936.png"  onclick="pc_daoliu_cloce()">
                            </div>
                            <div class="pc_cartshop_daoliu_div1">
                                <img class="pc_cartshop__img" src="http://img60.ddimg.cn/2019/7/19/2019071918514267535.jpg">
                            </div>
                            <div class="buy_box_btn">
                                <div class="pc_cartshop_daoliu_div2">
                                    <div class="pc_shopping_button" go-uri="//shopping.dangdang.com/shoppingcart/cart_append_new?product_ids=" id="pc_cartshop_go" style="display:none">加入购物车</div>
                                    <div class="pc_shopping_button" go-uri="//checkoutb.dangdang.com/checkout.aspx?checkout_type=10&"  id="pc_bugnow_go" style="display:none">立即购买</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <script>
                        function pc_daoliu_cloce(){
                            $("#cartshop-pop").hide();
                        }
                    </script>


                    <a id="button_endpoint" class="browser"></a>
                    <!-- 按钮区 end-->
                </div>
                <div class="service_more" id="service-more" ddt-area="004">
                    <div class="narrow_dang">
                        <a href="javascript:void(0)" class="dang" id="shop_btn">
                            <img src="/index/images/narrow_dang.png" width="112" height="70"/>
                        </a>
                    </div>

                </div>                </div>
        </div>
    </div>
    <!-- 图书展示区 end -->
    <div id="footer">
        <link href="//static.dangdang.com/css/header2012/footer_150526.css?20170626" rel="stylesheet" type="text/css">
        <div class="footer" dd_name="页尾">
            <div class="footer_pic_new">
                <div class="footer_pic_new_inner">
                    <a name="foot_1" href="http://help.dangdang.com/details/page13" target="_blank" class="footer_pic01"><span>正规渠道正品保障</span></a>
                    <a name="foot_2" class="footer_pic02" href="http://help.dangdang.com/details/page21" target="_blank"><span>放心购物货到付款</span></a>
                    <a name="foot_3" class="footer_pic03" href="http://help.dangdang.com/details/page16" target="_blank"><span>150城市次日送达</span></a>
                    <a name="foot_4" class="footer_pic04" href="http://help.dangdang.com/details/page28" target="_blank"><span>上门退换 购物无忧</span></a>
                </div>
            </div>
            <div class="public_footer_new">
                <div class="footer_sort footer_nvice">
                    <span class="f_title">购物指南</span>
                    <ul>
                        <li><a name="foot_gouwu" href="http://help.dangdang.com/details/page2" target="_blank" class="main" rel="nofollow">购物流程</a></li>
                        <li><a name="foot_jifen" href="http://help.dangdang.com/details/page6" target="_blank" rel="nofollow">发票制度</a></li>
                        <li><a name="foot_fapiao" href="http://help.dangdang.com/details/page12" target="_blank" rel="nofollow">服务协议</a></li>
                        <li><a name="foot_mydangdang" href="http://help.dangdang.com/details/page8" target="_blank" rel="nofollow">会员优惠</a></li>
                    </ul>
                </div>
                <div class="footer_sort footer_pay">
                    <span class="f_title">支付方式</span>
                    <ul>
                        <li><a name="foot_tuihuanhuoliucheng" href="http://help.dangdang.com/details/page237" target="_blank" rel="nofollow">货到付款</a></li>
                        <li><a name="foot_tuihuanhuo" href="http://help.dangdang.com/details/page22" target="_blank" rel="nofollow">网上支付</a></li>
                        <li><a name="foot_huanhuo" href="http://help.dangdang.com/details/page24" target="_blank" rel="nofollow">礼品卡支付</a></li>
                        <li><a name="foot_tuihuo" href="http://help.dangdang.com/details/page23" target="_blank" rel="nofollow">银行转帐</a></li>
                    </ul>
                </div>
                <div class="footer_sort footer_characteristic">
                    <span class="f_title">订单服务</span>
                    <ul>
                        <li><a name="foot_jifen" href="http://help.dangdang.com/details/page400" target="_blank" class="main" rel="nofollow">配送服务查询</a></li>
                        <li><a name="foot_lipinka" href="http://help.dangdang.com/details/page4" target="_blank" rel="nofollow">订单状态说明</a></li>
                        <li><a name="foot_ershoushu" href="http://myhome.dangdang.com/myOrder" target="_blank" rel="nofollow">自助取消订单</a></li>
                        <li><a name="foot_shouji" href="http://myhome.dangdang.com/myOrder" target="_blank" rel="nofollow">自助修改订单</a></li>
                    </ul>
                </div>
                <div class="footer_sort footer_distribution">
                    <span class="f_title">配送方式</span>
                    <ul>
                        <li><a name="foot_huodaofukuan" href="http://help.dangdang.com/details/page232" target="_blank" class="main" rel="nofollow">当日递</a></li>
                        <li><a name="foot_yinhangzhuanzhang" href="http://help.dangdang.com/details/page233" target="_blank" class="main" rel="nofollow">次日达</a></li>
                        <li><a name="foot_dangdanglijuan" href="http://help.dangdang.com/details/page500" target="_blank" rel="nofollow">订单自提</a></li>
                        <li><a name="foot_dangdanglijuan" href="http://help.dangdang.com/details/page20" target="_blank" rel="nofollow">验货与签收</a></li>
                    </ul>
                </div>
                <div class="footer_sort footer_help">
                    <span class="f_title">退换货</span>
                    <ul>
                        <li><a name="foot_faq" href="http://help.dangdang.com/details/page28" target="_blank" rel="nofollow">退换货服务查询</a></li>
                        <li><a name="foot_zhaohuimima" href="http://return.dangdang.com/reverseapplyselect.aspx" target="_blank" rel="nofollow">自助申请退换货</a></li>
                        <li><a name="foot_huikuandan" href="http://return.dangdang.com/reverseapplylist.aspx" target="_blank" rel="nofollow">退换货进度查询</a></li>
                        <li><a name="foot_tuiding" href="http://help.dangdang.com/details/page31" target="_blank" rel="nofollow">退款方式和时间</a></li>
                    </ul>
                </div>
                <div class="footer_sort footer_shangjia">
                    <span class="f_title">商家服务</span>
                    <ul>

                        <li><a name="foot_zhaohuimima" href="http://shop.dangdang.com/shangjia" target="_blank" rel="nofollow">商家中心</a></li>
                        <li><a name="foot_huikuandan" href="http://outlets.dangdang.com/merchants_cooperation" target="_blank" rel="nofollow">运营服务</a></li>
                        <li><a name="foot_tuiding" href="http://outlets.dangdang.com/merchants_outlets" target="_blank" rel="nofollow">加入尾品汇</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer_nav_box">
                <div class="footer_nav"><a href="http://t.dangdang.com/companyInfo" target="_blank" rel="nofollow">公司简介</a><span class="sep">|</span><a

                        href="http://zhaopin.dangdang.com" target="_blank">诚聘英才</a><span class="sep">|</span><a

                        href="http://union.dangdang.com/" target="_blank">网站联盟</a><span

                        class="sep">|</span><a

                        href="http://giftcard.dangdang.com/giftcardCompany" target="_blank" rel="nofollow">机构销售</a><span class="sep">|</span><a href="http://blog.dangdang.com/" target="_blank">官方

                    Blog</a>
                    <span class="sep">|</span><div class="footer_hot_search"><a href="http://www.dangdang.com/sales/brands/" target="_blank" class="footer_a" id="hot_search" onmouseover="showghotsearch('hot_search','hot_search_content')" onmouseout="hidehotsearch('hot_search','hot_search_content');">热词搜索</a><div class="pos_a_box" style="display: none;" id="hot_search_content" onmouseover="showghotsearch('hot_search','hot_search_content')" onmouseout="hidehotsearch('hot_search','hot_search_content');">
                        <a href="http://www.dangdang.com/sales/brands/a-1.html" target="_blank" >A</a><a href="http://www.dangdang.com/sales/brands/b-1.html" target="_blank" >B</a><a href="http://www.dangdang.com/sales/brands/c-1.html" target="_blank" >C</a><a href="http://www.dangdang.com/sales/brands/d-1.html" target="_blank" >D</a><a href="http://www.dangdang.com/sales/brands/e-1.html" target="_blank" >E</a><a href="http://www.dangdang.com/sales/brands/f-1.html" target="_blank" >F</a><a href="http://www.dangdang.com/sales/brands/g-1.html" target="_blank" >G</a>
                        <a href="http://www.dangdang.com/sales/brands/h-1.html" target="_blank" >H</a><a href="http://www.dangdang.com/sales/brands/i-1.html" target="_blank" >I</a><a href="http://www.dangdang.com/sales/brands/j-1.html" target="_blank" >J</a><a href="http://www.dangdang.com/sales/brands/k-1.html" target="_blank" >K</a><a href="http://www.dangdang.com/sales/brands/l-1.html" target="_blank" >L</a><a href="http://www.dangdang.com/sales/brands/m-1.html" target="_blank" >M</a><a href="http://www.dangdang.com/sales/brands/n-1.html" target="_blank" >N</a>
                        <a href="http://www.dangdang.com/sales/brands/o-1.html" target="_blank" >O</a><a href="http://www.dangdang.com/sales/brands/p-1.html" target="_blank" >P</a><a href="http://www.dangdang.com/sales/brands/q-1.html" target="_blank" >Q</a><a href="http://www.dangdang.com/sales/brands/r-1.html" target="_blank" >R</a><a href="http://www.dangdang.com/sales/brands/s-1.html" target="_blank" >S</a><a href="http://www.dangdang.com/sales/brands/t-1.html" target="_blank" >T</a><a href="http://www.dangdang.com/sales/brands/u-1.html" target="_blank" >U</a>
                        <a href="http://www.dangdang.com/sales/brands/v-1.html" target="_blank" >V</a><a href="http://www.dangdang.com/sales/brands/w-1.html" target="_blank" >W</a><a href="http://www.dangdang.com/sales/brands/x-1.html" target="_blank" >X</a><a href="http://www.dangdang.com/sales/brands/y-1.html" target="_blank" >Y</a><a href="http://www.dangdang.com/sales/brands/z-1.html" target="_blank" >Z</a><a href="http://www.dangdang.com/sales/brands/other-1.html" target="_blank" >0-9</a>
                        <i></i></div></div>
                    <script>
                        var setTo = null;
                        function showghotsearch(){
                            clearTimeout(setTo);
                            document.getElementById("hot_search_content").style.display="block";
                        }
                        function hidehotsearch(){
                            setTo = setTimeout(function(){
                                document.getElementById("hot_search_content").style.display="none";
                            },100)
                        }
                    </script>
                </div>
                <div class="footer_copyright"><span>Copyright (C) xun书, All Rights Reserved</span>
                    <span><a href="" target="_blank" rel="nofollow">京ICP证041189号</a></span><span>出版物经营许可证 新出发京批字第直0673号</span></div>
            </div>
        </div>
    </div>
    <% if(session.getAttribute("user")!=null){%>
    <script src="/index/js/shoppingNum.js" type="application/javascript" charset="UTF-8"> </script>
    <%}else {%>
    <script charset="UTF-8" type="text/javascript" > function $(){ document.getElementById("shoppingcount").innerHTML="0"; }
    </script> <%}%>
    <script src="/index/js/ajax.js"  type="application/javascript" ></script>
    <script src="//static.dangdang.com/js/login/check_snbrowse.js?20191004" type="text/javascript"></script>
    <script  type="text/javascript">login_session.browsePageOperate();</script>
    <script type="text/javascript" src="//click.dangdang.com/js_tracker.js?20191004"></script>
    <script type="text/javascript" src="//databack.dangdang.com/collect.js?20191004"></script>
    <script type="text/javascript" src="//databack.dangdang.com/store.js?20191004"></script>
</div>
</body>
</html>