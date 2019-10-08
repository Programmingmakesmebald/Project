<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="pragma" content="no-cache"/>
    <meta http-equiv="cache-control" content="no-cache"/>
    <meta http-equiv="expires" content="0"/>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>管理员注册</title>
    <!--[if !IE]><!--><script>
    //css 兼容ie10
    if (/*@cc_on!@*/false) {
        document.documentElement.className+=' ie10';
    }
    //css 兼容ie11
    if (/*@cc_on!@*/true) {
        document.documentElement.className+=' ie' + document.documentMode;
    }
</script><!--<![endif]-->
    <link href="css/register1.css" rel="stylesheet" type="text/css" />
</head>
<body>
<link href="css/dingbu.css" rel="stylesheet" type="text/css">
<script src="js/top.js" type="text/javascript"></script>
<div class="ddnewhead_wrap">
    <div class="ddnewhead_content ddnewhead_content2">
        <div class="ddnewhead_operate" id="__ddnav_menu">
            <ul class="ddnewhead_operate_nav">
                <li class="ddnewhead_cart"><a  name="t_1" href="javascript:AddToShoppingCart(0);">购物车<span id="cart_items_count" class="cart_num"></span></a></li>
                <li class="ddnewhead_separate"></li>
                <li><a  name="t_2" href="http://order.dangdang.com/myallorders.aspx" target="_blank">我的订单</a></li>
                <li class="ddnewhead_separate"></li>
                <li class="ddnewhead_mydd"><a  name="t_3" href="" target="_blank" class="menu_btn" id="a_myddchannel" onmouseover="showgaoji('a_myddchannel','__ddnav_mydd')" onmouseout="hideotherchannel('a_myddchannel','__ddnav_mydd');">我的xun书</a>
                    <div  class="ddnewhead_mydd_panel" onmouseover="showgaoji('a_myddchannel','__ddnav_mydd')" onmouseout="hideotherchannel('a_myddchannel','__ddnav_mydd');" id="__ddnav_mydd" >
                        <ul class="ddnewhead_mydd_list" >
                            <li><a  name="t_3_1" href="" target="_blank">我的订单</a></li>
                            <li><a  name="t_3_2" href="" target="_blank">购物礼券</a></li>
                            <li><a  name="t_3_3" href="" target="_blank">我的积分</a></li>
                            <li><a  name="t_3_4" href="" target="_blank">我的收藏</a></li>
                            <li><a  name="t_3_5" href="" target="_blank">我的评论</a></li>
                            <li><a  name="t_3_6" href="" target="_blank">数字商品</a></li>
                        </ul>
                    </div>
                </li>
                <li class="ddnewhead_separate"></li>
                <li class="help"><a name="t_6" href="" target="_blank">帮助</a></li>
            </ul>
            <p id=""><span>欢迎光临xun书，请</span><a href="" name="zt_denglu" target="_blank" class="login_link">登录</a><a href="" name="zt_zhuce" target="_self" class="login_link">免费注册</a></p>
        </div>
        <div class="ddnewhead_logo"><a href="index.jsp" title="返回首页" name="ddnav_logo"><img src="images/102.png" alt="xun书"/></a></div>
        <div class="clear"></div>
    </div>
    <div class="ddnewcarthead_bottom"></div>
</div>
<form action="http://search.dangdang.com/search.aspx" id="bootpagetopSearch" name="bootpagetopSearch" method="GET"></form>
<script type="text/javascript">initHeaderOperate();</script><div id="bd">
    <div class="shadow_box">
        <div class="register_box">
            <div class="head">
                <span class="more">欢迎光临xun书<a href="/">请登录</a></span>
                <a href="regist.jsp" class="head_a">新用户注册</a>
                <a href="javascript:void(0);" class="head_a head_a1">管理员注册</a>
            </div>
            <div class="help_icon_trigger" style="display: none">
                <a title="联系客服" id="feedback" name="feedback" target="_blank" href="http://faqrobot.dangdang.com/robot/robotDD.html?sysNum=dd_1000">
                </a>
            </div>
            <div class="pic_new"><img src="images/11.png"></div>
            <div class="telephone_number">客服专线：800 820 8820<a style="margin-left: 20px;font-size:12px;font-family:'Microsoft YaHei';" href="" target="_blank">查看购买规则</a></div>
            <div class="info_remind"><div id="J_cheatProofTop" class="new_tip" style="display:none;">贴心提示：请勿设置与邮箱密码相同的账户登录密码或支付密码，防止不法分子窃取您的当当账户信息，<a href="http://blog.dangdang.com/?p=22276" target="_blank">谨防诈骗</a>！</div></div>
            <div class="zhanghu_info"><p class="zhanghu_text">账户信息</p></div>
            <form id="registerForm">
                <div class="body">
                    <table cellpadding="0" cellspacing="0" border="0" width="100%">
                        <tbody>
                        <tr class="b">
                            <td class="t ">用户名</td>
                            <td colspan="2">
                                <input type="password" style="display: none;"/>
                                <input id="J_userName" name="nickname" type="text" class="text" MaxLength="20" tabindex="1"/>
                                <span id="J_tipImgUserName" class="wl_select_icon2"></span>
                                <div id="J_tipInfoUserName" class="info_red info_red1" style="z-index: 1"></div>
                            </td>
                        </tr>
                        <tr class="b">
                            <td class="t">设置密码</td>
                            <td>
                                <input id="J_password" name="txt_password" type="password" class="text" onpaste="return false;" MaxLength="20" tabindex="2"/>
                                <span id="J_tipImgPassword" class="wl_select_icon2"></span>
                                <div id="J_tipInfoPassword" class="info_red info_red1 info_normal" style="z-index: 1"></div>
                            </td>
                            <td class="password_info" >
                                <span id="spnPwdStrongTips" style="display: none;">
                                    <span id="spnPwdStrong1" class="safe_check1 safe_check11 j_pwdStrong" style="display: none;"><span class="safe_change safe_change1"></span><span class="safe_change"></span><span class="safe_change"></span><span class="text_introduce">密码过于简单</span></span>
                                    <span id="spnPwdStrong2" class="safe_check1 safe_check12 j_pwdStrong" style="display: none;"><span class="safe_change safe_change1"></span><span class="safe_change safe_change2"></span><span class="safe_change"></span><span class="text_introduce">试试字母、符号、数字的组合更安全哦</span></span>
                                    <span id="spnPwdStrong3" class="safe_check1 safe_check13 j_pwdStrong" style="display: none;"><span class="safe_change safe_change1"></span><span class="safe_change safe_change2"></span><span class="safe_change safe_change3"></span><span class="text_introduce">密码设置安全，放心使用</span></span>
                                </span>
                                <span id="J_tipUpperCaseBox" class="prompt" style="display: none;"><span class="icon"></span>键盘大写锁定已打开，请注意大小写!</span>
                            </td>
                        </tr>
                        <tr class="b">
                            <td class="t">确认密码</td>
                            <td colspan="2">
                                <input id="J_repassword" name="txt_repassword" type="password" class="text" onpaste="return false;" MaxLength="20" tabindex="3"/>
                                <span id="J_tipImgRepassword" class="wl_select_icon2"></span>
                                <div id="J_tipInfoRepassword" class="info_red info_red1" style="z-index: 1"></div>
                            </td>
                        </tr>
                        </tbody></table>
                    <div class="qiye_info">
                        <div class="qiye_information_pic"><p class="zhanghu_text">管理员信息</p></div>
                        <table class="table_qiye" cellpadding="0" cellspacing="0" border="0" width="100%">
                            <tbody>
                            <tr class="" style="z-index: 99;">
                                <td class="t">地址</td>
                                <td colspan="3">
                                    <div class="fl item-ifo">
                                        <span class="fl">
                                            <input id="country_id" type="hidden" value="9000"/>
                                            <select id="province_id" name="province_id" class="mar" tabindex="5">
                                                <option value="0">请选择</option>
                                            </select>
                                        </span>
                                        <span class="fl">
                                            <select id="city_id" name="city_id" class="mar" tabindex="6">
                                                <option value="0">请选择</option>
                                            </select>
                                        </span>
                                        <span class="fl">
                                            <select id="town_id" name="town_id" class="companyarea" tabindex="7">
                                                <option value="0">请选择</option>
                                            </select>
                                        </span>
                                       <span class="fl">
                                           <select id="quarter_id" name="quarter_id" class="companyarea1 " style="display: none;" tabindex="8">
                                               <option value="0">请选择</option>
                                           </select>
                                        </span>
                                    </div>
                                </td>
                            </tr>
                            <tr style="z-index: 1" class="b">
                                <td class="t"></td>
                                <td style="z-index: 1" >
                                    <input id="addr_detail" name="addr_detail" type="text" style="z-index: 1" class="text" placeholder="请填写街道地址" tabindex="9"/>
                                    <span id="J_tipImgAddr" class="wl_select_icon2"></span>
                                    <div id="J_tipInfoAddr" class="info_red info_red1" style="z-index: 1"></div>
                                </td>
                            </tr>
                            <tr class="b">
                                <td class="t">邮箱</td>
                                <td style="z-index: 1" colspan="3">
                                    <input id="J_email" name="txt_username" type="text" class="text" placeholder="建议填写公用邮箱" autocomplete="off" MaxLength="40" tabindex="10"/>
                                    <span id="J_tipImgEmail" class="wl_select_icon2"></span>
                                    <div id="J_tipInfoEmail" class="info_red info_red1" style="z-index: 1"></div>
                                </td>
                            </tr>
                            <tr class="b">
                                <td class="t">固定电话</td>
                                <td style="z-index: 1" >
                                    <input id="J_areaCode" name="city_code" type="text" class="text wl_select wl_cover" style="z-index: 1" MaxLength="4"
                                           onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')" tabindex="11"/>
                                    <div id="J_tipInfoAreaCode" class="info_red info_red1" style="z-index: 1" ></div>
                                </td>
                                <td  style="z-index: 2" class="wl_wl">
                                    <input id="J_telphone" name="company_tel" type="text" class="text wl_select" style="z-index:2;" MaxLength="8"
                                           onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')" tabindex="12"/>
                                    <div id="J_tipInfoTelphone" class="info_red info_red1" style="z-index: 1"></div>
                                </td>
                                <td style="z-index: 2" class="wl_wl2">
                                    <input id="J_telExtension" name="ext_tel" type="text" class="text wl_select_ext" style="z-index:2;" MaxLength="8"
                                           onkeyup="this.value=this.value.replace(/\D/g,'')"  onafterpaste="this.value=this.value.replace(/\D/g,'')" tabindex="13"/>
                                    <span id="J_tipImgCompanyTel" class="wl_select_icon2 tel_ext_icon"></span>
                                    <div id="J_tipInfoTelExtension" class="info_red info_red1" style="z-index: 1"></div>
                                </td>
                            </tr>
                            <tr class="b">
                                <td class="t" style="z-index: 1">联系人姓名</td>
                                <td style="z-index: 1" colspan="3">
                                    <input id="J_linkman" name="contactor" type="text" class="text" MaxLength="32" tabindex="14"/>
                                    <span id="J_tipImgLinkman" class="wl_select_icon2"></span>
                                    <div id="J_tipInfoLinkman" class="info_red info_red1" style="z-index: 1"></div>
                                </td>
                            </tr>
                            <tr class="b">
                                <td class="t">手机号</td>
                                <td style="z-index: 1" colspan="3">
                                    <input id="J_mobile" name="txt_mobile" type="text" class="text" MaxLength="11" tabindex="15"/>
                                    <span id="J_tipImgMobile" class="wl_select_icon2"></span>
                                    <div id="J_tipInfoMobile" class="info_red info_red1" style="z-index: 1"></div>
                                </td>
                            </tr>
                            <tr style="z-index: 1" class="b j-vcode">
                                <td class="t" >验证码</td>
                                <td class="wl_change" style="z-index: 1" colspan="3">
                                    <input id="txt_vcode" name="txt_vcode" autocomplete="off" placeholder="请输入验证码" MaxLength="4" type="text" class="text check_number" tabindex="16"/>
                                    <div id="J_tipImgVcode" class="wl_select_icon2 wl_select_wl"></div>
                                    <a id="vcodeImgWrap" name="change_code_img" href="javascript:void(0);" class="wl_image">
                                        <img id="imgVcode" style="width:114px;height: 40px;" title="点击更换验证码" alt="点击更换验证码" src=""/>
                                    </a>
                                    <a id="vcodeImgBtn" href="javascript:void(0);"><span class="check_again"></span></a>
                                    <div id="J_tipInfoVcode" class="info_red info_red1 vcode_info" style="z-index: 1"></div>
                                </td>
                            </tr>
                            <!--------手机短信验证模块隐藏----------->
                            <tr class="b telephone_check j-phoneVcode" style="display: none;">
                                <td class="t">短信验证码</td>
                                <td style="z-index: 1" colspan="3">
                                    <input id="J_mobileCode" name="txt_pop_sms_vcode" class="text tel_check_number"
                                           type="text" autocomplete="off" MaxLength="6" tabindex="6" placeholder="请填写短信验证码" tabindex="17"/>
                                    <a id="J_countDownTip" href="javascript:void(0);" style="display: none;"><span class="send_tel_check get_pinUnClick">2分钟后重新获取</span></a>
                                    <a id="sendMobileCode" href="javascript:void(0);"><span class="send_tel_check">获取短信验证码</span></a>
                                    <span id="J_tipImgMobileCode" class="wl_select_icon2 wl_select_icon4"></span>
                                    <div id="J_tipInfoMobileCode" class="info_red info_red1" style="z-index: 1"></div>
                                </td>
                            </tr>
                            <tr>
                                <td class="t" >&nbsp;</td>
                                <td class="clause" colspan="3">
                                    <span class="float_l">
                                        <input id="J_agreement" name="chb_agreement" onmouseover="this.style.cursor='pointer';this.style.cursor='hand';" type="checkbox" checked="checked" tabindex="18"/>我已阅读并同意
                                        <a target="_blank" href="http://help.dangdang.com/details/page12" tabindex="19">《xun书交易条款》</a>和
									    <a target="_blank" href="http://help.dangdang.com/details/page42" tabindex="20">《xun书社区条款》</a>
                                    </span>
                                    <div id="J_tipInfoAgreement" class="info_red info_red1" style="z-index: 1;top: 24px;"></div>
                                </td>
                            </tr>
                            <tr>
                                <td class="t">&nbsp;</td>
                                <td colspan="3">
                                    <a id="J_submitSave" href="javascript:void(0);" class="btn_login" tabindex="21">立即注册</a>
                                    <a id="J_submitSaveUnclick" href="javascript:void(0);" class="btn_login unable" style="display: none;">立即注册</a>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</div>
<!--页尾 开始 -->

<style type="text/css">
    .footer_nav_box{border-top: 1px solid #ebebeb;width:100%;_width:expression(this.scrollWidth < 960 ? "960px" : "auto");min-width: 960px;padding: 17px 0 50px;}
    .footer_nav_box a,.footer_nav_box{color: #8c8c8c;font-size: 12px;text-decoration: none;}
    .footer_nav_box a:hover{color: #f48570;text-decoration: underline;}
    .footer_nav_box .footer_nav{text-align: center;line-height: 20px;padding-bottom: 17px;padding-top: 25px;}
    .footer_nav_box .footer_nav span.sep{margin: 0 17px 0 19px;}
    .footer_nav_box .footer_copyright{line-height: 20px;text-align: center;width: 960px;margin: 0 auto;}
    .footer_nav_box .footer_copyright span.sep{margin:0 17px 0 19px;}
    .footer_nav_box .footer_icon{padding: 10px 0 0 340px;width: 640px;margin: 0 auto;height: 77px;}
    .footer_nav_box .validator,.footer_nav_box .knet{float:left;display:inline;padding:15px 5px 15px;width:135px;height:47px;}

    .footer_copyright {padding: 10px 0 0 0; margin: 0 auto;float: none; width: auto;text-align: center;color: #8c8c8c;}
    .footer_copyright span, .public_footer .footer_copyright a.footer_img { display: inline-block; float: none; }
    .footer_copyright a { padding: 0 4px; color: #8c8c8c;font-size: 12px;text-decoration: none;}
    .footer_copyright a:hover{color: #f48570;text-decoration: underline;}
    .footer_nav_box .footer_nav .footer_hot_search{display:inline-block;*display:inline;width:50px;position:relative}
    .footer_nav_box .footer_nav .pos_a_box{position:absolute;left:-251px;top:22px;background-color:#f48570;width:300px;border-radius:8px;text-align:center;height:14px;line-height:14px}
    .footer_nav_box .footer_nav .pos_a_box a,.footer_nav_box .footer_nav .pos_a_box a:hover,.footer_nav_box .footer_nav .pos_a_box span{padding:0 2px;color:#fff;text-decoration:none}
    .footer_nav_box .footer_nav .pos_a_box i{display:block;width:0;height:0;line-height:0;font-size:0;border-width:0 4px 4px;border-style:solid;border-color:#fff #fff #f48570 #fff;position:absolute;right:20px;top:-4px}

</style>


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
    <div class="footer_copyright"><span>Copyright (C) xun书, All Rights Reserved</span><a href="" target="_blank" class="footer_img" rel="nofollow"><img src="http://img60.ddimg.cn/upload_img/00459/index/validate.gif"></a><span><a

            href="" target="_blank" rel="nofollow">京ICP证041189号</a></span><span>出版物经营许可证 新出发京批字第直0673号</span></div>
</div>
</div>
</div>

<script type="text/javascript" src="https://login.dangdang.com/script/check_browse.js"></script>
<script  type="text/javascript">login_session.browsePageOperate();</script>
<script type="text/javascript" src="https://click.dangdang.com/js_tracker.js"></script>
<!--页尾 end --><input type="hidden" id="returnUrl" value="http://book.dangdang.com/"/>

<script type="text/javascript" src="script/jquery-1.8.0.min.js?20151103"></script>
<script type="text/javascript" src="script/register_company.js?20151123"></script>
<script type="text/javascript">
    set_robot();
    window.onresize = function(){
        set_robot();
    }
    function set_robot(){
        var width = jQuery(window).width();
        var height = jQuery(window).height();
        if (width<1030 || height<150){
            jQuery('.help_icon_trigger').hide();
        }else{
            left = (width-960)/2+962;
            jQuery(".help_icon_trigger").show().css({"left": left});
        }
    }
</script>
</body>
</html>
