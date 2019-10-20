<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>xun书——详情</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="description" content="二手书上xun书" />
    <meta name="keywords" content="中国当代小说,中国当代小说类图书推荐,中国当代小说类图书正版,中国当代小说类图书价格" />

    <link rel="Stylesheet" type="text/css" href="/index/css/modelbook.css" />
    <style>
        html { font-size: 12px; color: #404040; font-family: 'Microsoft YaHei','Arial','SimSun'; }
    body, button, ul, li, ol, p, dl, dd, h1, h2, h3, h4, h5, h6, img, iframe, form, div { margin: 0; padding: 0; list-style-type: none; border: 0; }
    #bd { width: 1200px; margin: 0 auto; background: #fff; }
    .aside { width: 220px; float: left; }
    .article { width: 960px; float: right; }
    .narrow_page #bd { width: 960px; }
    .narrow_page .article { width: 720px; }
    .narrow_page .banner { width: 720px; }
    .narrow_page .filter_box ul { width: 540px!important; }
    .narrow_page .filter_box .list dd { width: 570px; }
    .narrow_page .filter_box .list dd a { margin-right: 8px; }
    .narrow_page .filter_box .list .brand_opt { width: 570px; }
    .narrow_page .filter_box .list .pic_c { width: 610px; _width: 606px; }
    .narrow_page .filter_relative .switch_btn { width: 720px; }
    .narrow_page .shoplist { width: 720px; }
    .narrow_page .popular_box { padding-left: 6px; }
    .narrow_page #go_top{ margin-left: 482px!important;  }
    </style>

    <style>
        .narrow_page .tools_box .bottom .opt {width: 180px;}
    .children_bg01 a {
        margin-left: 0px;
        padding-left: 304px;
        width: 630px;
    }
    .children_bg02 a {
        margin-left: 0px;
        padding-left: 304px;
        width: 660px;
    }
    .children_bg03 a {
        margin-left: 0px;
        padding-left: 304px;
        width: 660px;
    }
    .narrow_page .children_bg01 a{
        width: 450px;
    }
    .narrow_page .children_bg02 a{
        width: 450px;
    }
    .narrow_page .children_bg03 a{
        width: 450px;
    }.price .search_e_price span {font-size: 12px;font-family: 微软雅黑;display: inline-block;background-color: #739cde;color: white;padding: 2px 3px;line-height: 12px;border-radius: 2px;margin: 0 4px 0 5px;}
    .price .search_e_price:hover {text-decoration: none;}
    </style>
</head>
<body ddt-page=s_605253>
<link rel="Stylesheet" type="text/css" href="/index/css/header.css" />


<div id="hd">
    <div id="tools">
        <div class="tools">
            <div class="ddnewhead_operate" dd_name="顶链接">
                <ul class="ddnewhead_operate_nav">
                    <li class="my_dd"><a class="menu_btn" target="_blank" href="http://myhome.dangdang.com/" name="我的小xun" dd_name="我的小xun" id="a_myddchannel" onmouseover="showgaoji('a_myddchannel','__ddnav_mydd')" onmouseout="hideotherchannel('a_myddchannel','__ddnav_mydd');">我的小xun</a>
                        <ul class="ddnewhead_gcard_list" id="__ddnav_mydd" onmouseover="showgaoji('a_myddchannel','__ddnav_mydd')" onmouseout="hideotherchannel('a_myddchannel','__ddnav_mydd');">
                            <li><a target="_blank" href="http://myhome.dangdang.com/myOrder" name="mydd_7" dd_name="新_我的订单">我的订单</a></li>
                            <li><a target="_blank" href="http://shopping.dangdang.com/shoppingcart/shopping_cart.aspx" name="mydd_8" dd_name="新_购物车" rel="nofollow">购物车</a></li>
                            <li><a target="_blank" href="http://myhome.dangdang.com/myFavorite" name="mydd_1" dd_name="我的收藏" rel="nofollow">我的收藏</a></li>
                            <li><a target="_blank" href="http://noncash.dangdang.com/balance/" name="mydd_5" dd_name="我的余额" rel="nofollow">我的余额</a></li>
                            <li><a target="_blank" href="http://comment.dangdang.com/comment" name="mydd_4" dd_name="我的评论" rel="nofollow">我的评论</a></li>

                        </ul>
                    </li>
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
    <div style="position:relative;" class="logo_line_out">
    <div class="logo_line" dd_name="搜索框">
        <div class="logo">
            <a href="/index/index.jsp"><img src="/index/images/15691441038791.png" />
            </a>
            </div>
        <div class="search">
            <form action="" name="searchform"  id="form_search_new" onsubmit="return searchsubmit();"  method="GET">
                <label  for="key_S" class="label_search" id="label_key" onclick="this.style.color='rgb(255, 255, 255)';" style="visibility: visible; color: rgb(102, 102, 102);" >JavaEE</label>
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
                <input type="hidden" id="default_key" value="JavaEE"/>
                <input type="submit" id="search_btn" dd_name="搜索按钮"  style="display:none"/>
                <input id="SearchFromTop" style="display:none" type="hidden" name="SearchFromTop" value="1"/>
                <input type="button" id="suggest_product_btn" name="suggestproduct_btn"  style="display:none" onclick="void(0)"/>
                <input type="button" id="suggest_class_btn" name="suggestclass_btn"  style="display:none" onclick="void(0)"/>
                <input type="submit" id="suggest_searchkey_btn" name="suggestsearchkey_btn"  style="display:none" dd_name="搜索按钮"/>
                <input type="hidden" id="catalog_S" name="catalog" value="" >
                <input type="button" class="button" dd_name="搜索按钮" onclick="javascript:document.getElementById('search_btn').click();"/>
            </form>
        </div>
<%--        <div class="search_bottom">--%>
<%--            <div class="search_hot">热搜:--%>
<%--                <a href="http://search.dangdang.com/?key=%C1%CB%B2%BB%C6%F0%B5%C4%D6%D0%B9%FA" name="hotword" target="_blank">了不起的中国</a>--%>
<%--                <a href="http://search.dangdang.com/?key=%B0%CD%C0%AD%B0%CD%C0%AD" name="hotword" target="_blank">巴拉巴拉</a>--%>
<%--                <a href="http://search.dangdang.com/?key=%CE%D2%BA%CD%CE%D2%B5%C4%D7%E6%B9%FA" name="hotword" target="_blank">我和我的祖国</a>--%>
<%--                <a href="http://search.dangdang.com/?key=%B4%BA%C8%D5%D0%F2%C7%FA" name="hotword" target="_blank">春日序曲</a>--%>
<%--                <a href="http://search.dangdang.com/?key=%C3%EB%C9%B11%D4%AA%C7%C0" name="hotword" target="_blank">秒杀1元抢</a></div>--%>
<%--                <a href="http://search.dangdang.com/advsearch" class="search_advs" target="_blank" name="ddnav_adv_s" dd_name="高级搜索">高级搜索</a>--%>
<%--            </div>--%>

        <div id="suggest_key" class="suggest_key" style="display:none;" ></div>
        <div class="ddnew_cart"><a href="/cart/showCartByPage" name="shoppingcart" dd_name="购物车"><i class="icon_card"></i>购物车<b id="shoppingcount"></b></a></div>
        <div class="ddnew_order"><a target="_blank" href="http://myhome.dangdang.com/myOrder" name="我的订单" dd_name="我的订单" rel="nofollow">我的订单<b id="unpaid_num" style="color:#ff2832;font:bold 12px Arial;"></b></a></div>
    </div>
</div><div class="nav_top" dd_name="一级导航条">
    <div class="nav_top">
        <ul>
            <li class="all"><a href="/book/main" id="a_category" name="cate" class="sort_button" onmouseover=showCategory('a_category','__ddnav_sort','//static.dangdang.com/js/header2012/categorydata_new.js?20180908'); onmouseout=closeCategory('__ddnav_sort'); dd_name="全部商品分类" target="_blank">全部商品分类</a></li>
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
    </div></div>
    <div class="sub">
        <ul>
            <li><a name='nav2'  target=_blank  href=>图书排行榜</a></li>
            <li><a name='nav2'  target=_blank  href=>常用必修</a></li>
            <li><a name='nav2'  target=_blank  href=>专业课本</a></li>
            <li><a name='nav2'  target=_blank  href=>休闲小说</a></li>
            <li><a name='nav2'  target=_blank  href=>考研考证</a></li>
            <li><a name='nav2'  target=_blank  href=>其他资料</a></li>
        </ul>
    </div></div>

<script type="text/javascript" src="/index/js/jquery.min.js"></script>
<script language="javascript">var minsize=1210;var screensize=screen.width;if (screensize<minsize){document.body.className="narrow_page"}</script>
<script type="text/javascript">
    var skudata = {"23579654":[23579654],"24156030":[24156030],"25137790":[25137790],"26921715":[26921715],"20974282":[20974282],"25208978":[25208978],"20994167":[20994167],"25160766":[25160766],"24169745":[24169745],"25092039":[25092039],"23978773":[23978773],"24566793":[24566793],"25146931":[25146931],"25062216":[25062216],"24167579":[24167579],"24169747":[24169747],"25141265":[25141265],"24106554":[24106554],"25208541":[25208541],"27873783":[27873783],"25247347":[25247347],"25147357":[25147357],"20445588":[20445588],"24516880":[24516880],"25283803":[25283803],"27889594":[27889594],"25203037":[25203037],"20500323":[20500323],"23326299":[23326299],"23326297":[23326297],"25201595":[25201595],"24042130":[24042130],"25160767":[25160767],"24188188":[24188188],"24169854":[24169854],"24169853":[24169853],"25246372":[25246372],"24202983":[24202983],"26913843":[26913843],"25168811":[25168811],"26516309":[26516309],"25193892":[25193892],"25353527":[25353527],"23725133":[23725133],"25242482":[25242482],"24566792":[24566792],"24169749":[24169749],"25238317":[25238317],"25222017":[25222017],"23326296":[23326296],"25179435":[25179435],"27851159":[27851159],"25239540":[25239540],"23451435":[23451435],"23326298":[23326298],"21071195":[21071195],"26516307":[26516307],"25238316":[25238316],"25093095":[25093095],"25221469":[25221469]};
    var arrayObj=new Array();
    function addtofavorlist(pid){
        var param = encodeURIComponent(pid+'&platform=4');
        showMsgBox('lcase'+pid ,param,'http://myhome.dangdang.com/addFavoritepop');
    }
    function addtocart(pid){
        var beforeCookieValue = getCookie(cookieName="dest_area",cookieValue=null);
        layer.open({
            type: 2,
            content: encodeURI('http://product.dangdang.com?r=combo/index&productId='+pid+'&source=搜索'),
            area:['870px','430px'],
            cancel: function(index, layero){
                // if(confirm('确定要关闭么')){ //只有当点击confirm框的确定时，该层才会关闭
                layer.close(index);
                var afterCookieValue = getCookie(afterCookieName="dest_area",cookieValue=null);
                if(afterCookieValue != beforeCookieValue){
                    window.location.reload();
                }
                //}
                return false;
            }
        });
    }
    function getCookie(cookieName,cookieValue){
        if (document.cookie && document.cookie != '') {
            var cookies = document.cookie.split(';');
            for (var i = 0; i < cookies.length; i++) {
                var cookie = cookies[i];
                if (cookie.substring(0, cookieName.length + 2).trim() == cookieName.trim() + "=") {
                    cookieValue = cookie.substring(cookieName.length + 2, cookie.length);
                    var arr = cookieValue.match(/province_id(\S*)city_id/);;
                    cookieValue= arr[1];
                    break
                }
            }
        }
        return cookieValue;
    }
    //    var mix_ajax_api = '/Standard/Framework/Core/hosts/ajax_api.php';
</script>
<!--搜索标签导航-->
<div  id="bd" dd_name="16024"  name=16024>
    <div  class="con " name=16025>
    <div  id="12807"  class="con 12807" name=16026>
        <div class="" ddt-area=45168044010 ddt-expose="on"  name=m4516804_pid0_t4010>
            <div id='component_4516804'></div>
            <div class="con ad_img_box" ddt-area=45168044011 ddt-expose="on"  name=m4516804_pid0_t4011>
                <div id="ad_cpt_top_16816" class="topbanner_all"></div>


</div></div>
        <div class="spacer"></div>
        <div ddt-area=4516872 ddt-expose="on">
            <div id='component_4516872'></div>
            <div class="crumbs_fb clearfix" id="breadcrumb" dd_name="面包屑">
                <div class="crumbs_fb_left">
                    <a href="" class="a" name="breadcrumb-all" dd_name="面包屑全部">全部</a>
                    <span class="sp">&gt;</span>
                    </div>
    <span class="sp total">共<em class="b">${requestScope.pagemsg.totalCount }</em>件商品</span>
</div>
</div>
    <script>
        (function($){
            $(".crumbs_fb_left").children(".user_selected").hover(
                    function(){
                        $(this).addClass("user_selected_hover");
                    },
                    function(){
                        $(this).removeClass("user_selected_hover");
                    }
            );
        })(jQuery);
        (function($){
            $(".select_frame").hover(
                    function(){
                        $(this).children('.a').addClass("hover");
                        $(this).children('.a').children(".drop_up").addClass("drop_down");
                        $(this).children('.list_product').addClass("hover");
                        $(this).css('z-index','100');
                    },
                    function(){
                        $(this).children('.a').removeClass("hover");
                        $(this).children('.a').children(".drop_up").removeClass("drop_down");
                        $(this).children('.list_product').removeClass("hover");
                        $(this).css('z-index','0');
                    }
            );
        })(jQuery);
        $(".select_frame").css('z-index','0');
        $(document).ready(function(){
            var catepath_node = $('#breadcrumb .crumbs_fb_left .select_frame ').eq(0).find('a:first');
            var catepath_val = catepath_node.attr('href');
            var one_catepath_reg = /^\d{2}.00.00.00.00.00/;
            var two_catepath_reg = /^58.\d{2}.00.00.00.00/;
            var l ='8ed460056537dec4f87145abc9b4bef5'
            $.getJSON('api/get_json.php?type=categoryCrumbs&l='+l,function(e){
                for(var a in e){
                    if(a=='errorCode') break;
                    if(catepath_val.indexOf(a) >= 0 && catepath_val.indexOf(e[a]['cat_path']) >= 0 && (one_catepath_reg.test(e[a]['cat_path']) || two_catepath_reg.test(e[a]['cat_path']))){
                        catepath_node.attr('href',e[a]['link_url']);
                        catepath_node.attr('target','_Blank');
                    }
                }
            });
        });
    </script>
</div><div class="spacer"></div>
        <div ddt-area="4516808"><div id="component_4516808"></div>
            <div class="filtrate_box clearfix" id="navigation">
                <ul class="filtrate_list" style="height: auto;">

                </ul>
            </div>
            <script>
                var f_brand = {brands:{}};
            </script>
            <script src="/index/js/nsearch/ncategoryfilter.js?20181022"></script>
            <script>
                $('.filtrate_box .cloth_slide_btn').css({"margin-left":"-"+($('.filtrate_box .cloth_slide_btn').width())/2+"px"});
                if(document.all){
                    window.attachEvent('onload',function(){
                        var page_tracker =new PageTracker();
                        bindDDclick();
                        page_tracker.trackPingPHP('http://search.dangdang.com/ping.php?'+'act=view&pos=0_0_0_p&cat=01.03.30.00.00.00&key=&qinfo=&pinfo=76890_1_60&minfo=&ninfo=&custid=&permid=20190901201851356378419491363426195&ref=http%3A%2F%2Fcategory.dangdang.com%2Fcp01.03.30.00.00.00.html&rcount=&type=&t=1570153878000&sell_run=0');
                    });
                }else{
                    window.addEventListener('load',function(){
                        var page_tracker =new PageTracker();
                        bindDDclick();
                        page_tracker.trackPingPHP('http://search.dangdang.com/ping.php?'+'act=view&pos=0_0_0_p&cat=01.03.30.00.00.00&key=&qinfo=&pinfo=76890_1_60&minfo=&ninfo=&custid=&permid=20190901201851356378419491363426195&ref=http%3A%2F%2Fcategory.dangdang.com%2Fcp01.03.30.00.00.00.html&rcount=&type=&t=1570153878000&sell_run=0');
                    },false);
                }
                function bindDDclick(){
                    var all_ele = document.getElementsByTagName('*'),
                            page_tracker =new PageTracker(),
                            len = 0,
                            i = 0,
                            all_ele_list,
                            j = 0;
                    all_ele_list = all_ele;
                    for(i = 0,len = all_ele_list.length;i<len;i++){
                        if(all_ele_list[i].getAttribute('ddclick') !== null){
                            if(document.all){
                                all_ele_list[i].attachEvent('onclick',(function(ddclickUrl){
                                    return function(){
                                        page_tracker.trackPingPHP('http://search.dangdang.com/ping.php?'+ddclickUrl+'&cat=01.03.30.00.00.00&key=&qinfo=&pinfo=76890_1_60&minfo=&ninfo=&custid=&permid=20190901201851356378419491363426195&ref=http%3A%2F%2Fcategory.dangdang.com%2Fcp01.03.30.00.00.00.html&rcount=&type=&t=1570153878000&sell_run=0');
                                    }
                                })(all_ele_list[i].getAttribute('ddclick')));
                            }else{
                                all_ele_list[i].addEventListener('click',(function(ddclickUrl){
                                    return function(){
                                        page_tracker.trackPingPHP('http://search.dangdang.com/ping.php?'+ddclickUrl+'&cat=01.03.30.00.00.00&key=&qinfo=&pinfo=76890_1_60&minfo=&ninfo=&custid=&permid=20190901201851356378419491363426195&ref=http%3A%2F%2Fcategory.dangdang.com%2Fcp01.03.30.00.00.00.html&rcount=&type=&t=1570153878000&sell_run=0');
                                    }
                                })(all_ele_list[i].getAttribute('ddclick')),false);
                            }
                        }
                    }
                }
            </script>
        </div>
        <div class="spacer"></div><div ddt-area=4516873 ddt-expose="on"><div id='component_4516873'></div><script type="text/javascript">
    $(function(){
        $('.select_box').hover(function () {
            $(this).find('.select_pop').show();
        }, function () {
            $(this).find('.select_pop').hide();
        });
        $("#prices>.inner>div>.btn_yes").click(function(){
            var low_price = '';
            var hight_price = '';
            var low_price_temp=$("#prices>.inner>.text:first").val();
            var hight_price_temp=$("#prices>.inner>.text:last").val();
            if(low_price_temp!=''){
                low_price_temp=parseFloat(low_price_temp);
            }
            if(hight_price_temp!=''){
                hight_price_temp=parseFloat(hight_price_temp);
            }
            if(low_price_temp != '' && hight_price_temp != ''){
                var low_price = low_price_temp>hight_price_temp ? hight_price_temp:low_price_temp;
                var hight_price = low_price_temp<hight_price_temp ? hight_price_temp:low_price_temp;
            }else{
                var low_price = low_price_temp;
                var hight_price = hight_price_temp;
            }
            var link=$('#prices>.inner>div>.btn_yes').attr("link");
            var link_temp=link.replace('lpfilterPriceLowp','lp'+low_price);
            var link=link_temp.replace('hpfilterPricehighp','hp'+hight_price);

            window.location.href=link;
        });
        $("#prices").find('[type=text]').focusin(function () {
            $("#prices").addClass('interval_on');
            $("#prices").find('[type=text]').addClass('text_hover');
        });
        $("#prices").find('[type=text]').focusout(function () {
            $("#prices").find('[type=text]').removeClass('text_hover');
            $("#prices").removeClass('interval_on');
        });
        $('.button').hover(function () {
            $("#prices").find('[type=text]').unbind();
            $("#prices").find('[type=text]').keyup(filterPrice);
        },function () {
            $("#prices").find('[type=text]').bind({
                focusin:function(){
                    $("#prices").addClass('interval_on');
                    $("#prices").find('[type=text]').addClass('text_hover');
                },
                focusout:function(){
                    $("#prices").find('[type=text]').removeClass('text_hover');
                    $("#prices").removeClass('interval_on');
                }
            });
        });
        $("#prices").find('[type=text]').keyup(filterPrice);
        $('.btn_yes').hover(function () {
            $(this).addClass('btn_yes_hover');
        }, function () {
            $(this).removeClass('btn_yes_hover');
        });
        $("#price_btn_cls").click(function(){
            $("#prices").find('[type=text]').val('');
            $("#input_lowprice").focus();
        });
        $('.sorting_box>li:lt(5)').hover(function(){
            $(this).addClass('hover');
        },function(){
            $(this).removeClass('hover');
        });
        function filterPrice(){
            var price = $(this).val();
            var re = /^[^0-9]/i;
            if(re.test(price)){
                $(this).val('');
                return;
            }

            price = $(this).val();
            if(price.length>15){
                var new_value = price.substr(0,15);
                $(this).attr('value',new_value);
                //       return;
            };

            re = /[^\d|\.]/i;
            price = $(this).val();
            if(re.test(price)){
                var new_value = price.substr(0,price.search(re));
                $(this).attr('value',new_value);
                //return;
            }

            re = /\.[0-9]{3}/i;
            price = $(this).val();
            if(re.test(price)){
                var new_value = price.substr(0,price.indexOf('.')+3);
                $(this).attr('value',new_value);
                return;
            }

            re = /\.[0-9]*\.+/i;
            price = $(this).val();
            if(re.test(price)){
                var new_value = price.substr(0,price.indexOf('.')+1);
                if(!isNaN(price.substr(price.indexOf('.')+1,1))){
                    new_value = price.substr(0,price.indexOf('.')+2);
                    if(!isNaN(price.substr(price.indexOf('.')+2,1))){
                        new_value = price.substr(0,price.indexOf('.')+3);
                    }
                }
                $(this).attr('value',new_value);
                return;
            }
            return;
        }
    });
</script>

    <div class="tools_box bg_change" id="go_sort" dd_name="一般排序汇总">
    </div>
    <script>
        function initShouhuodi()
        {
            $('#curent_area').text('北京');
            var dest_area = 'country_id%3D9000%26province_id%3D111%26city_id%3D0%26district_id%3D0%26town_id%3D0';
            var exp = new Date();
            exp.setTime(exp.getTime() + 3*60*60*1000);
            document.cookie = 'dest_area' + "=" + dest_area + ";expires=" + exp.toGMTString()+";domain=dangdang.com";
        }
        $(function(){
            initShouhuodi();
            $('.ddnewhead_area_list li a').click(function(){
                var num = $(this).attr('num');
                if (num==174){
                    window.location.reload(true);
                }else{
                    var cururl = window.location.href;
                    var newurl = cururl.replace(/(.*&city=)(\d*)/, "$1"+num);
                    var newurl = newurl.replace(/#J_tab/, '');
                    window.location.href = newurl;
                }
            });
            $('.cloth_shoplist li').not('.search_hot_popular').hover(function(){
                $(this).addClass('on');
            },function(){
                $(this).removeClass('on');
            })
            $('.narrow_page .tools_box .bottom .opt').addClass('opt_s');
            $(".narrow_page .tools_box .bottom").hover(function(){
                $(this).addClass("bottom_inner");
            },function(){
                $(this).removeClass("bottom_inner");
            });
            if($('.tools_box .bottom .opt li').length >4){
                $('.tools_box .bottom .opt').addClass('opt_s');
                $(".tools_box .bottom").hover(function(){
                    $('.tools_box .bottom .opt').removeClass('opt_s');
                    $(this).addClass("bottom_inner");
                },function(){
                    $(this).removeClass("bottom_inner");
                    $('.tools_box .bottom .opt').addClass('opt_s');
                });
            }
            $(".tools_box .top .switch a").not(".ison").hover(function(){$(this).addClass("hover");},function(){$(this).removeClass("hover");});
        });
    </script>
</div>
    <div class="spacer"></div>
    <div ddt-area=4665664 ddt-expose="on">
        <div id='component_4665664'></div>
    </div>
    <div class="spacer"></div>
</div>
    <div class="spacer"></div>
    <div  id="12808"  class="con search_wrap clearfix" name=16027>
        <div  id="12810"  class="col search_left" name=16029>
            <div class="" ddt-area=451680112839 ddt-expose="on"  name=m4516801_pid0_t12839>
                <div id='component_4516801'></div>
                <div class="con shoplist" ddt-area=451680112840 ddt-expose="on"  name=m4516801_pid0_t12840>
                    <div id="search_nature_rg" dd_name="普通商品区域">
                       <!-- 详情页商品开始-->
                        <ul class="bigimg" id="component_59">
                            <c:set var="totalPages" value="${requestScope.pagemsg.totalPage}"/>
                            <c:set var="page" value="${requestScope.pagemsg.currentPage}"/>
                <% int k=0; %>

                <c:forEach var="book" items="${requestScope.pagemsg.lists}">
        <li ddt-pit="1" class="line1" id="1">
            <a title="${book.getBookName()}"  ddclick="act=normalResult_picture&pos=23579654_0_1_p" class="pic" name="itemlist-picture"  dd_name="单品图片" href="one_info/${book.getBookId()}"  target="_blank" >
                <img src="${book.getImagePath().get(0)}" alt='${book.getBookName()}' />
                <p class="cool_label"></p>
            </a>
            <p class="name" name="title" ><a  href="one_info/${book.getBookId()}" name="itemlist-title" dd_name="单品标题" target="_blank" >${book.getBookName()} </a>
            </p>
            <p class="detail" >${book.getBookText()}</p>
            <p class="price" > <span class="search_now_price">&yen;${book.getPrice()}</span>
                <a class="search_discount" style="text-decoration:none;">定价：</a>
                <span class="search_pre_price">&yen;${book.getPrice()*2}</span>
                <span class="search_discount">&nbsp;(5折) </span>
                </p>
            <div class="lable_label"><span class="new_lable" y=""></span>
            </div>
            <p class="search_star_line" >
                <span class="search_star_black">
                    <span style="width: 90%;">☆☆☆☆☆</span>
                </span>
                <a href="" target="_blank" name="itemlist-review" dd_name="单品评论" class="search_comment_num" ddclick="act=click_review_count&pos=23579654_0_1_p">${book.getFrequency()}人浏览</a></p><span class="tag_box"></span><p class="search_book_author"><span>
        </span><span > ${book.getBookTime()}</span><span> </span><div class="shop_button"><p class="bottom_p"><a  class='search_btn_cart ' name='Buy' dd_name='购买' href='/book/CreateOrder?BookId=${book.getBookId()}' >购买</a><button class='search_btn_collect' name='collect' id="cartAdd" type="button" name="Sc" onclick="addCart(${book.getBookId()})">加入购物车</button><span id="block"></span></p></div>
        </li>
                    <% k++;%>
                    </c:forEach>
    </ul>

</div>
    <script>
        $(function(){
            $('.ebook_code').hover(function(){
                $(this).children('span').addClass('code_down');
                $(this).find('.code_img').show();


            },function(){
                $(this).children('span').removeClass('code_down');
                $(this).find('.code_img').hide();


            })
        })

        $(document).ready(function(){
            var show_type = "list";
            if(show_type=='list'){
                $('.paginating').css('margin-top', '40px')
            }
        });
        (function($){
            $.category = $.category || {};
            $.htmldata = $.htmldata || [];
            $.extend($.category, {
                main: function(){
                    $.htmldata = $.category.init($("div.pic_list"));
                    if(!$.htmldata)return false;
                    $.category.initEvent($.htmldata);
                },
                init: function(obj){
                    var data;
                    if(obj.length > 0) {
                        data = obj;
                    }else{
                        data = null;
                    }
                    return data;
                },
                initEvent: function(html){
                    html.each(function(index, ele){
                        var that = $(ele);
                        var totalpage = that.find("dd");
                        var dd = that.find('img');

                        if(dd.length > 4) {
                            var pages = Math.ceil(dd.length/4);
                            var prev = that.find("a.btn_l");
                            var next = that.find("a.btn_r");
                            var pagenum = 1;
                            prev.addClass('unable_l');
                            $(prev).bind('click', function(){
                                if(next.hasClass('unable_r')) {
                                    next.removeClass('unable_r');
                                }
                                if(--pagenum < 1) {
                                    //左翻页置灰
                                    pagenum = 1;
                                    return false;
                                }
                                if(pagenum <= 1){
                                    if(!prev.hasClass('unable_l')) {
                                        prev.addClass('unable_l');
                                    }
                                }
                                $.category.showpage(that, totalpage, pagenum);
                            });
                            $(next).bind('click', function(){
                                if(prev.hasClass('unable_l')) {
                                    prev.removeClass('unable_l');
                                }
                                if(++pagenum > pages){
                                    //右翻页置灰
                                    pagenum = pages;
                                    return false;
                                }
                                if(pagenum >= pages){
                                    if(!next.hasClass('unable_r')) {
                                        next.addClass('unable_r');
                                    }
                                }
                                $.category.showpage(that,totalpage,pagenum);
                            });
                        }else{
                            that.find("a.btn_l").hide();
                            that.find("a.btn_r").hide();
                        }
                        $.category.bigimg(dd, that, dd);
                    });
                },
                bigimg: function(dd, pp, allimg){
                    $(dd).each(function(){
                        var flag = $(this).attr('data-flag');
                        if(flag == 0){//flag在这里是string "0"代表商品有小图 or string "1"代表商品无小图只有对应色块
                            $(this).bind('click', function(){
                                //小图高亮显示
                                $(allimg).each(
                                        function(index, ele){
                                            if($(ele.parentNode).hasClass('on')){
                                                $(ele.parentNode).removeClass('on');
                                            }
                                        }
                                );

                                $(this.parentNode).addClass('on');
                                var b = pp.parent().find("a.pic");
                                //这里span的作用主要是加载图片慢时提示loading图片
                                var s = document.createElement("span");
                                $(s).addClass('pic');
                                b.empty().append(s);

                                var img = new Image();
                                $(img).bind('load', function(){
                                    b.empty().append(img);
                                });
                                img.src = this.src.replace(/_x/, "_b"); //src赋值处理放在这个位置，可以解决ie8 7 6下的bug 加载缓冲区太快 onload事件没来及处理
                                $(img).attr({'height':200,'width':200});
                            });
                        }
                    });
                },
                showpage: function(parent, total, page){
                    var dl = parent.find("dl").empty();
                    var curnum = parseInt((page-1)*4);
                    var jumnum = curnum + 4;
                    var cur = total.slice(curnum, jumnum);
                    var dd = cur.find("img");
                    var allimg = total.find("img");
                    this.bigimg(dd, parent, allimg);
                    dl.append(cur);
                }
            });

            $.category.main();

        })(jQuery);
        $(function(){
            $(".cloth_bigimg>li").hover(
                    function () {
                        $(this).find("div>.star").css("display","block");
                        $(this).find("div>.link").css("display","block");
                        $(this).addClass("hover");
                    },
                    function () {
                        $(this).find("div>.link").css("display","none");
                        $(this).removeClass("hover");
                    });
            $('.bigimg').not('.cloth_shoplist').children('li').hover(function(){
                $(this).addClass('hover');
            },function(){
                $(this).removeClass('hover');
            });
            $(".search_left").attr("dd_name", "商品区域");
            if($(".shoplist .cloth_shoplist li div p").hasClass("bottom_p") == false){
                $(".shoplist .cloth_shoplist li").css('height','316px');
            };

            $(".search-btn").click(function () {
                //获取cookie
                var productId = $(this).attr('pid');
                addtocart(productId);
            });
        });
        $(document).ready(function(){
            var bgurl = $("#att_noresult").attr("bgurl");
            var bgdesc = $("#att_noresult").attr("bgdesc");
            var component_html_data = 'Array';
            var filte = 0;
            if(bgurl != undefined && bg_desc != undefined ){
                if(component_html_data.length == 0 && filte == 1 && bgurl != 0 && bgdesc.length != 0){
                    $("#bg_url").css("background","url("+bgurl+")  no-repeat 0 0");
                    $("#bg_desc").html(bgdesc);
                }
            }
            var Icon = {
                c:false,
                pids : [],
                top : [],
                redline:['1001','1002','1003','1004','1006','1008','1009','2010','2020'],
                url : '%2Fcp01.03.30.00.00.00.html',
                l:'8ed460056537dec4f87145abc9b4bef5',
                init:function(){
                    this.pids['ad'] = '';
                    var that = this;
                    that.pids['ad'] = '';
                    $('#cpc_top ul li').each(function(i,item){
                        that.pids['ad'] += $(this).attr('id')+',';
                    });
                    this.c=true;this.pids[0] = '23579654,24156030,25137790,26921715,20974282,25208978,20994167,25160766,24169745,25092039,23978773,24566793,25146931,25062216,24167579,24169747,25141265,24106554,25208541,27873783';this.pids[1] = '25247347,25147357,20445588,24516880,25283803,27889594,25203037,20500323,23326299,23326297,25201595,24042130,25160767,24188188,24169854,24169853,25246372,24202983,26913843,25168811';this.top[1] = {};this.top[1].value = $('.line21').offset().top-window.screen.height-100;this.top[1].load = false;this.pids[2] = '26516309,25193892,25353527,23725133,25242482,24566792,24169749,25238317,25222017,23326296,25179435,27851159,25239540,23451435,23326298,21071195,26516307,25238316,25093095,25221469';this.top[2] = {};this.top[2].value = $('.line41').offset().top-window.screen.height-100;this.top[2].load = false;if(this.pids['ad']!='') this.icon(this.pids['ad'],this.url,this.c,this.l,'ad');this.icon(this.pids[0],this.url,this.c,this.l,0);                this.initicon(this);
                    this.scroll();
                },
                icon: function(pids,url,c,l,i){
                    var t=new Date().getTime();
                    var that = this;
                    $.getJSON('api/get_json.php?type=promoIcon&keys='+pids+'&url='+i+url+'&c='+c+'&l='+l+'&timestamp='+t,function(e){
                        for(a in e){
                            if(a=='errorCode') break;
                            var area = 'search_nature_rg';
                            if(i=='ad') area = 'cpc_top';
                            var count = 0;
                            $.each(e[a],function(i,v){
                                //if(count == 3) return false;
                                var name;
                                if(typeof v.label_name == 'string'){
                                    name = v.label_name;
                                }else if(typeof v.label_name == 'object'){
                                    if(v.label_type == '3020' || v.label_type == '3014' || v.label_type == '3023'){
                                        var label = v.label_name;
                                        var label_arr = [];
                                        var p;
                                        for(j in label){
                                            if(j=='indexOf') continue;
                                            p = /[\d.]+/.exec(label[j]);
                                            label_arr.push({'p':parseFloat(p[0]),'n':label[j]});
                                        }
                                        label_arr.sort(function(a,b){return b.p - a.p;});
                                        var price = $('#'+area+' li#p'+a+' .price span').html();
                                        price = price != undefined ? parseFloat(price.substr(1)):0;
                                        for(k in label_arr){
                                            if(k=='indexOf') continue;
                                            if(price-label_arr[k].p>=0){name = label_arr[k].n;break;}
                                            name = label_arr[k].n;
                                        }
                                    }else{
                                        name = v.label_name[0];
                                    }
                                }else{
                                    name='';
                                }
                                if(v.label_type == '2002'){
                                    name = v.atmosphere_image_56x56 !=undefined ? v.atmosphere_image_56x56:(v.atmosphere_image_100x100 != undefined ? v.atmosphere_image_100x100:v.atmosphere_image_180x180);
                                }
                                if($('#'+area+' li#p'+a+' .new_lable').attr('y') != '' && v.label_type == '2010') return true;
                                if(v.label_type == '2001'){
                                    var has2002 = e[a].some(function(label){if(label.label_type=='2002') return true;});
                                    if(!has2002){
                                        $('#'+area+' li#p'+a+' .tag_box').css({"background":"url("+v.label_name+") no-repeat 0 0","_background-image":"none","_filter":"progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'"+v.label_name+"\',sizingMethod=\'noscale\')"});
                                    }
                                }else if(v.label_type == '2002'){
                                    $('#'+area+' li#p'+a+' p.cool_label').html('<img class="cool_label_70" src="'+name+'">');
                                }else if(v.label_type == '1005'){
                                }else{
                                    if(count < 3 && name !=''){
                                        if(that.redline.indexOf(v.label_type) == -1){
                                            $('#'+area+' li#p'+a+' .new_lable').append('<span class="new_lable2">'+name+'</span>');
                                        }else{
                                            $('#'+area+' li#p'+a+' .new_lable').append('<span class="new_lable1">'+name+'</span>');
                                        }
                                        count++;
                                    }
                                }
                            });
                            $('#'+area+' li#p'+a+' .new_lable').append(that.yuanchuang($('#'+area+' li#p'+a+' .new_lable').attr('y')));
                        }
                    });
                },
                yuanchuang:function(i){
                    var html='';
                    switch(i){
                        case '0': html = '<span class="new_lable1">原创电子书</span><span class="new_lable1">连载中</span>';break;
                        case '1': html = '<span class="new_lable1">原创电子书</span><span class="new_lable1">已完结</span>';break;
                        case '2': html = '<span class="new_lable1">原创电子书</span>';break;
                        default:html = '';
                    }
                    return html;
                },
                scroll:function(){
                    var that = this;
                    $(window).scroll(function(){
                        that.initicon(that);
                    });
                },
                initicon:function(that){
                    var top = that.top;
                    var scrollTop = $(window).scrollTop();
                    var top = that.top;
                    for(i in top){
                        if(top[i].load==false && top[i].value<scrollTop && i!='indexOf'){
                            that.icon(that.pids[i],that.url,that.c,that.l,i);
                            top[i].load=true;
                        }
                    }

                }
            };
            Icon.init();
        });
        $(document).ready(function(){
            var Price = {
                c:false,
                price_pids : [],
                top : [],
                url : '%2Fcp01.03.30.00.00.00.html',
                l:'8ed460056537dec4f87145abc9b4bef5',
                init:function(){
                    this.price_pids['ad'] = '';
                    var that = this;
                    that.price_pids['ad'] = '';
                    var adPidStr = "";
                    $('#cpc_top ul li').each(function(i,item){
                        adPidStr += $(this).attr('id')+',';
                    });
                    that.price_pids['ad'] =adPidStr.substring(0,adPidStr.length-1);
                    this.c=true;this.price_pids[0] = '23579654,1901104637,24156030,1900709401,25137790,1900574033,26921715,1901119079,20974282,1901104641,25208978,1900778799,20994167,1901104643,25160766,1900668390,24169745,25092039,23978773,24566793,1901128244,25146931,1900973877,25062216,24167579,1900650198,24169747,25141265,24106554,25208541,1900773438,27873783';this.price_pids[1] = '25247347,1900396456,25147357,1900668391,20445588,24516880,1900720026,25283803,27889594,1901133161,25203037,1900770289,20500323,23326299,23326297,25201595,24042130,25160767,1900668392,24188188,24169854,24169853,25246372,1900977817,24202983,26913843,25168811,1900752795';this.top[1] = {};this.top[1].value = $('.line21').offset().top-window.screen.height-100;this.top[1].load = false;this.price_pids[2] = '26516309,1901119063,25193892,25353527,23725133,25242482,1901103582,24566792,1901128246,24169749,25238317,1901074492,25222017,23326296,25179435,27851159,1901137984,25239540,23451435,23326298,21071195,26516307,1901119065,25238316,1901074491,25093095,1900689451,25221469,1900773438';this.top[2] = {};this.top[2].value = $('.line41').offset().top-window.screen.height-100;this.top[2].load = false;if(this.price_pids['ad']!='') this.icon(this.price_pids['ad'],this.url,this.c,this.l,'ad');this.icon(this.price_pids[0],this.url,this.c,this.l,0);                this.initicon(this);
                    this.scroll();
                },
                icon: function(pids,url,c,l,i){
                    var t=new Date().getTime();
                    var that = this;
                    $.getJSON('api/get_json.php?type=productsPrice&keys='+pids+'&url='+i+url+'&c='+c+'&l='+l+'&timestamp='+t,function(e){
                        $.each(e,function(index,obj){
                            if(index =='errorCode') return false;
                            var area = 'search_nature_rg';
                            if(i=='ad') area = 'cpc_top';
                            if(index == 'list' && obj.length > 0 ){
                                $.each(obj,function (i,v) {
                                    var productId = parseInt(v['productId']) > 0 ? v['productId']:0;
                                    var price = 0;
                                    var discount = 0;
                                    var minPrice = -1;
                                    var type = v['salePrice']['type'];
                                    if((type ==20 || type ==21 || type ==22) && parseFloat(v['salePrice']['price']) >= 0) {
                                        minPrice = that.ebook_type_price(type,v['salePrice']['price']);
                                    }else{
                                        if(v['priceList'] != null && v['priceList'] != undefined && v['priceList'] != ""){
                                            $.each(v['priceList'],function(pi,pv){
                                                if(pv['type'] == '2_1'){
                                                    price = parseFloat(pv['value']) > 0 ? pv['value'].toFixed(2) : 0;
                                                }
                                            });
                                        }
                                        minPrice = parseFloat(v['salePrice']['price']) >= 0 ? v['salePrice']['price'].toFixed(2):-1;
                                        discount = price > 0 && minPrice > 0 && price >= minPrice ? Math.ceil(minPrice*1000/price)/100:0;
                                    }
                                    that.showPrice(area,productId,price,minPrice,discount);
                                })
                            }
                        });
                    });
                },
                showPrice:function(area,productId,price,minPrice,discount){
                    var listDdPriceDom = $('#'+area+' li#p'+productId+' .price .search_now_price');
                    var listPriceDom =  $('#'+area+' li#p'+productId+' .price .search_pre_price');
                    var listDiscountDom = $('#'+area+' li#p'+productId+' .price span.search_discount');
                    var listEbookPreceDom = $('#'+area+' li a#ep'+productId);
                    if(listDdPriceDom.html() != undefined && productId > 0 ){
                        if(minPrice >= 0 && !isNaN(minPrice)){
                            listDdPriceDom.html('&yen;'+minPrice);
                            if(listPriceDom.html() != undefined && price > 0){
                                listPriceDom.html('&yen;'+price);
                                listPriceDom.prev().html('定价：');
                                if(listDiscountDom.html() != undefined && discount > 0){
                                    listDiscountDom.html('&nbsp;('+discount+'折)');
                                }else{
                                    listDiscountDom.html('');
                                }
                            }else{
                                listPriceDom.html("");
                                listPriceDom.prev().html("");
                                listDiscountDom.html('');
                            }
                        }
                        if(isNaN(minPrice)){
                            listDdPriceDom.html(minPrice);
                            listPriceDom.html("");
                            listPriceDom.prev().html("");
                            listDiscountDom.html('');
                        }
                    }
                    if(listEbookPreceDom.html() != undefined && productId >0){
                        if(minPrice >= 0 && !isNaN(minPrice)){
                            listEbookPreceDom.html('<span>电子书：</span><i>&yen;'+minPrice+'</i>');
                        }
                        if(isNaN(minPrice)){
                            listEbookPreceDom.html('<span>电子书：</span><i>'+minPrice+'</i>');
                        }

                    }
                    var bigImgDdPriceDom = $('#'+area+' li#p'+productId+' .price .price_n');
                    var bigImgPriceDom =  $('#'+area+' li#p'+productId+' .price .price_r');
                    var bigImgDiscountDom = $('#'+area+' li#p'+productId+' .price .price_s');
                    if(bigImgDdPriceDom.html() != undefined && productId > 0){
                        if(minPrice >= 0 && !isNaN(minPrice)){
                            bigImgDdPriceDom.html('&yen;'+minPrice);
                            if(bigImgPriceDom.html() != undefined && price > 0){
                                bigImgPriceDom.html('&yen;'+price);
                                bigImgPriceDom.prev().html("定价：");
                                if(bigImgDiscountDom.html() != undefined && discount > 0){
                                    bigImgDiscountDom.html('('+discount+'折)');
                                }else{
                                    bigImgDiscountDom.html('');
                                }
                            }else{
                                bigImgPriceDom.html('');
                                bigImgPriceDom.prev().html('');
                                bigImgDiscountDom.html('');
                            }
                        }
                        if(isNaN(minPrice)){
                            bigImgDdPriceDom.html(minPrice);
                            bigImgPriceDom.html('');
                            bigImgPriceDom.prev().html('');
                            bigImgDiscountDom.html('');
                        }
                    }
                },
                ebook_type_price:function(type,type_value){
                    var price = '';
                    switch(type){
                        case 20: price = '千字'+type_value+'铃铛';break;
                        case 21: price = '每画'+type_value+'铃铛';break;
                        case 22: price = '每集'+type_value+'铃铛';break;
                        default:price = '';
                    }
                    return price;
                },
                scroll:function(){
                    var that = this;
                    $(window).scroll(function(){
                        that.initicon(that);
                    });
                },
                initicon:function(that){
                    var top = that.top;
                    var scrollTop = $(window).scrollTop();
                    for(i in top){
                        if(top[i].load==false && top[i].value<scrollTop && i!='indexOf'){
                            that.icon(that.price_pids[i],that.url,that.c,that.l,i);
                            top[i].load=true;
                        }
                    }
                }
            };
            Price.init();
        });
    </script>
</div></div><div class="spacer"></div><div class="" ddt-area=451684912835 ddt-expose="on"  name=m4516849_pid0_t12835><div id='component_4516849'></div><div class="con paginating clearfix" ddt-area=451684912836 ddt-expose="on"  name=m4516849_pid0_t12836><script type="text/javascript" src="js/jquery/lazyload181.js"></script>
    <script type='text/javascript'> $("img[data-original]").lazyload(); </script>
        <div class="row justify-content-center" style="float: left;margin-left: 30%">
            <div>
                <nav aria-label="Page navigation">
                    <ul class="pagination">
                        <li class="page-item"><a class="page-link" href="<c:url value="/book/main?currentPage=1"/>">首页</a></li>
                        <li class="page-item"><a class="page-link"
                                                 href="<c:url value="/book/main?currentPage=${page-1>1?page-1:1}"/>">&laquo;</a>
                        </li>
                        <c:forEach begin="1" end="${totalPages}" varStatus="loop">
                            <c:set var="active" value="${loop.index==page?'active':''}"/>
                            <li class="page-item ${active}">
                                <a class="page-link"
                                   href="<c:url value="/book/main?currentPage=${loop.index}"/>">${loop.index}</a>
                            </li>
                        </c:forEach>
                        <li class="page-item">
                            <a class="page-link"
                               href="<c:url value="/book/main?currentPage=${page+1<totalPages?page+1:totalPages}"/>">&raquo;</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link"
                               href="<c:url value="/book/main?currentPage=${totalPages}"/>">尾页</a></li>
                    </ul>
                </nav>
            </div>
        </div>
<%--    <div class="paging">--%>
<%--        <ul  name="Fy" dd_name="底部翻页">--%>
<%--            <li class="prev none"><a>上一页</a></li>--%>
<%--            <li><a href="/cp01.03.30.00.00.00.html" class=" current" name="bottom-page-turn">1</a></li>--%>
<%--            <li><a href="/pg2-cp01.03.30.00.00.00.html" class="null" name="bottom-page-turn">2</a></li>--%>
<%--            <li><a href="/pg3-cp01.03.30.00.00.00.html" class="null" name="bottom-page-turn">3</a></li>--%>
<%--            <li><a href="/pg4-cp01.03.30.00.00.00.html" class="null" name="bottom-page-turn">4</a></li>--%>
<%--            <li><a href="/pg5-cp01.03.30.00.00.00.html" class="null" name="bottom-page-turn">5</a></li>--%>
<%--            <li><a href="/pg6-cp01.03.30.00.00.00.html" class="null" name="bottom-page-turn">6</a></li>--%>
<%--            <li><span>...</span></li>--%>
<%--            <li><a href="/pg100-cp01.03.30.00.00.00.html" class="null" name="bottom-page-turn">100</a></li>--%>


<%--            <li class="next"><a href="/pg2-cp01.03.30.00.00.00.html" title="下一页">下一页</a></li>--%>
<%--            <li class="page_input">--%>
<%--                <span>到第</span> <input id='t__cp' type='text' class='number'  value='1'/>--%>
<%--                <span>页</span>--%>
<%--                <input class="button" id="click_get_page" value="确定" type="button" name="bottom-page-turn" /></li>--%>
<%--        </ul>--%>
<%--    </div>--%>
    <script type='text/javascript'>
        $(function(){
            $('#t__cp').keydown(function(e){
                if(e.keyCode==13){
                    verifyListPages();
                }
            });
            $('#click_get_page').click(function(){
                verifyListPages();
            });
        });

        function verifyListPages(){
            var page=$.trim($('#t__cp').val());
            var max_page=100;
            re = /^[1-9]*[0-9]*[0-9]$/i;
            if(!re.test(page)||page==0){
                alert('您好，请输入正确页码。');
                return false;
            }else{
                if(parseInt(page)>100){
                    alert('您好，请输入正确页码。');
                    return false;
                }else{
                    if(parseInt(page)>max_page){

                        alert('您好，请输入正确页码。');
                        return false;
                        //                    var href_url = '/pgnone-cp01.03.30.00.00.00.html';
                        //                                            //                        end_url = href_url;
                        //                                        //                    
                        //                    window.location.href=end_url;
                        //                    return false;
                    }else{
                        var href_url = '/pgnone-cp01.03.30.00.00.00.html';
                        if (page == 1) {
                            end_url = href_url.replace('pgnone-','');
                        }else{
                            end_url = href_url.replace('pgnone','pg'+page);
                        }

                        window.location.href=end_url;
                    }
                }
            }
        }
    </script>





</div></div>
<div class="spacer"></div></div></div><div class="spacer"></div><div  id="12809"  class="con 12809" name=16028><div class="" ddt-area=45168584010 ddt-expose="on"  name=m4516858_pid0_t4010><div id='component_4516858'></div><div class="con ad_img_box" ddt-area=45168584011 ddt-expose="on"  name=m4516858_pid0_t4011>    <div id="ad_cpt_bottom_catc_16816" class=""></div>


</div></div><div class="spacer"></div><div class="" ddt-area=45168474357 ddt-expose="on"  name=m4516847_pid0_t4357><div id='component_4516847'></div><div class="con " ddt-area=45168474358 ddt-expose="on"  name=m4516847_pid0_t4358><div class="fix_back">
    <script>
        $(function(){
            $('.fix_erweima').hover(function(){
                $(this).find('.big').show();
            },function(){
                $(this).find('.big').hide();
            })
            if($(window).scrollTop()==0){
                $("#back_top").hide();
            }
            $(window).scroll(function(){
                var ViewHeight = $(window).height();
                if($(window).scrollTop() >= (ViewHeight-10)){
                    $("#back_top").show();
                }else{
                    $("#back_top").hide();
                }
            });
            $("#back_top").click(function(){
                $('body,html').animate({scrollTop:0},50);
                return false;
            });
        });
    </script>
</div></div><div class="spacer"></div><div ddt-area=4521992 ddt-expose="on"><div id='component_4521992'></div><script>
    $(function(){
        var minsize=1210;
        var screensize=screen.width;
        if(screensize>minsize){//宽版
            DD_AD.fetchCPT("bottom_catc_16816","","","1","1");
        }else{//窄版
            DD_AD.fetchCPT("bottom_catc_16816","","","","1");
        }
    });
</script>
</div><div class="spacer"></div><div ddt-area=4516859 ddt-expose="on"><div id='component_4516859'></div>        <script type="text/javascript" src="http://a.dangdang.com/getJS.php?cpc=true&cpm=true&cpt=true"></script>
    <script>
        $(function(){
            try{
                var minsize=1210;
                var screensize=screen.width;
                var newbandnames="";
                var if_ad = false;
                DD_AD.cpc_pos_style[1]={};
                var top_size = 4;
                if(screensize<=minsize){
                    top_size = 3;
                }
                DD_AD.cpc_pos_style[1].TOP_SIZE = top_size;   //根据宽窄版，传入不同的条数
                DD_AD.cpc_pos_style[1].TOP_FLAG = if_ad;  //分类页顶部开关
                DD_AD.cpc_pos_style[1].TOP_PIC_SIZE='b';  //分类页顶部图片大小

                var position=6;extra='01.03.30.00.00.00';var page=0;var lenwid="l";var style='new_cat_top';style='promIcon';    if(screensize>minsize){//宽i版
                    DD_AD.fetchCPC(position,page,extra, 1, 'new','cw'+lenwid,newbandnames,style,'b','b');
                }else{
                    DD_AD.fetchCPC(position,page,extra, 1, 'new','cn'+lenwid,newbandnames,style,'b','b');
                }
                $("#cpc_top").delegate('li','mouseenter',function(){$(this).addClass('on');});
                $("#cpc_top").delegate('li','mouseleave',function(){$(this).removeClass('on');});
                $("#cpc_0").attr("dd_name","右侧广告");
                $("#cpc_top").attr("dd_name","黄金广告");
                $("[id^='ad_cpt_top_']").attr("dd_name","顶部横条广告");
                $("[id^='ad_cpt_bottom_catc_']").attr("dd_name","底部横条广告");
            }catch(e){

            }
        });
    </script>
</div><div class="spacer"></div><div ddt-area=4521993 ddt-expose="on"><div id='component_4521993'></div><script>
    $(function(){
        try{
            var minsize=1210;
            var screensize=screen.width;
            if(screensize>minsize){//宽版
                if('pubAd' === 'pubAd'){
                    DD_AD.fetchCPT("top_16816","01.03.30.00.00.00",'2','1','1');
                }else{
                    DD_AD.fetchCPT("top_16816","1805","1","1","1");
                }
            }else{//窄版
                if('pubAd' === 'pubAd'){
                    DD_AD.fetchCPT("top_16816","01.03.30.00.00.00",'2','','1');
                }else{
                    DD_AD.fetchCPT("top_16816","1805","1","","1");
                }
            }
        } catch (e){

        }
    });
</script>
</div><div class="spacer"></div><div ddt-area=4521991 ddt-expose="on"><div id='component_4521991'></div><script>
    $(document).ready(function(){
        var cat_ids = '16816';
        var cat_paths = '01.03.30.00.00.00';
        var method = 'list.catepagebang|list.catebav|list.caterelatepid|';
        var fileds = 'product_name,sale_price,percent,sub_title|product_name,sale_price,percent,sub_title|product_name,sale_price,sub_title|';
        var pic_size = 'x|l|l|a';
        var tag_id = 'reco_category_top|reco_category_bav|reco_category_alsobuy|cookie_history';
        var max_num = 5;
        var num = 0;
        $.getJSON("api/json_api.php?cat_ids="+cat_ids+"&cat_paths="+cat_paths+"&method="+method+"&fileds="+fileds+"&pic_size="+pic_size+"&tag_id="+tag_id+"&jsoncallback=?",function(data){
            if($("#reco_category_top").length > 0){
                if(data.reco_category_top != undefined && data.reco_category_top.total_count>0){
                    $("#reco_category_top").append('<div class="abox sale_list"><h3>一周销量排行榜</h3><ul dd_name="一周销量排行榜" class=""></ul></div>');
                    $.each(data.reco_category_top.items, function(i,item){
                        num += 1;
                        var num_class = ' class=number';
                        if(num<=3)
                            num_class = ' class="number first"';
                        if(i<max_num){
                            $("#reco_category_top ul").append('<li ddt-pit="'+i+'"class="line'+num+'"><div class="image"><a target="_blank" href="'+item.product_link+'"><img src="'+item.pic_url+'" title="'+item.product_name+'"></a><span'+num_class+'>'+num+'</span></div><div class="right_info"><p class="info"><a title="'+item.product_name+'"href="'+item.product_link+'">'+item.product_name+'</a></p><p class="price">&yen;'+item.sale_price+'</p></div>');
                        }
                    });
                }
            }
            if($("#reco_category_bav").length > 0){
                if(data.reco_category_bav != undefined && data.reco_category_bav.total_count>0){
                    $("#reco_category_bav").append('<div class="abox abox_spjx sale_list"><h3>浏览<span>中国当代小说</span>的最终购买</h3><ul dd_name="最终购买" class="list2"></ul></div>');
                    $.each(data.reco_category_bav.items, function(i,item){
                        if(i<max_num){
                            $("#reco_category_bav ul").append('<li ddt-pit="'+i+'"><a target="_blank" href="'+item.product_link+'" class="pic"><img src="'+item.pic_url+'" title="'+item.product_name+'"></a><p class="data"><a href="'+item.product_link+'">'+item.product_name+'</a></p><p class="red">白领必备</p><p class="price_p"><span class="d_price">&yen;'+item.sale_price+'</span></p></li>');
                        }
                    });

                }
            }
            if($("#reco_category_alsobuy").length > 0){
                if(data.reco_category_alsobuy != undefined && data.reco_category_alsobuy.total_count>0){
                    $("#reco_category_alsobuy").append('<div class="abox abox_spjx sale_list"><h3>浏览<span>中国当代小说</span>的还购买</h3><ul dd_name="还购买" class="list2"></ul></div>');
                    $.each(data.reco_category_alsobuy.items, function(i,item){
                        if(i<max_num){
                            $("#reco_category_alsobuy ul").append('<li ddt-pit="'+i+'"><a target="_blank" href="'+item.product_link+'" class="pic"><img src="'+item.pic_url+'" title="'+item.product_name+'"></a><p class="data"><a href="'+item.product_link+'">'+item.product_name+'</a></p><p class="red">白领必备</p><p class="price_p"><span class="d_price">&yen;'+item.sale_price+'</span></p></li>');
                        }
                    });
                }
            }
            if($("#cookie_history").length > 0){
                num = 0;
                if(data.cookie_history != undefined && data.cookie_history.total_count>0){
                    $("#cookie_history").append('<div class="abox sale_list"><h3>您的浏览历史</h3><a href="javascript:NClearcookie();" class="clean_all">清除浏览历史</a><ul dd_name="浏览历史"></ul></div>');
                    $.each(data.cookie_history.items, function(i,item){
                        num += 1;
                        if(i<max_num){
                            $("#cookie_history ul").append('<li ddt-pit="'+i+'"class="line'+num+'"><div class="image"><a target="_blank" href="'+item.product_link+'"><img src="'+item.pic_url+'" title="'+item.product_name+'"></a></div><div class="right_info"><p class="info"><a title="'+item.product_name+'" href="'+item.product_link+'">'+item.product_name+'</a></p><p class="price">&yen;'+item.sale_price+'</p></div></li>');
                        }
                    });
                }
            }
        });
    });
    function NClearcookie(){
        var temp=document.cookie.split(";");
        for(var i=0; i<temp.length; i++){
            if(temp[i].indexOf('producthistoryid')!=-1 ){
                var exp = new Date();
                exp.setTime(exp.getTime()-400*24*3600*1000);
                document.cookie="producthistoryid=;expires="+exp.toGMTString()+";domain=dangdang.com;path=/";
                $('#cookie_history  a').attr('href', 'javascript:void(0)');
                $("#cookie_history ul").html("<div style='margin: 19px 11px 6px 68px;'>浏览历史已清空</div>");
                break;
            }
        }
    }

</script>
</div><div class="spacer"></div></div></div></div><!--<script type="text/javascript" src="js/mix.js"></script>-->
<!--<script type="text/javascript" src="js/jquery/jquery.jtab.js"></script>-->
<!--<script type="text/javascript" src="js/jquery/jquery.livequery.min.js"></script>-->
<script type="text/javascript">
</script>
<script charset="gb2312" type="text/javascript">var width = 1; narrow = 0;</script>
<script src="//static.dangdang.com/js/header2012/pagetop2015_0827.js?20180908" charset="gb2312" type="text/javascript"></script>
<script src="//static.dangdang.com/js/header2012/dd.menu-aim.js?20180908" charset="gb2312" type="text/javascript"></script>
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
</script>
<script type="text/javascript" src="http://a.dangdang.com/getJS.php?cpc=true&cpm=true&cpt=true"></script>
<script type="text/javascript" src="http://a.dangdang.com/smart.js"></script><script src='http://e.dangdang.com/shoppingcart/script/getEbook.js' type="text/javascript"></script>
<script src='http://static.ddimg.cn/js/login/LoginWindow.js' type="text/javascript"></script>
<script>
    function AddPDNothingNew(pid){
        //TransferPath = "http://misc2.dangdang.com/pdnothing/remote_add_stockout_pd.php";
        // var param = pid+"&time="+new Date().getTime();
        TransferPath = "http://myhome.dangdang.com/productStockoutRegistration/show";
        var param = "&product_id="+pid+"&source=5&time="+new Date().getTime();
        showMsgBox("", encodeURIComponent(param), TransferPath);
    }
</script><script type="text/javascript" src="http://a.dangdang.com/getJS.php?cpc=true&cpm=true&cpt=true"></script>
<script type="text/javascript" >
    $(document).ready(function () {
        $('.reco_wrap .tab a').click(function () {
            var index = $(this).index();
            var $reco = $(this).parents('.reco_wrap').find('.recommend');
            $(this).parents('.tab').children('a').removeClass('on');
            $(this).addClass('on');
            $reco.not($($reco.get(index)).show()).hide();
        })
    })
</script><script  type='text/javascript'>
    function Clearcookie(){
        var temp=document.cookie.split(";");
        for(var i=0; i<temp.length; i++){
            if(temp[i].indexOf('producthistoryid')!=-1 ){
                var exp = new Date();
                exp.setTime(exp.getTime()-400*24*3600*1000);
                document.cookie="producthistoryid=;expires="+exp.toGMTString()+";domain=dangdang.com;path=/";
                $('.more  a').attr('href', 'javascript:void(0)');
                $(".history123_321box").html("<div>浏览历史已清空</div>");
                break;
            }
        }
    }
</script><script>
    $(function(){
        $.each(skudata,function(index,ele){
            $('li#'+index).attr('sku',ele[0]);
            $('li#p'+index).attr('sku',ele[0]);
            $('li#'+index+' ul li').each(function(i,e){
                $(this).attr('sku',ele[i]);
            });
        });
        $('a[name="collect"]').click(function(){
            var sku = $(this).parents('li').attr('sku');
            if(sku != null){
                addtofavorlist(sku);
            }
        });

    });
</script>
<script src='http://static.ddimg.cn/js/login/LoginWindow.js' type="text/javascript"></script>
<script type="text/javascript" src="http://a.dangdang.com/getJS.php?cpc=true&cpm=true&cpt=true"></script>
<!-- 单品线上js -->
<script src="http://product.dangdang.com/js/lib/layer/3.0.3/layer.min.js"></script>
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
            <div class="footer_copyright"><span>Copyright (C) xun书, All Rights Reserved</span><a href="" target="_blank" class="footer_img" rel="nofollow"><img src="/index/images/111.jpg"></a><span><a

                    href="" target="_blank" rel="nofollow">京ICP证041189号</a></span><span>出版物经营许可证 新出发京批字第直0673号</span></div>
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

       </body>
</html>
    