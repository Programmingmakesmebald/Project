<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>新用户注册 - xun书</title>
    <link type="text/css" href="/index/css/register.css" rel="stylesheet" />
</head>
<body ddt-page="register_page">
<link href="/index/css/dingbu.css" rel="stylesheet" type="text/css">
<%--<link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>--%>
<script src="/index/js/top.js" type="text/javascript"></script>
<div class="ddnewhead_wrap">
    <div class="ddnewhead_content ddnewhead_content2">
        <div class="ddnewhead_operate" id="__ddnav_menu">
            <ul class="ddnewhead_operate_nav">
                <li class="ddnewhead_cart"><a  name="t_1" href="javascript:AddToShoppingCart(0);">购物车<span id="cart_items_count" class="cart_num"></span></a></li>
                <li class="ddnewhead_separate"></li>
                <li><a  name="t_2" href="" target="_blank">我的订单</a></li>
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
            <p id=""><span>欢迎光临小xun，请</span><a href="" name="" target="_blank" class="login_link">登录</a><a href="" name="zt_zhuce" target="_self" class="login_link">免费注册</a></p>
        </div>
        <div class="ddnewhead_logo"><a href="/index/index.jsp" title="返回首页" name="ddnav_logo"><img src="/index/images/102.png" alt="xun书"/></a></div>
        <div class="clear"></div>
    </div>
    <div class="ddnewcarthead_bottom"></div>
</div>

<script type="text/javascript">initHeaderOperate();</script>        <form id="register_form" method="post" action="/user/register" onsubmit="return true;">
    <input type="password" style="display: none;"/>
    <div id="bd">
        <!--默认-->
        <div class="shadow_box">
            <div class="register_box">
                <div class="head">
                    <span class="dd_more"><a href="index.jsp" class="home">xun书首页</a><a href="">注册帮助</a></span>
                    <a href="javascript:void(0);" class="head_a head_a1">新用户注册</a>
                    <a href="regist1.jsp" class="head_a">管理员注册</a>
                </div>
                <div class="help_icon_trigger" style="display: none">
                    <a title="联系客服" id="feedback" name="feedback" target="_blank" href="">
                    </a>
                </div>
                <div class="body">
                    <div id="J_cheatProofTop" class="new_tip" style="display:none;">贴心提示：请勿设置与邮箱密码相同的账户登录密码或支付密码，防止不法分子窃取您的当当账户信息，<a href="">谨防诈骗</a>！</div>
                    <table cellpadding="0" cellspacing="0" border="0" width="100%">
                        <tr>
                            <td class="t">手机号码</td>
                            <td class="z_index2">
                                <input name="PhoneNum"  id="PhoneNum"  MaxLength="40"
                                       tabindex="1" value="" placeholder="请输入您的手机号码"
                                       type="text" class="text" onblur=checkPhoneNum() /><span id="judge_PNum" style="color: red;font-size: 15px"></span><span  class="icon_yes" style="display: none;"></span>
                                <span id="J_tipUsername" class="cue warn"></span>
                                <ul class="email_select" id="select_emaildomain" style="display: none;"><li  onmouseout='this.className=""' onmouseover='this.className="hover_domain"' title="" domin=""></li><li  onmouseout='this.className=""' onmouseover='this.className="hover_domain"' title="" domin="@qq.com"></li><li  onmouseout='this.className=""' onmouseover='this.className="hover_domain"' title="" domin="@163.com"></li>
                                    <li onmouseout='this.className=""' onmouseover='this.className="hover_domain"' title="" domin="@126.com"></li><li  onmouseout='this.className=""' onmouseover='this.className="hover_domain"' title="" domin="@sina.com"></li> <li  onmouseout='this.className=""' onmouseover='this.className="hover_domain"' title=""  domin="@hotmail.com"></li><li  onmouseout='this.className=""' onmouseover='this.className="hover_domain"' title=""  domin="@sohu.com"></li> <li  onmouseout='this.className=""' onmouseover='this.className="hover_domain"' title="" domin="@gmail.com"></li><li  onmouseout='this.className=""' onmouseover='this.className="hover_domain"' title="" domin="@tom.com"></li> <li  onmouseout='this.className=""' onmouseover='this.className="hover_domain"' title="" domin="@139.com"></li><li  onmouseout='this.className=""' onmouseover='this.className="hover_domain"' title="" domin="@21cn.com"></li> <li onmouseout='this.className=""' onmouseover='this.className="hover_domain"' title="" domin="@yeah.net"></li><li  onmouseout='this.className=""' onmouseover='this.className="hover_domain"' title="" domin="@sina.cn"></li></ul>
                            </td>
                        </tr>
                        <tr>
                            <td class="t">登录密码</td>
                            <td>
                                <input name="LPassword" id="LPassword" onpaste="return false;" tabindex="2" type="password" class="text" MaxLength="20" />
                                <span id="spn_password_ok" class="icon_yes" style="display: none;"></span>
                                <span id="J_tipPassword" class="cue warn"></span>
                                <span id="J_tipUpperCaseBox" class="prompt" style="display: none;"><span class="icon"></span>键盘大写锁定已打开，请注意大小写!</span>
										<span id="spnPwdStrongTips">
											<span id="spnPwdStrong1" class="cue warn j_pwdStrong" style="display: none;">
												<span class="msg_level"><span class="s1"></span><span></span><span></span></span>密码过于简单
											</span>
											<span id="spnPwdStrong2" class="cue warn j_pwdStrong" style="display: none;">
												<span class="msg_level"><span class="s1"></span><span class="s2"></span><span></span></span>试试字母、符号、数字的组合更安全
											</span>
											<span id="spnPwdStrong3" class="cue warn j_pwdStrong" style="display: none;">
												<span class="msg_level"><span class="s1"></span><span class="s2"></span><span class="s3"></span></span>密码设置安全，放心使用
											</span>
										</span>
                            </td>
                        </tr>
                        <tr>
                            <td class="t">确认密码</td>
                            <td>
                                <input id="ReLPassword" name="ReLPassword" onpaste="return false" tabindex="3" onblur="judgePwd()" type="password" class="text" MaxLength="20"/><span id="spn_repassword_ok" class="icon_wrong" style="display: none;"></span>
                                <span id="repwd" style="color: red;font-size: 15px"></span>
                            </td>
                        </tr>

                        <tr>
                            <td class="t">所在学校</td>
                            <td>
                                <select  style="width:200px;height: 26px;" name="School">
                                    <option selected value="100001" >河北经贸大学</option>
                                    <option value="100002">清华大学</option>
                                    <option value="100003">北京大学</option>
                                    <option value="100004">浙江大学</option>
                                    <option value="100005">。。。</option>
                                </select>
                            </td>
                        </tr>

                        <tr id="J_mobileV" style="display:none">
                            <td class="t">手机验证</td>
                            <td>
                                <input name="mobile" id="txt_mobile" MaxLength="11" tabindex="4" type="text" class="text" placeholder="请输入你要验证的手机号码" /><span id="spn_mobile_ok" class="icon_yes" style="display: none;"></span>
                                <span id="J_tipMobile" class="cue warn"></span>
                            </td>
                        </tr>
                        <tr>
                            <!-- 图形验证码 -->
                            <td class="t j-vcode">验证码</td>
                            <td class="j-vcode">
                                <input class="text pin" type="text" id="CheckCode" name="CheckCode" autocomplete="off" placeholder="请输入验证码" MaxLength="6" tabindex="5"/>
                                <button type="button"  style="width:120px;height:37px;" id="checkbtn" onclick="check1(1)" >发送验证码</button>
                                <span id="spn_vcode_ok" class="icon_yes pin_i" style="display: none;"></span>
                                <span id="J_tipVcode" class="cue"></span>
                                <!--<span class="icon_wrong pin_i"></span>-->
                            </td>
                            <!-- 短信验证码 -->
                            <td class="t j-phoneVcode" style="display: none">短信验证码</td>
                            <td class="j-phoneVcode" style="display: none">
                                <input id="J_MobileCode" name="txt_pop_sms_vcode" autocomplete="off" MaxLength="6" tabindex="6" type="text" class="text pin" placeholder="请填写短信验证码" />
                                <a class="get_pin get_pinUnClick" id="J_countDownTip" href="javascript:void(0);" style="display: none;" tabindex="5">2分钟后重新获取</a>
                                <a class="get_pin" id="sendMobileCode" href="javascript:void(0);" tabindex="5">获取短信验证码</a>
                                <span id="spn_mobileCode_ok" class="icon_yes" style="display: none;"></span>
                                <span id="J_tipMobileCode" class="cue"></span>
                            </td>
                        </tr>
                        <tr>
                            <td class="t">&nbsp;</td>
                            <td class="clause">
										<span class="float_l">
											<input id="chb_agreement" name="chb_agreement" onmouseover="this.style.cursor='pointer';this.style.cursor='hand';" tabindex="7" type="checkbox" checked="checked"/>我已阅读并同意
											<a target="_blank" href="" tabindex="8">《xun书交易条款》</a>和
											<a target="_blank" href= tabindex="9">《xun书社区条款》</a>
										</span>
                                <span id="J_tipAgreement" class="cue"></span>
                            </td>
                        </tr>
                        <tr>
                            <td class="t">&nbsp;</td>
                            <td><button  type="submit" id="J_submitRegister"  class="btn_login" tabindex="10">立即注册</button><a id="J_submitRegisterUnclick" style="display: none;" class="btn_login">注册中...</a></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <input type="submit" id="btn_confirm" style="display: none"/>
    <input type="hidden" name="hdn_username" id="hdn_username"/>
    <input type="hidden" name="hdn_mobile" id="hdn_mobile"/>
    <input type="hidden" name="hdn_password" id="hdn_password"/>
    <input type="hidden" name="action_post" id="action_post" value="register" />
    <input type="hidden" name="returnurl" id="returnurl" value="http://localhost:8080/index/index.jsp" />
    <input type="hidden" name="deviceId" id="deviceId"/>
</form>
<input type="hidden" id="J_errorCode" value=""/>
<iframe id="fraud" src="https://rcc.ddimg.cn/fraud.html?token=20190921091814362201392245235553384" frameborder="0" width="0" height="0" scrolling="yes" marginheight="0" marginwidth="0"></iframe>
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
    <div class="footer_nav"><a href="" target="_blank" rel="nofollow">公司简介</a><span class="sep">|</span><a

            href="" target="_blank">诚聘英才</a><span class="sep">|</span><a

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
<script type="text/javascript"  charset="UTF-8">
    function judgePwd() {
        var pwd1=document.getElementById("LPassword").value;
        var pwd2=document.getElementById("ReLPassword").value;
        if(pwd1!=pwd2){
            document.getElementById("repwd").innerHTML="两次输入密码不一致";
            document.getElementById("J_submitRegister").disable=true;
        }else {
            document.getElementById("repwd").innerHTML="";
            document.getElementById("J_submitRegister").disable=true;
        }
    }

</script>
<script type="application/javascript" charset="UTF-8">
    function checkPhoneNum(){
        var xhr =new XMLHttpRequest();
        var PhoneNum=document.getElementById("PhoneNum").value;
        xhr.open("post","/user/CheckPNum");
        xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        xhr.send("PhoneNum="+PhoneNum);
        xhr.onreadystatechange=function () {
            if(xhr.readyState==4&&xhr.status==200){
                if(xhr.responseText=="true"){
                    document.getElementById("judge_PNum").innerHTML= "手机号已存在";
                    console.debug("手机号已存在");
                }else {
                    console.debug("手机号不存在");
                    document.getElementById("judge_PNum").innerHTML="";
                }
            }
        };
    }
</script>
<script type="application/javascript" src="../index/js/ajax.js"></script>
<script type="text/javascript" src="https://login.dangdang.com/script/check_browse.js"></script>
<script  type="text/javascript">login_session.browsePageOperate();</script>
<script type="text/javascript" src="https://click.dangdang.com/js_tracker.js"></script>
<!--页尾 end -->        <script type="text/javascript" src="https://rcc.ddimg.cn/script/shumei.js"></script>
<script type="text/javascript" src="https://rcc.ddimg.cn/script/fpv2.js"></script>
<script type="text/javascript" src="script/jquery-1.8.0.min.js?20150730"></script>
<script type="text/javascript" src="script/register_150706.js?20150730"></script>
<script type="text/javascript">
    set_robot();
    window.onresize = function(){
        set_robot();
    }
    function set_robot(){
        var width = jQuery(window).width();
        var height = jQuery(window).height();
        if (width < 1030 || height<150){
            jQuery('.help_icon_trigger').hide();
        }else{
            left = (width-960)/2+962;
            jQuery(".help_icon_trigger").show().css({"left": left});
        }
    }
</script>
<script type="text/javascript" src="https://databack.dangdang.com/collect.js?20170616"></script>
<script type="text/javascript" src="https://databack.dangdang.com/store.js?20170616"></script>

</body>
</html>