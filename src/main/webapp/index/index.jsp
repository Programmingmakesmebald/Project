<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>

    <title>xun 书</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="description" content="xun书" />
    <meta name="keywords" content="小说传记,青春文学,童书,绘本,成功励志,投资理财,东野圭吾,考研英语,人类简史,网上购书" />



    <link rel="stylesheet" type="text/css" href="/index/css/theme.css"/>
    <link rel="Stylesheet" type="text/css" href="/index/css/home.css" />

  <style>
        /*为您推荐*/
        .heading3 h3 {
            color:#3b3b39;
            margin-bottom: 0.5em;
            font-size: 2em;
            line-height: 1.2;
            font-family: 'Merriweather Sans', sans-serif;
            margin-top: 0px;
            letter-spacing: -1px;
        }
        .main{
            width: 64%;
            margin: auto;
            padding:4% 0 4%;
        }

        /*首页样式*/
        body{-webkit-backface-visibility: hidden;}
        body .spacer,body .vspacer{display:none;}
        #bd{width:960px;font-family:Arial;margin-top:15px;}
        #bd_auto{width:1200px;font-family:Arial;margin-top:15px;}

        .storey_one:after,.storey_two:after{clear:both;content:" ";display:block;font-size:0;height:0;visibility:hidden;}
        .storey_one{zoom:1;margin-bottom:20px;}
        .storey_one .storey_one_left{z-index:6;position:relative;}
        .storey_one .storey_one_left,.storey_one .storey_one_center,.storey_one .storey_one_right{float:left;}
        .storey_one .storey_one_left,.storey_one .storey_one_center{margin-right:10px;}

        .storey_two{zoom:1;height:582px;}
        .storey_two .storey_two_left{float:left;width:950px;margin-right:10px;}
        .storey_two .storey_two_right{float:left;width:240px;}
        #bd .storey_two .storey_two_left{width:710px;}

        .storey_four{padding-bottom:20px;zoom:1;}
        .storey_four:after{clear:both;content:" ";display:block;font-size:0;height:0;visibility:hidden;}
        .storey_four .storey_four_left{width:950px;float:left;margin-right:10px;}
        .storey_four .storey_four_right{width:240px;float:left;}
        #bd .storey_four .storey_four_left{width:710px;}

        /*图首促销背景展示*/
        #bd_auto{width:100%; }
        .top_ad_banner,.storey_one,.storey_two,.storey_three,.storey_four,.storey_five,.storey_six,.storey_seven{width:1200px;margin: 0 auto;}
        .storey_one,.storey_three,.storey_five,.storey_six{margin-bottom:20px;}.storey_three,.storey_five{width:1200px;position:relative;overflow:hidden;margin-bottom:20px;border-bottom:1px solid #eaeaea;border-top: 1px solid #eaeaea;}
        .storey_three{padding:20px 0;}
        .storey_five{padding: 20px 0;}
        .book_3ad{width:1300px;zoom:1;padding:10px 0;}
        .book_3ad:after{clear:both;content:" ";display:block;font-size:0;height:0;visibility:hidden;}
        .book_3ad a{display:block;float:left;width:382px;margin-right:27px;}
        .book_3ad a img{display:block;width:382px;}
        #bd .storey_three,#bd .storey_five{width:960px;}
        #bd .book_3ad a,#bd .book_3ad a img{width:300px;}
        #bd .book_3ad a{margin-right:30px;}.book_reco_area{height:581px;}
        .book_reco_area .book_reco_head{height: 50px;position: relative;border-bottom:1px solid #be1c13;}
        .book_reco_area .book_reco_head .title{height: 50px;width: 108px;line-height: 0;font-size: 0;background: url(images/home/title_sprite.png) 0 -150px no-repeat;position: absolute;left: 0;top: 0;text-indent: -9999px;}
        .book_reco_area .book_reco_head a{display: block;height: 30px;line-height: 30px;font-size: 14px;color: #228bc1;position: absolute;left: 150px;top: 9px;background: url(images/home/sprite.png) 0 -46px no-repeat;padding-left: 25px;cursor: pointer;}
        .book_reco_area .book_reco_pro{width: 960px;float: left;position: relative;overflow: hidden;padding-top: 20px;height: 490px;}
        .book_reco_area .book_reco_pro .list_aa{width:1000px;position: relative;left: 0;}
        .book_reco_area .book_reco_pro .list_aa li{width: 150px;margin-right: 47px;float:left;position:relative;margin-bottom: 17px;}
        .book_reco_area .book_reco_pro .list_aa li .number{position:absolute;top:-27px;left:26px;font-size:18px;color:#ff4f4b;}
        .book_reco_area .book_reco_pro .list_aa li .name{padding: 7px 23px 0;
            height: 36px;line-height: 18px;overflow: hidden;word-wrap: break-word; word-break: break-all;}
        .book_reco_area .book_reco_pro .list_aa li .name a,.book_reco_area .book_reco_pro .list_aa li .name a:hover{color: #000;text-decoration: none;}
        .book_reco_area .book_reco_pro .list_aa li .name a:hover{text-decoration: underline;color:#ec7814;}
        .book_reco_area .book_reco_pro .list_aa li .star{height: 14px;padding: 3px 0 3px 22px;}
        .book_reco_area .book_reco_pro .list_aa li .star .level{display: inline-block;height: 13px;font-size: 0;width: 69px;background: url(/index/images/s6.png) 0 bottom repeat-x;position:relative;top:1px;}
        .book_reco_area .book_reco_pro .list_aa li .star .level span{display: block;height: 13px;font-size: 0;width:69px;background: url(/index/images/s6.png) 0 top repeat-x;}
        .book_reco_area .book_reco_pro  .list_aa li .price {padding: 0 0 0 23px;height: 16px;line-height: 16px;overflow: hidden;margin-top:4px;font-family: Arial;font-size: 14px;}
        .book_reco_area .book_reco_pro .list_aa li .price .rob {color: #c30;float: left;overflow: hidden;margin-right: 12px;font-weight: bold;}
        .book_reco_area .book_reco_pro .list_aa li .price_r {color: #aaa;
            text-decoration: line-through;float: left;}

        .book_reco_area .book_reco_text{width: 240px;float: left;background: #f7f7f7;height: 510px;overflow: hidden;}
        .book_reco_area .book_reco_text h1{color: #be1c13;font-size: 16px;height: 24px;line-height: 24px;font-weight: normal;padding-left: 7px;font-family:"Microsoft Yahei";}
        .book_reco_area .book_reco_text .book_youlike{width: 200px;margin-left: 20px;}
        .book_reco_area .book_reco_text .book_youlike1{border-bottom: 1px solid #fff;padding: 26px 0 0 0;}
        .book_reco_area .book_reco_text .book_youlike2{padding-top: 20px;}
        .book_reco_area .book_reco_text .book_youlike1 ul{border-bottom:1px solid #d8d8d8;padding-bottom: 19px;}
        .book_reco_area .book_reco_text .book_youlike ul{padding-left: 9px;}
        .book_reco_area .book_reco_text .book_youlike li{float: left;line-height: 30px;height:30px;overflow:hidden;position:relative;}
        .book_reco_area .book_reco_text .book_youlike li a,.book_reco_area .book_reco_text .book_youlike li a:hover{color: #000;}
        .book_reco_area .book_reco_text .book_youlike li a:hover{color: #ec7814;}
        .book_reco_area .book_reco_text .book_youlike1 li{width: 85px;margin-right: 5px;}
        .book_reco_area .book_reco_text .book_youlike2 li{width: 85px;margin-right: 5px;}
        #bd .book_reco_area .book_reco_pro{width:720px;}
        #bd  .book_reco_area .book_reco_pro .list_aa{width:800px;}
        #bd .book_reco_area .book_reco_pro .list_aa li{margin-right:40px;}

        .storey_five{padding-bottom:0px;border-bottom:0;}.top_ad_banner .book_1ad .pic,.top_ad_banner .book_1ad .pic img{display:block;width:1200px;height:65px;}
        #bd .top_ad_banner .book_1ad .pic,#bd .top_ad_banner .book_1ad .pic img{display:block;width:960px;}
        .top_ad_banner{margin-bottom: 10px;}.book_vip{border-right:1px solid #eaeaea;border-bottom:1px solid #eaeaea;width:1199px;overflow: hidden;position:relative;margin-bottom: 20px;height:537px;}
        .book_vip .list_aa{width:1202px;}
        .book_vip .list_aa li{width:199px;border-left:1px solid #eaeaea;;border-top:1px solid #eaeaea;float:left;overflow: hidden;height:178px;position:relative;}
        .book_vip .list_aa li.small_img .img img{padding:10px 40px 0;}
        .book_vip .list_aa li .name{height:18px;line-height:18px;font-size:12px;overflow:hidden;position:absolute;left:65px;bottom:7px;width:134px;}
        .book_vip .list_aa li .name a,.book_vip .list_aa li .name a:hover{color:#404040;text-decoration: none;}
        .book_vip .list_aa li .name a:hover{color:#ec7814;}
        .book_vip .list_aa li .name a:hover{text-decoration: underline;}
        .book_vip .list_aa li .price{position:absolute;bottom:2px;left:10px;width:58px;height:30px;color:#da245d;text-align:left;font-family:"Microsoft Yahei";}
        .book_vip .list_aa li .price span{font-size:14px;}
        .book_vip .list_aa li .price .price_s{font-size:20px;}
        .book_vip .list_aa li .icon_pop{position: absolute;top: 5px;right: 5px;}
        #bd .book_vip .list_aa li{width:159px;}
        #bd .book_vip{width:959px;}
        #bd  .book_vip .list_aa{width:962px;}
        #bd .book_vip .list_aa li.small_img .img img{padding:10px 19px 0;}
        #bd .book_vip .list_aa li .name{left: 62px;width: 96px;}.book_parters{margin-bottom: 20px;background-color: #f5f5f5;width: 1200px;}
        .book_parters .parters_title{border-bottom: 1px solid #e0e0e0;height: 42px;line-height: 42px;font-size: 18px;color: #000;padding-left: 16px;font-weight: bold;font-family:"Microsoft Yahei";}
        .book_parters .tab_box_aa{border-top:1px solid #fff;position: relative;overflow: hidden;height: 170px;}
        .book_parters .tab_box_aa .head{display:none;}
        .book_parters .tab_content_aa{zoom: 1;}
        .book_parters .tab_content_aa:after{clear:both;content:" ";display:block;font-size:0;height:0;visibility:hidden;}
        .book_parters .tab_content_aa .content{width: 1200px;height: 170px;}
        .book_parters .tab_content_aa .content .book_parters_child div div{height: 160px;padding-left: 20px;width: 218px;padding-top: 10px;float: left;border-left: 1px solid #fff;border-right: 1px solid #e0e0e0;}
        .book_parters .tab_content_aa .content .book_parters_child div div.parters1{border-left: 0;}
        .book_parters .tab_content_aa .content .book_parters_child div div.parters5{border-right: 0;}
        .book_parters .tab_content_aa .content .book_parters_child div div ul{height: 90px;overflow: hidden;position: relative;}
        .book_parters .tab_content_aa .content .book_parters_child div div li{height: 30px;line-height: 30px;width: 200px;overflow:hidden;position:relative;}
        .book_parters .tab_content_aa .content .book_parters_child div div li a,.book_parters .tab_content_aa .content .book_parters_child div div li a:hover{color: #575757;}
        .book_parters .tab_content_aa .content .book_parters_child div div li a:hover{color: #ec7814;}
        .book_parters .tab_content_aa .content .book_parters_child div div .pic{display: block;width: 172px;margin-top: 10px;position:relative;height:45px;overflow:hidden;}
        .book_parters .tab_content_aa .content .book_parters_child div div .pic img{display:block;width:172px;}
        #bd .book_parters,#bd .book_parters .tab_content_aa .content{width:960px;}
        #bd .book_parters .tab_content_aa .content .book_parters_child div div{width:170px;}
        #bd .book_parters .tab_content_aa .content .book_parters_child div div .pic,#bd .book_parters .tab_content_aa .content .book_parters_child div div .pic img{width:160px;}
        #bd .book_parters .tab_content_aa .content .book_parters_child div div li{width:150px;}
        .storey_seven .book_parters { margin-bottom: 0; height: 1px;}.book_returntop_area{left:50%;margin-left:610px;height:172px;position:fixed;bottom:40px;_position:absolute;_top:expression(eval(documentElement.scrollTop+document.documentElement.offsetHeight-220));z-index:10000;width:54px;}
        #bd .book_returntop_area{margin-left:490px;}
        .book_returntop_area a{display:block;width:54px;overflow:hidden;filter: alpha(opacity=80);line-height:22px;height:22px;padding-top:32px;font-size:12px;text-align:center;color:#7e7e7e;text-decoration:none;}
        .book_returntop_area a:hover{opacity: 1;filter: alpha(opacity=100);text-decoration:none;color:#fff;text-decoration:none;}
        .book_returntop_area .book_yjdc{margin-bottom:5px;}
        .book_returntop_area .book_yjdc a{background-position:0 0;}
        .book_returntop_area .book_yjdc a:hover{background-position:-54px 0;}
        .book_returntop_area .book_returntop a{background-position:0 -54px;text-indent: -9999px;}
        .book_returntop_area .book_returntop a:hover{background-position:-54px -54px;}
        .fixedbar_mini{left:auto;right:20px;margin-left:0;}.storey_six{border-bottom:1px solid #eaeaea;height:616px;margin-bottom:25px;}
        .storey_six .storey_six_left{float: left;width: 950px;margin-right: 10px;}
        .book_dztj{width:950px;overflow:hidden;}
        .book_dztj .tab_box_aa .head{position:relative;height:50px;border-bottom:1px solid #be1c13;}
        .book_dztj .tab_box_aa .head .tltle{height:50px;width:108px;line-height:0;font-size:0;position:absolute;left:0;top:0;text-indent: -9999px;}
        .book_dztj .tab_box_aa .head .tab_aa{height:35px;position:absolute;right:15px;top:17px;font-family:"Microsoft Yahei";}
        .book_dztj .tab_box_aa .head .tab_aa li{padding:2px 17px;height:32px;line-height:32px;float:left;color:#666;font-size:14px;margin-right:4px;cursor:pointer;}
        .book_dztj .tab_box_aa .head .tab_aa li span{cursor:pointer;}
        .book_dztj .tab_box_aa .head .tab_aa li.on{border-radius:6px 6px 0 0;border:2px solid #be1c13;border-bottom:none;color: #be1c13;padding:0 15px;background:#fff;font-weight:bold;}
        .book_dztj .tab_content_aa ul.first{padding:30px 0 17px;border-bottom:1px dotted #d4d4d4;}
        .book_dztj .tab_content_aa ul.first .line1{height:200px;position:relative;width:950px;}
        .book_dztj .tab_content_aa ul.first .line1 .icon_pop{position: absolute;top: -10px;left: 196px;}
        .book_dztj .tab_content_aa ul.first .line1 .number{position:absolute;top:-25px;left:10px;font-size:18px;color:#ff4f4b;}
        .book_dztj .tab_content_aa ul.first .line1 .img img{width:200px;}
        .book_dztj .tab_content_aa ul.first .line1 .name,.book_dztj .tab_content_aa ul.first .line1 .star,.book_dztj .tab_content_aa ul.first .line1 .price,.book_dztj .tab_content_aa ul.first .detail{position:absolute;top:0;left:210px;height:32px;line-height:32px;width:740px;overflow: hidden;}
        .book_dztj .tab_content_aa ul.first .line1 .name a,.book_dztj .tab_content_aa ul.first .line1 .name a:hover{color:#000;font-size:14px;text-decoration: none;font-weight:bold;}
        .book_dztj .tab_content_aa ul.first .line1 .name a:hover{text-decoration: underline;color:#ec7814;}
        .book_dztj .tab_content_aa ul.first .line1 .star{height:24px;line-height:24px;top:32px;font-size:12px;}
        .book_dztj .tab_content_aa ul.first .line1 .price{height:24px;line-height:24px;top:56px;color:#c30;font-family:"arial";font-size:14px;}
        .book_dztj .tab_content_aa ul.first .line1 .price .rob .price_title{font-size:14px;color:#000;font-weight: normal;}
        .book_dztj .tab_content_aa ul.first .line1 .price .price_r{color:#adadad;text-decoration: line-through;margin-right:15px;}
        .book_dztj .tab_content_aa ul.first .line1 .price .rob{margin-right:15px;font-weight:bold;}
        .book_dztj .tab_content_aa ul.first .line1 .price .ebookprice_n{display:inline-block;font:12px Arial;padding:4px 0 0 0;color:#787878;}
        .book_dztj .tab_content_aa ul.first .line1 .star .level{display: inline-block;height: 13px;font-size: 0;width: 69px;background: url(/index/images/s6.png) 0 bottom repeat-x;position:relative;top:1px;}
        .book_dztj .tab_content_aa ul.first .line1 .star .level span{display: block;height: 13px;font-size: 0;width:69px;background: url(/index/images/s6.png) 0 top repeat-x;}
        .book_dztj .tab_content_aa ul.first .detail{top:80px;line-height:24px;height:120px;overflow: hidden;word-break:break-all;word-wrap:break-word;color:#666;}

        .book_dztj .roll_aa{position:relative;width:950px;overflow: hidden;padding:40px 0 22px 0;}
        .book_dztj .roll_aa .over{position:relative;width:750px;height:233px;}
        #bd .book_dztj .roll_aa .over{position:relative;width:600px;height:233px;}

        .book_dztj .roll_aa .btn_brand_prev{width:25px;height:50px;background:url(http://img4.ddimg.cn/00363/book_index/book_fanye_btn.png) 0 0 no-repeat;position:absolute;left:0;top:50%;margin-top:-20px;z-index:2;cursor:pointer;}
        .book_dztj .roll_aa    .btn_brand_next{width:25px;height:50px;background:url(http://img4.ddimg.cn/00363/book_index/book_fanye_btn.png) -26px 0 no-repeat;z-index:2;cursor:pointer;position: absolute;right: 0;top: 50%;margin-top: -20px;}
        .book_dztj .roll_aa .btn_brand_prev:hover,.book_presell .btn_prev_hover{cursor:pointer;background-position:0 -51px;}
        .book_dztj .roll_aa .btn_brand_next:hover,.book_presell .btn_next_hover{cursor:pointer;background-position:-26px -51px;}

        .book_dztj .roll_aa .over .list_aa{width:10000px;position: absolute;left: 0;position:absolute;}
        .book_dztj .roll_aa .over .list_aa li{width: 150px;margin-right: 47px;float:left;position:relative;}
        .book_dztj .roll_aa .over .list_aa li a.img,.book_dztj .roll_aa .over .list_aa li a.img img{display:block;width:150px;height:150px;}
        .book_dztj .roll_aa .over .list_aa li .number{position:absolute;top:-27px;left:26px;font-size:18px;color:#666;}
        .book_dztj .roll_aa .over .list_aa li.line1 .number,.book_dztj .roll_aa .over .list_aa li.line2 .number{color:#ff4f4b;}
        .book_dztj .roll_aa .over .list_aa li .name{padding:7px 20px 0;height:18px;line-height: 18px;overflow: hidden;}
        .book_dztj .roll_aa .over .list_aa li .name a,.book_dztj .roll_aa .over .list_aa li .name a:hover{color: #000;text-decoration: none;}
        .book_dztj .roll_aa .over .list_aa li .name a:hover{text-decoration: underline;color:#ec7814;}
        .book_dztj .roll_aa .over .list_aa li .star{height: 14px;padding: 3px 0 3px 20px;}
        .book_dztj .roll_aa .over .list_aa li .star .level{display: inline-block;height: 13px;font-size: 0;width: 69px;background: url(/index/images/s6.png) 0 bottom repeat-x;position:relative;top:1px;}
        .book_dztj .roll_aa .over .list_aa li .star .level span{display: block;height: 13px;font-size: 0;width:69px;background: url(/index/images/s6.png) 0 top repeat-x;}
        .book_dztj .roll_aa .over .list_aa li .price {padding-left:20px;height:36px;line-height: 16px;overflow: hidden;margin-top:4px;font-size:14px;position:relative;}
        .book_dztj .roll_aa .over .list_aa li .price .rob {color: #c30;float: left;overflow: hidden;margin-right: 12px;font-weight: bold;}
        .book_dztj .roll_aa .over .list_aa li .price_r{color: #aaa;text-decoration: line-through;float: left;}
        .book_dztj .roll_aa .over .list_aa li .ebookprice_n{position:absolute;left:20px;top:16px;display:inline-block;font:12px Arial;padding:4px 0 0 0;color:#787878; }
        #bd .storey_six .storey_six_left,#bd .book_dztj,#bd .book_dztj .tab_content_aa ul.first .line1,#bd .book_dztj .roll_aa{width:710px;}
        #bd .book_dztj .tab_content_aa ul.first .line1 .name,#bd  .book_dztj .tab_content_aa ul.first .line1 .star, #bd .book_dztj .tab_content_aa ul.first .line1 .price,#bd  .book_dztj .tab_content_aa ul.first .detail{width:500px;}
        #bd .book_dztj .roll_aa .over .list_aa li{margin-right:40px;}
        .book_dztj .mix_marquee_tab{position:absolute;left:434px;top:285px;}
        .book_dztj .mix_marquee_tab li{float:left;width:10px;height:10px;font-size:0;line-height:10px;margin-right:10px;background:url(http://img4.ddimg.cn/00363/book_index/diandian_bg2.png) 0 -20px no-repeat;text-indent:-9999px;cursor: pointer;}
        .book_dztj .mix_marquee_tab li.current{background-position:0 0;}
        #bd  .book_dztj .mix_marquee_tab{left:310px;}.storey_six_right{width: 240px;float: left;}
        .book_community{border:1px solid #eaeaea;width: 238px;height: 594px;}
        .book_community .sq_head,.book_community .sq_head:hover{text-decoration: none;text-indent: -9999px;display:block;width: 238px;height: 84px;}
        .book_community .sq_activity_text{padding-left: 14px;color: #be1c13;font-size: 18px;font-weight: normal;height: 30px;line-height: 30px;margin-top: 13px;font-family:"Microsoft Yahei";}
        .book_community .sq_activity_title,.book_community .sq_activity_title:hover{display: block;padding:0 14px;line-height: 24px;font-size: 14px;color: #000;height: 48px;overflow: hidden;position: relative;font-weight:bold;}
        .book_community .sq_activity_title:hover{color:#ec7814;}
        .book_community .sq_activity_product{margin-left: 44px;margin-top: 18px;}
        .book_community .sq_activity_product .img,.book_community .sq_activity_product .img img{display: block;width: 150px;height: 150px;}
        .book_community .sq_activity_info,.book_community .sq_activity_info:hover{margin-top: 20px;display:block;padding:0 14px;color: #000;line-height: 24px;height: 168px;position: relative;overflow: hidden;}
        .book_community .sq_activity_info:hover{color:#ec7814;}
        .book_community div.book_sq_button{padding-left: 16px;zoom:1;margin-top: 17px;}
        .book_community div.book_sq_button:after{content:" ";height:0;display:block;clear:both;visibility:hidden;}
        .book_community div.book_sq_button a,.book_community div.book_sq_button a:hover{width: 98px;height: 28px;display: block;float: left;background: #be1c13;text-align:center;font-family:"Microsoft Yahei";font-size:16px;color:#fff;text-decoration: none;line-height:28px;}
        .book_community div.book_sq_button a:hover{background: #8c0c18;}
        .book_community div.book_sq_button a.sq_cjhd_button{background:#ff5d5d;margin-right: 10px;}
        .book_community div.book_sq_button a.sq_cjhd_button:hover{background:#c72222;}.book_tuijian{height:606px;}
        .tuijian{width:950px;overflow:hidden;position:relative;height:588px;}
        .tuijian .head{position:relative;height:50px;border-bottom:1px solid #be1c13;}
        .tuijian .head .tltle{height:50px;width:108px;line-height:0;font-size:0;background: url(images/home/title_sprite.png) 0 -78px no-repeat;position:absolute;left:0;top:0;text-indent: -9999px;}
        .tuijian .head .tab_aa{height:35px;position:absolute;right:15px;top:17px;}
        .tuijian .head .tab_aa li{padding:2px 17px;height:32px;line-height:32px;float:left;color:#666;font-size:14px;margin-right:4px;font-family:"Microsoft Yahei";cursor:pointer;}
        .tuijian .head .tab_aa li span{cursor:pointer;}
        .tuijian .head .tab_aa li.on{border-radius:6px 6px 0 0;border:2px solid #be1c13;border-bottom:none;color: #be1c13;background:#fff;padding:0 15px;font-weight:bold;}
        .tuijian .tab_content_aa .list_aa{padding:20px 0 0 0;height:508px;overflow: hidden;width:1000px;}
        .tuijian .tab_content_aa .list_aa li{float:left;width:150px;margin-right:47px;margin-bottom:30px;height:233px;position:relative;}
        .tuijian .tab_content_aa .list_aa li .img,.tuijian .tab_content_aa .list_aa li .img img{width:150px;height:150px;display:block;}
        .tuijian .tab_content_aa .list_aa li .name{padding: 7px 20px 0;height:18px;line-height: 18px;overflow: hidden;}
        .tuijian .tab_content_aa .list_aa li .name a,.tuijian .tab_content_aa .list_aa li .name a:hover{color:#000;text-decoration: none;}
        .tuijian .tab_content_aa .list_aa li .name a:hover{text-decoration: underline;color:#ec7814;}
        .tuijian .tab_content_aa .list_aa li .author{padding: 0 20px;height: 24px;line-height: 24px;overflow: hidden;color: #aaa;}
        .tuijian .tab_content_aa .list_aa li .price{padding-left:20px;height:36px;line-height: 16px;font-family:"Arial";font-size:14px; position:relative;}
        .tuijian .tab_content_aa .list_aa li .price_r{color:#aaa;text-decoration: line-through;float: left;overflow: hidden;}
        .tuijian .tab_content_aa .list_aa li .price .rob{color: #c30;float: left;margin-right:12px;font-weight: bold;}
        .tuijian .tab_content_aa .list_aa li .ebookprice_n{position:absolute;left:20px;top:16px;display:inline-block;font:12px Arial;padding:4px 0 0 0;color:#787878;}
        .tuijian a.more_a{position:absolute;right:5px;bottom:5px;color:#5097bc;}
        #bd .tuijian{width:710px;}
        #bd .tuijian .tab_content_aa .list_aa{width:800px;}
        #bd .tuijian .tab_content_aa .list_aa li{margin-right:40px;}
        #bd .tuijian .head .tab_aa li{padding:2px 8px;}
        #bd .tuijian .head .tab_aa li.on{padding: 0 6px;}
        #bd .tuijian .tab_content_aa .list_aa li .icon_pop{position: absolute;right: 13px;top: -5px;}.book_hot{width: 950px;}
        .book_hot .head{height: 36px;border:1px solid #eaeaea;position: relative;}
        .book_hot .head ul{height: 39px;position: absolute;left: -1px;top: -2px;}
        .book_hot .head li{float: left;width: 122px;height: 38px;line-height: 38px;margin-top:1px;font-family:"Microsoft Yahei";}
        .book_hot .head li.first span{border-left-color: #eaeaea;}
        .book_hot .head li span{display: block;width: 120px;padding:0 1px;height: 38px;font-size: 16px;color: #3d3d3d;text-align: center;cursor: pointer;}
        .book_hot .head li.on{border-top:2px solid #be1c13;margin-top: 0px;background-color: #fff;height: 37px;}
        .book_hot .head li.on span{color: #be1c13;border:1px solid #eaeaea;border-width:0 1px;padding: 0;line-height: 36px;height: 37px;font-weight:bold;}
        .book_hot .tab_content_aa{border:1px solid #eaeaea;border-top: 0px;height: 471px;position: relative;}
        .book_hot .hot_author .right{position: absolute;left: 795px;top: 11px;width: 132px;border:1px solid #e1e1e1;background-color: #f8f8f8;padding: 0 4px;height: 448px;overflow: hidden;}
        .book_hot .hot_author .right ul{margin-top: -1px;}
        .book_hot .hot_author .right li{border-top:1px solid #fff;border-bottom: 1px solid #e1e1e1;height: 42px;position: relative;overflow: hidden;line-height: 42px;padding-bottom: 1px;vertical-align: top;}
        .book_hot .hot_author .right li span.number{float: left;width: 22px;padding-left: 8px;color: #be1c13;font-size: 14px;}
        .book_hot .hot_author .right li p{width: 100px;float: left;color: #3d3d3d;}
        .book_hot .hot_author .right li p a{color:#3d3d3d;}
        .book_hot .hot_author .right li p a:hover{color: #ff4f4b;text-decoration: none;}
        .book_hot .hot_author .right li:hover p a,.book_hot .hot_author .right li:hover span.number,.book_hot .hot_author .right li:hover p{color: #ff4f4b;text-decoration: none;}
        .book_hot .hot_author .left{width: 750px;position: absolute;left: 10px;top: 0;}
        .book_hot .hot_author .left .introduction{height: 195px;border-bottom: 1px dotted #d4d4d4;}
        .book_hot .hot_author .left .introduction .img,.book_hot .hot_author .left .introduction .img img{display: block;height: 143px;height: 143px;}
        .book_hot .hot_author .left .introduction .img{position: absolute;left: 45px;top: 20px;}
        .book_hot .hot_author .left .introduction .num_logo{position: absolute;left: 0px;top: 0px;font-size: 30px;font-weight:bold;color: #ff4f4b;font-family: Arial;height: 46px;line-height: 46px;font-family:"Microsoft Yahei";}
        .book_hot .hot_author .left .introduction .num_logo span{font-size: 16px;}
        .book_hot .hot_author .left .introduction .author{font-size: 18px;color: #000;position: absolute;left: 206px;top: 40px;height: 30px;line-height: 30px;font-weight:bold;overflow:hidden;}
        .book_hot .hot_author .left .introduction .author a{color:#000;font-weight: bold;}
        .book_hot .hot_author .left .introduction .author a:hover{color:#ec7814;}
        .book_hot .hot_author .left .introduction .detail{height: 96px;line-height: 24px;overflow: hidden;position: absolute;left: 206px;top: 70px;color: #666;}
        .book_hot .hot_author .left .zuopin{position: absolute;left: 0px;top: 184px;height: 24px;line-height: 24px;width: 80px;background-color: #fff;}
        .book_hot .hot_author .left .zuopin span{display: block;width: 66px;border-radius: 5px;background-color: #f8f8f8;text-align: center;color:#000;font-size:14px;}
        .book_hot .author_books{position:absolute;left: 0;top:201px;width: 750px;overflow: hidden;}
        .book_hot .author_books .list_aa{padding:20px 0 0 0;height:508px;overflow: hidden;width:1000px;}
        .book_hot .author_books .list_aa li{float:left;width:150px;margin-right:47px;margin-bottom:20px;position:relative;}
        .book_hot .author_books .list_aa li .img,.book_hot .author_books .list_aa li .img img{width:150px;display:block;height:150px;}
        .book_hot .author_books .list_aa li .name{padding:7px 20px 0;height:18px;line-height:18px;overflow: hidden;}
        .book_hot .author_books .list_aa li .name a,.book_hot .author_books .list_aa li .name a:hover{color:#000;text-decoration: none;}
        .book_hot .author_books .list_aa li .name a:hover{text-decoration: underline;color:#ec7814;}
        .book_hot .author_books .list_aa li .author{padding: 0 20px;height: 24px;line-height: 24px;overflow: hidden;color: #aaa;font-family: 'Microsoft Yahei';}
        .book_hot .author_books .list_aa li .price{padding-left:20px;height:36px;line-height: 16px;font-family: 'Arial';overflow:hidden;font-size:14px; position:relative;}
        .book_hot .author_books .list_aa li .price_r{color: #aaa;text-decoration: line-through;float: left;}
        .book_hot .author_books .list_aa li .price .rob{color: #c30;float: left;overflow: hidden;margin-right:12px;font-weight: bold;}
        .book_hot .author_books .list_aa li .ebookprice_n{position:absolute;left:20px;top:16px;display:inline-block;font:12px Arial;padding:4px 0 0 0;color:#787878;}
        .book_hot .author_books .list_aa li .star{height: 14px;padding:3px 0 3px 20px;}
        .book_hot .author_books .list_aa li .title{display: none;}
        .book_hot .author_books .list_aa li .level,.book_hot .author_books .list_aa li .level span{display: block;height: 13px;font-size: 0;width: 69px;background:url(/index/images/s6.png) 0 bottom repeat-x;}
        .book_hot .author_books .list_aa li .level span{background-position: 0 top;}
        .book_hot .hot_author23 .left{position: absolute;width: 145px;height: 420px;left: 25px;top: 23px;border-right: 1px dotted #eaeaea;padding-right: 39px;}
        .book_hot .hot_author23 .left .img,.book_hot .hot_author23 .left .img img{display: block;width: 145px;height: 145px;}
        .book_hot .hot_author23 .left .img{margin-bottom: 5px;}
        .book_hot .hot_author23 .left .author{font-size: 18px;color: #000;text-align: center;height: 42px;line-height: 42px;font-weight:bold;position:relative;overflow:hidden;}
        .book_hot .hot_author23 .left .author a{color:#000;}
        .book_hot .hot_author23 .left .author a:hover{color:#ec7814;}
        .book_hot .hot_author23 .left .detail{color: #666;line-height: 24px;}
        .book_hot .hot_author23 .right{width: 670px;position: absolute;left: 240px;top: 28px;}
        .book_hot .hot_author23 .right .show_book{border-bottom: 1px dotted #eaeaea;padding-bottom: 25px;}
        .book_hot .hot_author23 .right .show_book .img,.book_hot .hot_author23 .right .show_book .img img{display: block;width: 200px;height: 200px;}
        .book_hot .hot_author23 .right .show_book .img{float: left;}
        .book_hot .hot_author23 .right .show_book li p{float: left;width: 470px;}
        .book_hot .hot_author23 .right .show_book li p.name{height: 48px;position: relative;overflow: hidden;padding-top: 5px;}
        .book_hot .hot_author23 .right .show_book li p a,.book_hot .hot_author23 .right .show_book li p a:hover{color: #000;font-size: 14px;line-height: 24px;font-weight:bold;}
        .book_hot .hot_author23 .right .show_book li p a:hover{color:#ec7814;}
        .book_hot .hot_author23 .right .show_book li .level,.book_hot .hot_author23 .right .show_book li .level span{display: block;height: 13px;font-size: 0;width: 69px;background:url(/index/images/s6.png) 0 bottom repeat-x;}
        .book_hot .hot_author23 .right .show_book li .level span{background-position: 0 top;}
        .book_hot .hot_author23 .right .show_book li .star{height: 14px;padding:8px 0 7px;}
        .book_hot .hot_author23 .right .show_book li .price{font-size: 14px;margin-top: 2px;font-family:"Arial";}
        .book_hot .hot_author23 .right .show_book li .price .rob{color: #c30000;margin-right: 12px;font-weight:bold;}
        .book_hot .hot_author23 .right .show_book li .price .price_r{color: #aaa;text-decoration: line-through; margin-right:12px;}
        .book_hot .hot_author23 .right .show_book li .ebookprice_n{display:inline-block;font:12px Arial;padding:4px 0 0 16px;color:#787878; background:url(http://img63.ddimg.cn/upload_img/00111/book/e-book.png) no-repeat 0 5px;}
        .book_hot .hot_author23 .right .show_book li .detail{height: 72px;position: relative;overflow: hidden;line-height: 24px;color: #666;margin-top: 10px;}
        .book_hot .hot_author23 .right .show_book .list_aa li .icon_pop{position: absolute;left: 190px;top: -4px;}
        .book_hot .hot_author23 .right .other_books{font-size: 14px;color: #666;line-height: 50px;margin-top: 20px;}
        .book_hot .hot_author23 .right .other_books div{height: 50px;position: relative;overflow: hidden;font-weight:bold;}
        .book_hot .hot_author23 .right .other_books div .list_aa{position: absolute;left: 135px;top: 0;height: 50px;width: 535px;}
        .book_hot .hot_author23 .right .other_books div .list_aa li{float: left;margin-right: 15px;}
        .book_hot .hot_author23 .right .other_books div .list_aa li a,.book_hot .hot_author23 .right .other_books div .list_aa li a:hover{color: #3576b2;font-weight:normal;}
        #bd .book_hot .hot_author23 .right .other_books div .list_aa{width:295px;}
        #bd .book_hot{width:710px;}
        #bd .book_hot .hot_author .left,#bd .book_hot .author_books{width:510px;}
        #bd .book_hot .author_books .list_aa li{margin-right:37px;}
        #bd  .book_hot .hot_author .right{left:555px;}
        #bd  .book_hot .hot_author23 .right{width:430px;}
        #bd  .book_hot .hot_author23 .right .show_book li p{width:230px;}
        #bd .book_hot .author_books .list_aa li .icon_pop{position: absolute;right: 16px;top: 0;}.ebook_bestsell{width: 240px;padding-top: 10px;margin-bottom:41px;}
        .ebook_bestsell .title{height: 40px;line-height: 40px;padding-left: 34px;font-size: 16px;color: #000;font-weight: bold;border-bottom: 2px solid #be1c13;font-family:"Microsoft Yahei";position:relative;overflow:hidden;}
        .ebook_bestsell .title a{color:#000;}
        .ebook_bestsell .title a:hover{text-decoration: none;color: #ec7814;}
        .ebook_bestsell .ebook_sell_list{border:1px solid #eaeaea;border-top:0;padding-top:3px;height:480px;position:relative;overflow:hidden;}
        .ebook_bestsell .ebook_sell_list .list_ab li.bar{height: 36px;line-height: 36px;border-bottom: 1px dotted #d8d8d8;width: 220px;margin-left: 9px;vertical-align: top;}
        .ebook_bestsell .ebook_sell_list .list_ab li.bar span.num{width:29px;padding-left: 8px;float: left;font-size: 16px;color: #000;}
        .ebook_bestsell .ebook_sell_list .list_ab li.line1 span.num1,.ebook_bestsell .ebook_sell_list .list_ab li.line2 span.num2,.ebook_bestsell .ebook_sell_list .list_ab li.line3 span.num3{color: #d10000;}
        .ebook_bestsell .ebook_sell_list .list_ab li.bar .name{float: left;height: 36px;position: relative;overflow: hidden;width:182px;}
        .ebook_bestsell .ebook_sell_list .list_ab li.item{height: 146px;width: 220px;margin-left: 9px;position: relative;border-bottom: 1px dotted #d8d8d8;vertical-align: top;}
        .ebook_bestsell .ebook_sell_list .list_ab li.item .num{font-size: 16px;color: #000;height: 24px;line-height: 24px;position: absolute;left: 8px;top: 6px;z-index: 2;}
        .ebook_bestsell .ebook_sell_list .list_ab li.item .img{position: absolute;left: 20px;top:11px;}
        .ebook_bestsell .ebook_sell_list .list_ab li.item .img,.ebook_bestsell .ebook_sell_list .list_ab li.item .img img{display:block;width: 120px;height: 120px;}
        .ebook_bestsell .ebook_sell_list .list_ab li.item .name{height: 44px;line-height: 22px;position: absolute;overflow: hidden;top: 9px;left: 145px;}
        .ebook_bestsell .ebook_sell_list .list_ab li.item .name a,.ebook_bestsell .ebook_sell_list .list_ab li.item .name a:hover,.ebook_bestsell .ebook_sell_list .list_ab li.bar .name a,.ebook_bestsell .ebook_sell_list .list_ab li.bar .name a:hover{color: #000;word-break:break-all;word-wrap:break-word;}
        .ebook_bestsell .ebook_sell_list .list_ab li.item .name a:hover,.ebook_bestsell .ebook_sell_list .list_ab li.bar .name a:hover{color: #ec7814;}
        .ebook_bestsell .ebook_sell_list .list_ab li.item .price{position: absolute;top: 55px;left: 145px;font-size: 14px;line-height: 20px;font-family:"Arial";}
        .ebook_bestsell .ebook_sell_list .list_ab li.item .price .rob{display: block;font-weight:bold;}
        .ebook_bestsell .ebook_sell_list .list_ab li.item .price .rob,.ebook_bestsell .ebook_sell_list .list_ab li.item .price .rob span{color: #c30000;font-size: 14px;line-height: 20px;height: 20px;}
        .ebook_bestsell .ebook_sell_list .list_ab li.item .price .num{position: static;}
        .ebook_bestsell .ebook_sell_list .list_ab li.item .price .price_r,.ebook_bestsell .ebook_sell_list .list_ab li.item .price .price_r span{color: #a7a7a7;text-decoration: line-through;line-height: 18px;height: 18px;font-size: 14px;}
        .ebook_bestsell .ebook_sell_list .list_ab li.item .link{position: absolute;left: 145px;top:97px;}
        .ebook_bestsell .ebook_sell_list .list_ab li.item .link,.ebook_bestsell .ebook_sell_list .list_ab li.item .link a,.ebook_bestsell .ebook_sell_list .list_ab li.item .link a:hover{color: #be1c13;}
        .ebook_bestsell .ebook_sell_list .list_ab li.item .icon_pop{position: absolute;left: 141px;top: 14px;}
        .ebook_bestsell .ebook_sell_list .book_top{position: relative;height: 506px;}
        .ebook_bestsell   .more{border:1px solid #eaeaea;border-top:0;text-align:right;background:#fff;height: 27px;line-height: 20px;padding-right:5px;position:relative;top:-2px;}
        .ebook_bestsell  .more_top{color: #5097bc;}.book_right_ad{width:240px;position:relative;overflow:hidden;height:510px;}
        .book_right_ad .pic,.book_right_ad .pic img{display:block;width:240px;height:120px;}
        .book_right_ad .pic{margin-bottom:10px;}.dujia{width:950px;overflow:hidden;position:relative;}
        .dujia .head{position:relative;height:50px;border-bottom:1px solid #be1c13;}
        .dujia .head .tltle{height:50px;width:108px;line-height:0;font-size:0;background: url(images/home/title_sprite.png) 0 0 no-repeat;position:absolute;left:0;top:0;text-indent: -9999px;}
        .dujia .head .tab_aa{height:35px;position:absolute;right:15px;top:17px;}
        .dujia .head .tab_aa li{padding:2px 17px 0;height:32px;line-height:32px;float:left;color:#666;font-size:14px;font-family: 'Microsoft Yahei';margin-right:4px;cursor:pointer;}
        .dujia .head .tab_aa li span{cursor:pointer;}
        .dujia .head .tab_aa li.on{background:#fff;border-radius:6px 6px 0 0;border:2px solid #be1c13;border-bottom:none;color: #be1c13;padding:0 15px;font-weight:bold;}
        .dujia .tab_content_aa .list_aa{padding:20px 0 0 0;height:513px;overflow: hidden;width:1000px;}
        .dujia .tab_content_aa .list_aa li{float:left;width:150px;height:270px;margin-right:47px;position:relative;}
        .dujia .tab_content_aa .list_aa li .img,.dujia .tab_content_aa .list_aa li .img img{width:150px;height:150px;display:block;}
        .dujia .tab_content_aa .list_aa li .name{padding:7px 20px 0;height:18px;line-height: 18px;overflow: hidden;}
        .dujia .tab_content_aa .list_aa li .name a,.dujia .tab_content_aa .list_aa li .name a:hover{color:#000;text-decoration: none;}
        .dujia .tab_content_aa .list_aa li .name a:hover{text-decoration: underline;color:#ec7814;}
        .dujia .tab_content_aa .list_aa li .num_logo{padding:5px 0px 0 43px;background:url(images/home/sprite.png) 20px -86px no-repeat;height:16px;line-height:16px;display:block;color: #be1c13;font-family: '宋体';font-size:12px;overflow:hidden;}
        .dujia .tab_content_aa .list_aa li .price{padding:5px 0 0 20px;height:36px;line-height:16px;overflow:hidden;font-family:"Arial";font-size:14px; position:relative;}
        .dujia .tab_content_aa .list_aa li .price_r{color: #aaa;text-decoration: line-through;float:left;}
        .dujia .tab_content_aa .list_aa li .price .rob{color:#c30;float:left;margin-right:12px;font-weight: bold;}
        .dujia .tab_content_aa .list_aa li .ebookprice_n{position:absolute;left:20px;top:20px;display:inline-block;font:12px Arial;padding:4px 0 0 0;color:#787878;}
        #bd .dujia{width:710px;}
        #bd .dujia .tab_content_aa .list_aa li{margin-right:40px;}
        #bd .dujia .tab_content_aa .list_aa{width:800px;}
        #bd .dujia .head .tab_aa li{padding:2px 8px;}
        #bd .dujia .head .tab_aa li.on{padding: 0 6px;}
        #bd .dujia .tab_content_aa .list_aa li .icon_pop{position:absolute;right:13px;top:-5px;}
        .book_sell{width: 240px;margin-bottom: 20px;padding-top:10px;}
        .book_sell .title{height: 40px;line-height: 40px;padding-left: 34px;font-size: 16px;color: #000;font-weight: bold;background: url(images/home/sprite.png) 5px 4px no-repeat;font-family:"Microsoft Yahei";position:relative;overflow:hidden;}
        .book_sell .title a{color:#000;}
        .book_sell .title a:hover{color:#ec7814;text-decoration:none;}
        .book_sell .tab_box_aa .head ul{height: 25px;}
        .book_sell .tab_box_aa .head ul li{float: left;width: 48px;}
        .book_sell .tab_box_aa .head ul li span{display: block;text-align: center;height: 20px;line-height: 20px;border:1px solid #eaeaea;border-left: 0;padding: 2px 0 1px;color: #000;cursor: pointer;}
        .book_sell .tab_box_aa .head ul li.first span{border-left:1px solid #eaeaea;}
        .book_sell .tab_box_aa .head ul li.on{border-top:2px solid #be1c13;}
        .book_sell .tab_box_aa .head ul li.on span{border-bottom: 0px;padding-top: 1px;border-top: 0;font-weight: bold;color: #be1c13;}
        .book_sell .tab_content_aa{border:1px solid #eaeaea;border-top:0;padding-top:3px;}
        .book_sell .tab_content_aa .list_ab li.bar{height: 36px;line-height: 36px;border-bottom: 1px dotted #d8d8d8;width: 220px;margin-left: 9px;vertical-align: top;}
        .book_sell .tab_content_aa .list_ab li.bar span.num{width:29px;padding-left: 8px;float: left;font-size: 16px;color: #000;}
        .book_sell .tab_content_aa .list_ab li.line1 span.num1,.book_sell .tab_content_aa .list_ab li.line2 span.num2,.book_sell .tab_content_aa .list_ab li.line3 span.num3{color: #d10000;}
        .book_sell .tab_content_aa .list_ab li.bar .name{float: left;height: 36px;position: relative;overflow: hidden;width:182px;}
        .book_sell .tab_content_aa .list_ab li.item{height: 146px;width: 220px;margin-left: 9px;position: relative;border-bottom: 1px dotted #d8d8d8;vertical-align: top;}
        .book_sell .tab_content_aa .list_ab li.item .num{font-size: 16px;color: #000;height: 24px;line-height: 24px;position: absolute;left: 8px;top: 6px;z-index: 2;}
        .book_sell .tab_content_aa .list_ab li.item .img{position: absolute;left: 20px;top:11px;}
        .book_sell .tab_content_aa .list_ab li.item .img,.book_sell .tab_content_aa .list_ab li.item .img img{display:block;width: 120px;height: 120px;}
        .book_sell .tab_content_aa .list_ab li.item .name{height: 44px;line-height: 22px;position: absolute;overflow: hidden;top: 9px;left: 145px;}
        .book_sell .tab_content_aa .list_ab li.item .name a,.book_sell .tab_content_aa .list_ab li.item .name a:hover,.book_sell .tab_content_aa .list_ab li.bar .name a,.book_sell .tab_content_aa .list_ab li.bar .name a:hover{color: #000;word-break:break-all;word-wrap:break-word;}
        .book_sell .tab_content_aa .list_ab li.item .name a:hover,.book_sell .tab_content_aa .list_ab li.bar .name a:hover{color:#ec7814;}
        .book_sell .tab_content_aa .list_ab li.item .price{position: absolute;top: 55px;left: 145px;font-size: 14px;line-height: 20px;font-family:"Arial";}
        .book_sell .tab_content_aa .list_ab li.item .price .rob{display: block;font-weight:bold;}
        .book_sell .tab_content_aa .list_ab li.item .price .rob,.book_sell .tab_content_aa .list_ab li.item .price .rob span{color: #c30000;font-size: 14px;line-height: 20px;height: 20px;}
        .book_sell .tab_content_aa .list_ab li.item .price .num{position: static;}
        .book_sell .tab_content_aa .list_ab li.item .price .price_r,.book_sell .tab_content_aa .list_ab li.item .price .price_r span{color: #a7a7a7;text-decoration: line-through;line-height: 18px;height: 18px;font-size: 14px;}
        .book_sell .tab_content_aa .list_ab li.item .link{position: absolute;left: 145px;top:97px;}
        .book_sell .tab_content_aa .list_ab li.item .link,.book_sell .tab_content_aa .list_ab li.item .link a,.book_sell .tab_content_aa .list_ab li.item .link a:hover{color: #be1c13;}
        .book_sell .tab_content_aa .list_ab li.item .icon_pop {position: absolute;left: 141px;top: 14px;}
        .book_sell .tab_content_aa .book_top{position: relative;height: 506px;}
        .book_sell .tab_content_aa .book_top .list_ab{position: relative;height: 480px;overflow: hidden;}
        .book_sell .tab_content_aa .book_top .more_top{color: #5097bc;width: 225px;background: #fff;display: block;height: 30px;line-height: 30px;position: absolute;bottom: 1px;left: 5px;text-align: right;}.sidemenu{width:190px;}
        .sidemenu .flq_body .level_one dl.primary_dl dd:after,.sidemenu .flq_body .submenu .eject_left dl.inner_dl:after,.sidemenu .flq_body .submenu .eject_left dl.inner_dl dd:after{content: ' ';height: 0;display: block;clear: both;visibility: hidden;}
        .sidemenu .flq_head{height:35px;width:190px;text-align:center;font-size:18px;background: #be1c13;border-radius:4px 4px 0 0;line-height:34px;color:#fff;font-family:"Microsoft Yahei";}
        .sidemenu .flq_body{width:190px;border-top:2px dotted #be1c13;border-bottom:1px solid #be1c13;position:relative;height: 878px;_height:879px;background: url(/index/images/s6.png) -20px 0px repeat-y;}
        .sidemenu .flq_body .level_one{width:188px;border:1px solid #be1c13;border-width: 0 1px;}
        .sidemenu .flq_body .level_one dl.primary_dl{width:170px;border-bottom:1px dotted #849555;margin-left: 9px;position: relative;overflow: hidden;padding-top: 3px;padding-bottom: 3px;}
        .sidemenu .flq_body .last dl.primary_dl{border-bottom: 0;}
        .sidemenu .flq_body .level_one dl.primary_dl dt{padding-bottom: 3px;font-family:"Microsoft Yahei";}
        .sidemenu .flq_body .level_one dl.primary_dl dd{zoom: 1;width: 178px;padding-bottom: 3px;}
        .sidemenu .flq_body .level_one dl.primary_dl dt span{color: #0d0d0d;font-size: 14px;height: 24px;line-height: 24px;background: url(images/arrow4.png) 160px 8px no-repeat;font-weight:bold;display:block;}
        .sidemenu .flq_body .level_one dl.primary_dl dt a,.sidemenu .flq_body .level_one dl.primary_dl dt a:hover{color: #0d0d0d;text-decoration: none;font-size: 14px;line-height: 24px;}
        .sidemenu .flq_body .level_one dl.primary_dl dt a:hover{color:#ec7814;}
        .sidemenu .flq_body .level_one dl.primary_dl dd a,.sidemenu .flq_body .level_one dl.primary_dl dd a:hover{color: #666;float: left;height: 24px;line-height:24px;padding-right:5px;white-space: nowrap;background: url(images/arrow4.png) right center no-repeat;margin-right: 6px;}
        .sidemenu .flq_body .level_one dl.primary_dl dd a.last_a{background:none;}
        .sidemenu .flq_body .level_one dl.primary_dl dd a:hover{text-decoration: underline;color:#ec7814;}

        .sidemenu .flq_body .on{border-right: 0;}
        .sidemenu .flq_body .on dl.primary_dl{border: 1px solid #0d0d0d;border-width: 1px 0;margin-left: 0;padding-left: 9px;padding-right: 10px;margin-top: -1px;z-index: 8;background: #fff;}
        .sidemenu .flq_body .submenu{position: absolute;left: 189px;top:-1px;width: 590px;border:1px solid #0d0d0d;padding: 6px 12px 15px 16px;z-index:5;box-shadow: -1px 1px 8px #bbb;background: #fff;display:none;}
        .sidemenu .flq_body .m_t1{*margin-top:1px;}
        .sidemenu .flq_body .submenu .eject_left{width: 590px;}
        .sidemenu .flq_body .submenu .eject_left dl.inner_dl{zoom: 1;border-bottom:1px dotted #d4d4d4;padding:5px 0;}
        .sidemenu .flq_body .submenu .eject_left dl.inner_dl dt{width: 80px;float: left;margin-right: 20px;line-height: 28px;font-size: 12px;text-align: right;font-family:"Microsoft Yahei";color: #0d0d0d;font-weight: bold;}
        .sidemenu .flq_body .submenu .eject_left dl.inner_dl dt a,.sidemenu .flq_body .submenu .eject_left dl.inner_dl dt a:hover{color: #0d0d0d;}
        .sidemenu .flq_body .submenu .eject_left dl.inner_dl dt a:hover{color:#ec7814;}
        .sidemenu .flq_body .submenu .eject_left dl.inner_dl dd{zoom: 1;float: left;width:470px;}
        .sidemenu .flq_body .submenu .eject_left dl.inner_dl dd a,.sidemenu .flq_body .submenu .eject_left dl.inner_dl dd a:hover{color: #666;padding-right:9px;white-space: nowrap;background: url(images/arrow4.png) right center no-repeat;margin-right: 8px;float: left;line-height: 28px;font-size: 12px;}
        .sidemenu .flq_body .submenu .eject_left dl.inner_dl dd a:hover{color: #ec7814 ;}
        .sidemenu .flq_body .submenu .eject_left dl.last{border-bottom: 0;}
        .sidemenu .flq_body .submenu .eject_right .pic{display:block;width:500px;margin-left:42px;height:120px;}
        .sidemenu .flq_body .submenu .eject_right .pic img{display: block;width:500px;height:120px;  }
        .sidemenu  .dd_red span{color: #be1c13;}
        .sidemenu  .flq_body .level_one .dd_level1  .dd_red{color: red;}.storey_one_center .tab_box_aa{width:750px;height:315px;position:relative;margin-bottom:10px;overflow:hidden;}
        .storey_one_center .tab_box_aa .content{width:750px;height:315px;position:absolute;top:0;left:0;}
        .storey_one_center .tab_box_aa .content .pic{display:block;width:750px;height:315px;}
        .storey_one_center .tab_box_aa .content img{width:750px;height:315px;}
        .storey_one_center .tab_box_aa .head{position:absolute;bottom:10px;right:0px;z-index:2;}
        .storey_one_center .tab_box_aa .head .tab_aa{float:right;}
        .storey_one_center .tab_box_aa .head .tab_aa li{width:21px;height:21px;line-height:21px;border-radius: 50%;background:#fff;margin-right:10px;text-align: center;color:#000;font-family: "Microsoft Yahei";font-size:14px;float: left;position:relative;cursor:pointer;}
        .storey_one_center .tab_box_aa .head .tab_aa li.on{background:#ff4848;color:#fff;}
        #bd .storey_one_center .tab_box_aa,#bd .storey_one_center .tab_box_aa .content{width:510px;}
        #bd .storey_one_center .tab_box_aa .content .pic,#bd .storey_one_center .tab_box_aa .content .pic img{width:510px;}.book_online{width:750px;overflow: hidden;position:relative;height:590px;}
        .book_online .book_online_title{background:url(images/home/new_book.png) no-repeat;height:43px;width:750px;font-size:0;line-height:0;text-indent: -9999px;}
        .book_online .product_ul a{text-decoration: none;}
        .book_online .btn_brand_prev{width:25px;height:50px;background:url(http://img4.ddimg.cn/00363/book_index/book_fanye_btn.png) 0 0 no-repeat;position:absolute;left:0;top:50%;margin-top:10px;z-index:2;cursor:pointer;}
        .book_online .btn_brand_next{width:25px;height:50px;background:url(http://img4.ddimg.cn/00363/book_index/book_fanye_btn.png) -26px 0 no-repeat;z-index:2;cursor:pointer;position: absolute;right: 0;top: 50%;margin-top: 10px;}
        .book_online .btn_brand_prev:hover,.book_online .btn_prev_hover{cursor:pointer;background-position:0 -51px;}
        .book_online .btn_brand_next:hover,.book_online .btn_next_hover{cursor:pointer;background-position:-26px -51px;}
        .book_online .over{width:750px;overflow:hidden;height:530px;position:relative;}
        .book_online .list_aa{width:10000px;position:absolute;}
        .book_online .list_aa li{float:left;width:750px;overflow: hidden;}
        .book_online .product_ul{width:800px;padding-top:25px;}
        .book_online .product_ul li{width:150px;margin-right:47px;margin-bottom:16px;height:250px;position:relative;overflow: visible;}
        .book_online .product_ul a.img,.book_online .product_ul li img{width:150px;display:block;height:150px;}
        .book_online .product_ul li .name{padding:7px 20px 0;height:18px;line-height:18px;overflow: hidden;}
        .book_online .product_ul li .name a,.book_online .product_ul li .name a:hover{color:#000;font-size:12px;}
        .book_online .product_ul li .name a:hover{text-decoration:underline;color:#ec7814 ;}
        .book_online .product_ul li .author{padding:0 20px;height:24px;line-height:24px;overflow: hidden;color:#aaa;}
        .book_online .product_ul li .price{padding-left:20px;line-height:16px;overflow: hidden;font-family:"Arial";font-size:14px;position:relative;height:36px;}
        .book_online .product_ul li .price .rob{color:#c30;float:left;overflow:hidden;font-weight:bold;margin-right:12px;}
        .book_online .product_ul li .price .price_r{color:#aaa;text-decoration: line-through;float:left;overflow:hidden;}
        .book_online .product_ul li .ebookprice_n{position:absolute;left:20px;top:16px;display:inline-block;font:12px Arial;padding:4px 0 0 0;color:#787878;}
        #bd .book_online,#bd .book_online .over,#bd .book_online .book_online_title,#bd .book_online .list_aa li{width:510px;}
        #bd .book_online .product_ul{width:605px;}
        #bd .book_online .product_ul li{margin-right:31px;width: 150px;}
        #bd .book_online .product_ul li .icon_pop{position:absolute;right:5px;top:5px;}
        .book_online .mix_marquee_tab{position:absolute;left:337px;top:580px;}
        .book_online .mix_marquee_tab li{float:left;width:10px;height:10px;font-size:0;line-height:10px;margin-right:10px;background:url(http://img4.ddimg.cn/00363/book_index/diandian_bg2.png) 0 -20px no-repeat;text-indent:-9999px;cursor: pointer;}
        .book_online .mix_marquee_tab li.current{background-position:0 0;}
        #bd  .book_online .mix_marquee_tab{position:absolute;left:218px;top:580px;}.book_new_state{border:1px solid #eaeaea;padding: 6px 10px;width:218px;margin-bottom: 10px;}
        .book_new_state .book_right_title{height:28px;font-size: 16px;color: #000;font-weight: bold;font-family:"Microsoft Yahei";}
        .book_new_state ul{position: relative;overflow: hidden;height: 68px;}
        .book_new_state ul li a,.book_new_state ul li a:hover{color:#000;display: block;height: 22px;position: relative;overflow: hidden;padding-left: 7px;background: url(images/arrow4.png) -16px -160px no-repeat;line-height:22px;}
        .book_new_state ul li a:hover{color:#ec7814;}.book_presell{border:1px solid #eaeaea;padding: 6px 0 0;width:238px;height: 187px;position: relative;margin-bottom:9px;overflow: hidden;}
        .book_presell .book_right_title{height: 25px;font-size: 16px;color: #000;font-weight: bold;padding-left: 10px;font-family:"Microsoft Yahei";}
        .book_presell .over{width:238px;position: relative;overflow: hidden;height:140px;}
        .book_presell .over .list_aa{width:2000px;height: 148px;left: 0;position:absolute;}
        .book_presell .over .list_aa li{float: left;height: 148px;width: 238px;position:relative;}
        .book_presell .over .list_aa li .img,.book_presell .over .list_aa li .img img{display: block;width: 120px;height: 120px;}
        .book_presell .over .list_aa li .img{position: absolute;left: 0;top: 10px;}
        .book_presell .over .list_aa li .star,.book_presell .over .list_aa li .link{display: none;}
        .book_presell .over .list_aa li .name{height: 44px;line-height: 22px;width: 94px;position: absolute;overflow: hidden;left: 120px;top: 31px;}
        .book_presell .over .list_aa li .name a,.book_presell .over .list_aa li .name a:hover{color: #000;}
        .book_presell .over .list_aa li .name a:hover{color:#ec7814;}
        .book_presell .over .list_aa li .price{width: 110px;font-size: 14px;font-family: "Arial";position: absolute;left: 120px;top: 80px;}
        .book_presell .over .list_aa li .price .rob{color: #c30000;margin-right: 8px;font-weight:bold;display: block;margin-bottom: 4px;}
        .book_presell .over .list_aa li .price .price_r{color: #aaa;text-decoration:line-through;}
        .book_presell .over .list_aa li .icon_pop{position: absolute;right: 120px;top: 25px;}
        .book_presell .book_presell_more{position: absolute;top: 10px;right: 8px;color: #5097bc;}
        .book_presell .btn_brand_prev{width:25px;height:50px;background:url(http://img4.ddimg.cn/00363/book_index/book_fanye_btn.png) 0 0 no-repeat;position:absolute;left:0;top:50%;margin-top:-20px;z-index:2;cursor:pointer;}
        .book_presell    .btn_brand_next{width:25px;height:50px;background:url(http://img4.ddimg.cn/00363/book_index/book_fanye_btn.png) -26px 0 no-repeat;z-index:2;cursor:pointer;position: absolute;right: 0;top: 50%;margin-top: -20px;}
        .book_presell .btn_brand_prev:hover,.book_presell .btn_prev_hover{cursor:pointer;background-position:0 -51px;}
        .book_presell .btn_brand_next:hover,.book_presell .btn_next_hover{cursor:pointer;background-position:-26px -51px;}
        .book_presell    .mix_marquee_tab{position:absolute;left:90px;top:172px;float:left;width:160px;}
        .book_presell    .mix_marquee_tab li{float:left;width:10px;height:10px;font-size:0;line-height:10px;margin-right:10px;background:url(http://img4.ddimg.cn/00363/book_index/diandian_bg2.png) 0 -20px no-repeat;text-indent:-9999px;cursor: pointer;}
        .book_presell    .mix_marquee_tab li.current{background-position:0 0;}.book_new{width: 240px;}
        .book_new .title{height: 40px;line-height: 40px;padding-left: 34px;font-size: 16px;color: #000;font-weight: bold;background: url(images/arrow4.png) 5px 4px no-repeat;font-family:"Microsoft Yahei";position:relative;overflow:hidden;}
        .book_new .title a{color:#d72832;}
        .book_new .title a:hover{color:#d72832;text-decoration:none;}
        .book_new .tab_box_aa .head ul{height: 25px;}
        .book_new .tab_box_aa .head ul li{float: left;width: 48px;}
        .book_new .tab_box_aa .head ul li span{display: block;text-align: center;height: 20px;line-height: 20px;border:1px solid #eaeaea;border-left: 0;padding: 2px 0 1px;color: #000;cursor: pointer;}
        .book_new .tab_box_aa .head ul li.first span{border-left:1px solid #eaeaea;}
        .book_new .tab_box_aa .head ul li.on{border-top:2px solid #be1c13;}
        .book_new .tab_box_aa .head ul li.on span{border-bottom: 0px;padding-top: 1px;border-top: 0;font-weight:bold;color: #be1c13;}
        .book_new .tab_content_aa{border:1px solid #eaeaea;border-top:0;padding-top:3px;}
        .book_new .tab_content_aa .list_ab li.bar{height: 36px;line-height: 36px;border-bottom: 1px dotted #d8d8d8;width: 220px;margin-left: 9px;vertical-align: top;}
        .book_new .tab_content_aa .list_ab li.bar span.num{width:29px;padding-left: 8px;float: left;font-size: 16px;color: #000;}
        .book_new .tab_content_aa .list_ab li.line1 span.num1,.book_new .tab_content_aa .list_ab li.line2 span.num2,.book_new .tab_content_aa .list_ab li.line3 span.num3{color: #d10000;}
        .book_new .tab_content_aa .list_ab li.bar .name{float: left;height: 36px;position: relative;overflow: hidden;width:182px;}
        .book_new .tab_content_aa .list_ab li.item{height: 150px;width: 220px;margin-left: 9px;position: relative;border-bottom: 1px dotted #d8d8d8;vertical-align: top;}
        .book_new .tab_content_aa .list_ab li.item .num{font-size: 16px;color: #000;height: 24px;line-height: 24px;position: absolute;left: 8px;top: 6px;z-index: 2;}
        .book_new .tab_content_aa .list_ab li.item .img{position: absolute;left: 20px;top:11px;}
        .book_new .tab_content_aa .list_ab li.item .img,.book_new .tab_content_aa .list_ab li.item .img img{display:block;width: 120px;height: 120px;}
        .book_new .tab_content_aa .list_ab li.item .name{height: 44px;line-height: 22px;position: absolute;overflow: hidden;top: 9px;left: 145px;}
        .book_new .tab_content_aa .list_ab li.item .name a,.book_new .tab_content_aa .list_ab li.item .name a:hover,.book_new .tab_content_aa .list_ab li.bar .name a,.book_new .tab_content_aa .list_ab li.bar .name a:hover{color: #000;word-break:break-all;word-wrap:break-word;}
        .book_new .tab_content_aa .list_ab li.item .name a:hover,.book_new .tab_content_aa .list_ab li.bar .name a:hover{color:#ec7814;}
        .book_new .tab_content_aa .list_ab li.item .price{position: absolute;top: 55px;left: 145px;font-size: 14px;line-height: 20px;}
        .book_new .tab_content_aa .list_ab li.item .price .rob{display: block;font-weight:bold;}
        .book_new .tab_content_aa .list_ab li.item .price .rob,.book_new .tab_content_aa .list_ab li.item .price .rob span{color: #c30000;line-height: 20px;height: 20px;font-size:14px;}
        .book_new .tab_content_aa .list_ab li.item .price .num{position: static;}
        .book_new .tab_content_aa .list_ab li.item .price .price_r,.book_new .tab_content_aa .list_ab li.item .price .price_r span{color: #a7a7a7;text-decoration: line-through;line-height: 18px;height: 18px;font-size: 14px;}
        .book_new .tab_content_aa .list_ab li.item .link{position: absolute;left: 145px;top:97px;}
        .book_new .tab_content_aa .list_ab li.item .link,.book_new .tab_content_aa .list_ab li.item .link a,.book_new .tab_content_aa .list_ab li.item .link a:hover{color: #be1c13;}
        .book_new .tab_content_aa .list_ab li.item .icon_pop{position: absolute;left: 141px;top: 14px;}
        .book_new .tab_content_aa .book_top{position: relative;height: 518px;padding-top:5px;}
        .book_new .tab_content_aa .book_top .list_ab{position: relative;height: 480px;overflow:hidden;}
        .book_new .tab_content_aa .book_top .more_top{color: #5097bc;width: 225px;background: #fff;display: block;height: 30px;line-height: 30px;position: absolute;bottom: 8px;left: 5px;text-align: right;}.dd_brand{width:1200px;margin:0 auto 30px;height:385px;}
        .dd_brand_head,.dd_brand_head img{height:42px;}
        .dd_brand_head{height:42px;font:bold 20px/24px "Microsoft YaHei";color:#323232;}
        .dd_brand_head .dd_brand_head_title,.dd_brand_head .dd_brand_head_title:hover{float:left;margin:11px 0 7px;padding:0 20px 0 6px;font:bold 20px/24px "Microsoft YaHei"; border-right:1px solid #b7b7b7; text-decoration:none; background:#fff;color:#323232;}
        .dd_brand_head .list_aa{float:left;height:42px; overflow:hidden;}
        .dd_brand_head .list_aa li{ float:left; padding:0 30px; margin:13px 0 0 -13px; background:url(http://img63.ddimg.cn/upload_img/00111/home/title_bg.png) no-repeat left 3px;font:16px/20px "Microsoft YaHei";}
        .dd_brand_head .list_aa li a,.dd_brand_head .list_aa li a:hover{font:bold 16px/20px "Microsoft YaHei"; text-decoration:none;color:#323232;}
        .dd_brand_head .list_aa li a span.hot{font:14px/20px "Microsoft YaHei"; padding-left:5px;color:#323232;}
        .dd_brand_head a:hover,.dd_brand_head .list_aa li a:hover span.hot{color:#ff2832!important;}
        .dd_brand_content{border:1px solid #e6e6e6;border-width:1px 0 0 1px; position:relative;width:1199px;height:342px;}
        .dd_brand_content_l{position:absolute;top:0;left:0;width:400px;}
        .dd_brand_content_l a,.dd_brand_content_r a{float:left;width:199px;height:170px;overflow:hidden;border:1px solid #e6e6e6;border-width:0 1px 1px 0;}
        .dd_brand_content_m{position:absolute;top:0;left:400px;border:1px solid #e6e6e6;border-width:0 1px 1px 0;height:341px; overflow:hidden;}
        .dd_brand_content_r{position:absolute;top:0;left:799px;}
        .dd_brand_content_m img{width:398px;height:341px;}
        .dd_brand_content_m .roll_aa{width:398px;}
        .dd_brand_content_m .roll_aa .over ul{ position:relative;width:10000px;}
        .dd_brand_content_m .roll_aa .over ul li{float:left;}
        .dd_brand_content_m .mix_marquee_tab{ position:absolute;bottom:20px;left:50%;z-index:6666;}
        .dd_brand_content_m .mix_marquee_tab li{ float:left;width:12px;height:12px; overflow:hidden; background-color:#c8c8c8; border-radius:10px; margin-right:8px; line-height:36px; font-size:0;}
        .dd_brand_content_m .mix_marquee_tab li.current{ background-color:#ff2832;}
        .dd_brand_content_m .btn_brand_prev,.dd_brand_content_m .btn_brand_next{display:block;position:absolute;width:30px;height:43px;top:148px;background-image:url(http://img60.ddimg.cn/upload_img/00111/home/home_sprite_1507.png);background-repeat:no-repeat;background-color:#000;z-index:20;cursor:pointer;opacity:0.2;filter:alpha(opacity=20);}
        .dd_brand_content_m .btn_brand_prev{left:0;background-position:0px -83px;}
        .dd_brand_content_m .btn_brand_next{right:0;background-position:-36px -83px;}
        .dd_brand_content_m .btn_prev_hover,.dd_brand_content_m .btn_next_hover{opacity:0.5;filter:alpha(opacity=50);}

    </style>
    <script  type="text/javascript">
    var firstbyteTime=new Date().getTime();
    var firstScreenStartTime=new Date().getTime();
    var mix_imglist=[];
    </script>
</head>
<body ddt-page="mix_65152">
<script language="javascript">var minsize=1210;var screensize=screen.width;if (screensize<minsize){document.body.className="narrow_page"}</script>
<script type="text/javascript" src="http://img13.ddimg.cn/mix/js/jquery.js"></script>
<script type="text/javascript">
    var arrayObj=new Array();
    var mix_ajax_api = '/Standard/Framework/Core/hosts/ajax_api.php';
</script>
<link rel="Stylesheet" type="text/css" href="/index/css/header.css" />






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
                    <span id=""><span class="hi hi_none">欢迎光临小xun,
                    <%if(session.getAttribute("user")!=null){
                        out.print(session.getAttribute("UserName"));
                    %> &nbsp; <span><a href="/user/unlogin">退出</a></span><%
                    }else {
                    %></span><a href="../index/login.jsp" class="login_link">登录</a><a href="../index/regist.jsp">免费注册</a></span><%
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
    <!--CreateDate  2019-09-19 21:30:02--><div style="position:relative;" class="logo_line_out">
    <div class="logo_line" dd_name="搜索框">
        <div class="logo"><img src="/index/images/15691441038791.png" />
            </div>
        <div class="search">
            <form action="/book/search" name="searchform"  id="form_search_new" onsubmit="return searchsubmit();"  method="GET">
                <label  for="key_S" class="label_search" id="label_key" onclick="this.style.color='rgb(255, 255, 255)';" style="visibility: visible; color: rgb(102, 102, 102);" >oracle二手书</label>
                <input type="text" class="text gray"  name="key" ID="key_S" autocomplete="off" onclick="key_onclick(event);" onfocus="key_onfocus(event);"  onblur="key_onblur();" onbeforepaste="onpaste_search();"/><a href="javascript:void(0);" onclick="clearkeys();" class="del-keywords"></a><span class="select"  onmouseover="allCategoryShow();"  onmouseleave="allCategoryHide();" onmouseout='if("\v"!="v"){ allCategoryHide();}'><span id="Show_Category_Name" dd_name="全部分类">全部分类</span><span class="icon"></span>
                <div id="search_all_category" class="select_pop" style="height:0px;padding: 0px;border-width: 0px;" dd_name="搜索分类">
                    <a href="javascript:void(0);" onclick="selectCategory('',this);" ><span id="Show_Category_Name" dd_name="全部分类">全部分类</span></a>

                </div>
            </span>
                <input type="hidden" id="default_key" value="oracle"/>
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
                <a href="" name="hotword" target="_blank">春日序曲</a>
                <a href="">水湄物语新书</a>
                <a href="" name="hotword" target="_blank">小车迷立体书</a>
                <a href="" name="hotword" target="_blank">范志红日历</a>
                <a href="" name="hotword" target="_blank">简笔画</a></div>
            <a href="" class="search_advs" target="_blank" name="ddnav_adv_s" dd_name="高级搜索">高级搜索</a>
        </div>
        <div id="suggest_key" class="suggest_key" style="display:none;" ></div>
        <div class="ddnew_cart"><a href="/cart/showCartByPage" name="shoppingcart" dd_name="购物车"><i class="icon_card"></i>购物车<b id="shoppingcount"></b></a></div>
        <div class="ddnew_order"><a target="_blank" href="/PersonCenter/infor.jsp" name="我的订单" dd_name="我的订单" rel="nofollow">个人中心<b id="unpaid_num" style="color:#ff2832;font:bold 12px Arial;"></b></a></div>
    </div>
</div>
    <div class="nav_top" dd_name="一级导航条">
    <div class="nav_top">
        <ul>
            <li class="all"><a href="/book/main" id="a_category" name="cate" class="sort_button" onmouseover=showCategory('a_category','__ddnav_sort','//static.dangdang.com/js/header2012/categorydata_new.js?20180908'); onmouseout=closeCategory('__ddnav_sort'); dd_name="全部商品分类" target="_blank">全部商品分类</a></li>
        </ul>
    </div>
</div><div class="home_nav_l_box">
    <div class="home_nav_l" id="nav_l" style="display:none;">

        <div class="new_pub_nav_box"  dd_name="左侧分类导航" style="display:none;" id="__ddnav_sort" onmouseover="showdiv(event,'__ddnav_sort');" onmouseout="hiddenCategory(event,'__ddnav_sort');">
            <span class="new_pub_line_a"></span>
            <span class="new_pub_line_b"></span>
            <div class="new_pub_nav_shadow" id="menu_list">
                <ul class="new_pub_nav" id="menulist_content">
                    <li class="n_b first"  dd_name="图书童书"  id="li_label_1" data-submenu-id="__ddnav_sort1" data_index="1" data_key="34102" data_type="'goods'" >
                <span class="nav" id="categoryh_1">
                    <a name="newcate1"  dd_name="图书" id="cate_34242" href="" target="_blank">图书</a>、<a name="newcate1"  dd_name="童书" id="cate_34252" href="" target="_blank">童书</a></span><span class="sign"></span>
                    </li>
                    <li class="n_b"  dd_name="电子书网络文学"  id="li_label_2" data-submenu-id="__ddnav_sort2" data_index="2" data_key="56262" data_type="'book'" >
                <span class="nav" id="categoryh_2">
                    <a name="newcate2"  dd_name="电子书" id="cate_56263" href="" target="_blank">电子书</a>、<a name="newcate2"  dd_name="网络文学" id="cate_56484" href="" target="_blank">网络文学</a></span><span class="sign"></span>
                    </li>
                    <li class="n_b"  dd_name="创意文具拍卖"  id="li_label_3" data-submenu-id="__ddnav_sort3" data_index="3" data_key="55442" data_type="'goods'" >
                <span class="nav" id="categoryh_3">
                    <a name="newcate3"  dd_name="创意文具" id="cate_55469" href="" target="_blank">创意文具</a>、<a name="newcate3"  dd_name="拍卖" id="cate_56020" href="" target="_blank">拍卖</a></span><span class="sign"></span>
                    </li>
                    <li class="n_b"  dd_name="服饰内衣"  id="li_label_4" data-submenu-id="__ddnav_sort4" data_index="4" data_key="34202" data_type="'goods'" >
                <span class="nav" id="categoryh_4">
                    <a name="newcate4"  dd_name="服饰" id="cate_45522" href="" target="_blank">服饰</a>、<a name="newcate4"  dd_name="内衣" id="cate_53062" href="" target="_blank">内衣</a></span><span class="sign"></span>
                    </li>
                    <li class="n_b"  dd_name="鞋靴箱包"  id="li_label_5" data-submenu-id="__ddnav_sort5" data_index="5" data_key="34212" data_type="'goods'" >
                <span class="nav" id="categoryh_5">
                    <a name="newcate5"  dd_name="鞋靴" id="cate_45532" href="" target="_blank">鞋靴</a>、<a name="newcate5"  dd_name="箱包" id="cate_53072" href="" target="_blank">箱包</a></span><span class="sign"></span>
                    </li>
                    <li class="n_b"  dd_name="运动户外"  id="li_label_6" data-submenu-id="__ddnav_sort6" data_index="6" data_key="34232" data_type="'goods'" >
                <span class="nav" id="categoryh_6">
                    <a name="newcate6"  dd_name="运动户外" id="cate_45552" href="" target="_blank">运动户外</a></span><span class="sign"></span>
                    </li>
                    <li class="n_b"  dd_name="孕婴童"  id="li_label_7" data-submenu-id="__ddnav_sort7" data_index="7" data_key="34112" data_type="'goods'" >
                <span class="nav" id="categoryh_7">
                    <a name="newcate7"  dd_name="孕" id="cate_35772" href="" target="_blank">孕</a>、
                    <a name="newcate7"  dd_name="婴" id="cate_35782" href="" target="_blank">婴</a>、
                    <a name="newcate7"  dd_name="童" id="cate_35792" href="" target="_blank">童</a></span><span class="sign"></span>
                    </li>
                    <li class="n_b"  dd_name="家居家纺汽车"  id="li_label_8" data-submenu-id="__ddnav_sort8" data_index="8" data_key="34142" data_type="'goods'" >
                <span class="nav" id="categoryh_8">
                    <a name="newcate8"  dd_name="家居" id="cate_38642" href="" target="_blank">家居</a>、
                    <a name="newcate8"  dd_name="家纺" id="cate_53032" href="" target="_blank">家纺</a>、
                    <a name="newcate8"  dd_name="汽车" id="cate_38662" href="" target="_blank">汽车</a>
                </span><span class="sign"></span>
                    </li>
                    <li class="n_b"  dd_name="家具家装康体"  id="li_label_9" data-submenu-id="__ddnav_sort9" data_index="9" data_key="34132" data_type="'goods'" >
                <span class="nav" id="categoryh_9">
                    <a name="newcate9"  dd_name="家具" id="cate_52282" href="" target="_blank">家具</a>、
                    <a name="newcate9"  dd_name="家装" id="cate_54045" href="" target="_blank">家装</a>、
                    <a name="newcate9"  dd_name="康体" id="cate_54046" href="" target="_blank">康体</a>
                </span><span class="sign"></span>
                    </li>
                    <li class="n_b"  dd_name="美妆个人护理成人"  id="li_label_10" data-submenu-id="__ddnav_sort10" data_index="10" data_key="34122" data_type="'goods'" >
                <span class="nav" id="categoryh_10">
                    <a name="newcate10"  dd_name="美妆" id="cate_37332" href="" target="_blank">美妆</a>、
                    <a name="newcate10"  dd_name="个人护理" id="cate_54231" href="" target="_blank">个人护理</a>、
                    <a name="newcate10"  dd_name="成人" id="cate_54230" href="" target="_blank">成人</a>
                </span><span class="sign"></span>
                    </li>
                    <li class="n_b"  dd_name="食品茶酒生鲜"  id="li_label_11" data-submenu-id="__ddnav_sort11" data_index="11" data_key="34152" data_type="'goods'" >
                <span class="nav" id="categoryh_11">
                    <a name="newcate11"  dd_name="食品" id="cate_40152" href="" target="_blank">食品</a>、
                    <a name="newcate11"  dd_name="茶酒" id="cate_53794" href="" target="_blank">茶酒</a>、
                    <a name="newcate11"  dd_name="生鲜" id="cate_40162" href="" target="_blank">生鲜</a>
                </span><span class="sign"></span>
                    </li>
                    <li class="n_b"  dd_name="腕表珠宝饰品眼镜"  id="li_label_12" data-submenu-id="__ddnav_sort12" data_index="12" data_key="34222" data_type="'goods'" >
                <span class="nav" id="categoryh_12">
                    <a name="newcate12"  dd_name="腕表" id="cate_54859" href="" target="_blank">腕表</a>、
                    <a name="newcate12"  dd_name="珠宝饰品" id="cate_45542" href="" target="_blank">珠宝饰品</a>、
                    <a name="newcate12"  dd_name="眼镜" id="cate_53122" href="" target="_blank">眼镜</a>
                </span><span class="sign"></span>
                    </li>
                    <li class="n_b"  dd_name="手机数码"  id="li_label_13" data-submenu-id="__ddnav_sort13" data_index="13" data_key="34162" data_type="'goods'" >
                <span class="nav" id="categoryh_13">
                    <a name="newcate13"  dd_name="手机" id="cate_41592" href="" target="_blank">手机</a>、
                    <a name="newcate13"  dd_name="数码" id="cate_41602" href="" target="_blank">数码</a>
                </span><span class="sign"></span>
                    </li>
                    <li class="n_b"  dd_name="电脑办公"  id="li_label_14" data-submenu-id="__ddnav_sort14" data_index="14" data_key="34172" data_type="'goods'" >
                <span class="nav" id="categoryh_14">
                    <a name="newcate14"  dd_name="电脑办公" id="cate_42602" href="" target="_blank">电脑办公</a>
                </span><span class="sign"></span>
                    </li>
                    <li class="n_b"  dd_name="家用电器"  id="li_label_15" data-submenu-id="__ddnav_sort15" data_index="15" data_key="34182" data_type="'goods'" >
                <span class="nav" id="categoryh_15">
                    <a name="newcate15"  dd_name="家用电器" id="cate_44162" href="" target="_blank">家用电器</a>
                </span><span class="sign"></span>
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
            <li><a name='nav2'  target=_blank  href=>童书</a></li>
            <li><a name='nav2'  target=_blank  href=>教辅</a></li>
            <li><a name='nav2'  target=_blank  href=>小说</a></li>
            <li><a name='nav2'  target=_blank  href=>文学</a></li>
            <li><a name='nav2'  target=_blank  href=>青春文学</a></li>
            <li><a name='nav2'  target=_blank  href=>艺术</a></li>
            <li><a name='nav2'  target=_blank  href=>成功励志</a></li>
            <li><a name='nav2'  target=_blank  href=>管理</a></li>
            <li><a name='nav2'  target=_blank  href=>历史</a></li>
            <li><a name='nav2'  target=_blank  href=>哲学宗教</a></li>
            <li><a name='nav2'  target=_blank  href=>亲子家教</a></li>
            <li><a name='nav2'  target=_blank  href=>保健养生</a></li>
            <li><a name='nav2'  target=_blank  href=>考试</a></li>
            <li><a name='nav2'  target=_blank  href=>科技</a></li>
            <li><a name='nav2'  target=_blank  href=>进口原版</a></li>
            <li><a name='nav2'  target=_blank  href=>电子书</a></li>
            <li><a name='nav2'  target=_blank  href=>网络文学</a></li>
        </ul>
    </div></div>


<div  id="bd_auto"   name=9149><div  class="con top_ad_banner" name=10287>
    <div  class="book_1ad "  name="顶部通栏广告" dd_name="顶通"  ddt-area="498323" ddt-floor="498323" ddt-expose="on" >
        <div id='component_498323'></div>
        <a   class=" _1  pic"    href=""  ddt-pit="1" dd_name="1"  ddt-area="5171"ddt-src="" title="文艺每满100减50" target="_blank"  nname="book-65152-10287_1-502270_1"  >
            <img  src="http://img61.ddimg.cn/upload_img/00087/geq/1200x65_dl_0812-1568773741.jpg"    title='文艺每满100减50'  alt='文艺每满100减50'  ddt-src="http://img61.ddimg.cn/upload_img/00087/geq/1200x65_dl_0812-1568773741.jpg"/></a>
    </div><div class="spacer c_spacer"></div>
</div>
        <!-- 改动开始-->
    <div  class="con storey_one" name=9150>
        <div  class="col storey_one_left" name=9163>
            <div  class="sidemenu "  name="图书馆首：左侧分类区_1" dd_name="左侧分类"  ddt-area="403752" ddt-floor="403752" ddt-expose="on" ><div id='component_403752'></div>
                <div  class="con flq_head"     >图书分类</div>
                <div  class="con flq_body"     >
                    <div  class="level_one "  name="m403752_pid5367_t10274"  type=bar father=1 >
                        <dl  class="con primary_dl"  name="m403752_pid5367_t10275"  son='1'  >
                            <dt  class="con "  name="m403752_pid5367_t10276"  >常用必修</dt>
                            <dd  class="con sec_cate"  name="m403752_pid5367_t10277"   ></dd>
                        </dl>
                        <div  class="con "  name="m403752_pid5367_t10278"   >
                            <div  class="hide submenu "  name="m403752_pid5367_5435_t9145"  type=item >
                                <div  class="con eject_main"  name="m403752_pid5367_5435_t9146"   >
                                    <div  class="col eject_left"  name="m403752_pid5367_5435_t9147"   >
                                        <dl class='inner_dl' ddt-area="5358" dd_name="弹出层1" >

    <dt>
        <a    nname="0101"  class="" href="" target="_blank"
              title="" ddt-pit="1" ddt-src="">英语        </a>
    </dt>
      </dl>
    <dl class='inner_dl' ddt-area="5359" dd_name="弹出层2">

        <dt>
            <a    nname="0102"  class="" href="" target="_blank"
                  title="" ddt-pit="1" ddt-src="">思修        </a>
        </dt>
            </dl>
    <dl class='inner_dl' ddt-area="5360" dd_name="弹出层3">

        <dt>
            <a    nname="0103"  class="" href="" target="_blank"
                  title="" ddt-pit="1" ddt-src="">马原        </a>
        </dt>
           </dl>
    <dl class='inner_dl' ddt-area="5361" dd_name="弹出层4">

        <dt>
            <a    nname="0104"  class="" href="" target="_blank"
                  title="" ddt-pit="1" ddt-src="">近代史        </a>
        </dt>
            </dl>
    <dl class='inner_dl' ddt-area="5362" dd_name="弹出层5">

        <dt>
            <a    nname="0105"  class="" href="" target="_blank"
                  title="" ddt-pit="1" ddt-src="">毛概        </a>
        </dt>
          </dl>
    <dl class='inner_dl' ddt-area="5363" dd_name="弹出层6">

        <dt>
            <a    nname="0106"  class="" href="" target="_blank"
                  title="" ddt-pit="1" ddt-src="">高数        </a>
        </dt>
            </dl>
    <dl class='inner_dl' ddt-area="5364" dd_name="弹出层7">

        <dt>
            <a    nname="0107"  class="" href="" target="_blank"
                  title="" ddt-pit="1" ddt-src="">线性代数        </a>
        </dt>
            </dl>
                                        <dl class='inner_dl' ddt-area="5364" dd_name="弹出层8">

                                            <dt>
                                                <a    nname="0108"  class="" href="" target="_blank"
                                                      title="" ddt-pit="1" ddt-src="">概率论        </a>
                                            </dt>
                                        </dl>
                                        <dl class='inner_dl' ddt-area="5364" dd_name="弹出层8">

                                            <dt>
                                                <a    nname="0109"  class="" href="" target="_blank"
                                                      title="" ddt-pit="1" ddt-src="">其他        </a>
                                            </dt>
                                        </dl>
</div>
                                    <div  class="col eject_right"  name="m403752_pid5367_5435_t9148"   ></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div  class="level_one "  name="m403752_pid5368_t9144"  type=bar father=1 >
                        <dl class='primary_dl'son=1 ddt-area="5357" dd_name="文本列表定制">

    <dt>
        <a    nname="book-65152-9163_1-468597_1"  class="" href="" target="_blank"
              title="专业图书" ddt-pit="1" ddt-src="">专业课本        </a>
    </dt>
</dl>
    <div  class="hide submenu "  name="m403752_pid5368_5366_t9145"  type=item >
        <div  class="con eject_main"  name="m403752_pid5368_5366_t9146"   >
            <div  class="col eject_left"  name="m403752_pid5368_5366_t9147"   >
                <dl class='inner_dl' ddt-area="5358" dd_name="弹出层1">

        <dt>
            <a    nname="book-65152-9163_1-476582_1"  class="" href="" target="_blank"
                  title="" ddt-pit="1" ddt-src="">数学物理        </a>
        </dt>
           </dl>
        <dl class='inner_dl' ddt-area="5359" dd_name="弹出层2">

            <dt>
                <a    nname="book-65152-9163_1-1830145_1"  class="" href="" target="_blank"
                      title="" ddt-pit="1" ddt-src="">专业英语        </a>
            </dt>
                </dl>
        <dl class='inner_dl' ddt-area="5360" dd_name="弹出层3">

            <dt>
                <a    nname="book-65152-9163_1-1830147_1"  class="" href="" target="_blank"
                      title="" ddt-pit="1" ddt-src="">政治经营        </a>
            </dt>
               </dl>
        <dl class='inner_dl' ddt-area="5361" dd_name="弹出层4">

            <dt>
                <a    nname="book-65152-9163_1-1830149_1"  class="" href="" target="_blank"
                      title="" ddt-pit="1" ddt-src="">电气电子        </a>
            </dt>
               </dl>
        <dl class='inner_dl' ddt-area="5362" dd_name="弹出层5">

            <dt>
                <a    nname="book-65152-9163_1-1830153_1"  class="" href="" target="_blank"
                      title="0205" ddt-pit="1" ddt-src="">土木器械        </a>
            </dt>
               </dl>
        <dl class='inner_dl' ddt-area="5363" dd_name="弹出层6">

            <dt>
                <a    nname="book-65152-9163_1-1830330_1"  class="" href="" target="_blank"
                      title="0206" ddt-pit="1" ddt-src="">计算机        </a>
            </dt>
                </dl>
        <dl class='inner_dl' ddt-area="5364" dd_name="弹出层7">

            <dt>
                <a    nname="book-65152-9163_1-1830334_1"  class="" href="" target="_blank"
                      title="0207" ddt-pit="1" ddt-src="">其他的        </a>
            </dt>
               </dl>


    </div>
        </div>
    </div>
                    </div>
                    <div  class="level_one "  name="m403752_pid5369_t9144"  type=bar father=1 >
                        <dl class='primary_dl'son=1 ddt-area="5357" dd_name="文本列表定制">

    <dt>
        休闲小说
    </dt>

       </dl>
    <div  class="hide submenu "  name="m403752_pid5369_5366_t9145"  type=item >
        <div  class="con eject_main"  name="m403752_pid5369_5366_t9146"   >
            <div  class="col eject_left"  name="m403752_pid5369_5366_t9147"   >
                <dl class='inner_dl' ddt-area="5358" dd_name="弹出层1">

        <dt>
            <a  name="0301"   nname="book-65152-9163_1-476625_1"  class="" href="" target="_blank"
                title="" ddt-pit="1" ddt-src="">言情        </a>
        </dt>
            </dl>
        <dl class='inner_dl' ddt-area="5359" dd_name="弹出层2">

            <dt>
                <a  name="0302"   nname="book-65152-9163_1-476626_1"  class="" href="" target="_blank"
                    title="" ddt-pit="1" ddt-src="">都市        </a>
            </dt>
               </dl>
        <dl class='inner_dl' ddt-area="5360" dd_name="弹出层3">

            <dt>
                <a  name="0303"   nname="book-65152-9163_1-476630_1"  class="" href=""
                    title="" ddt-pit="1" ddt-src="">玄幻        </a>
            </dt>
               </dl>
        <dl class='inner_dl' ddt-area="5361" dd_name="弹出层4">

            <dt>
                <a  name="0304"   nname="book-65152-9163_1-476631_1"  class="" href="" target="_blank"
                    title="" ddt-pit="1" ddt-src="">科幻        </a>
            </dt>
             </dl>
        <dl class='inner_dl' ddt-area="5362" dd_name="弹出层5">

            <dt>
                <a  name="0305"   nname="book-65152-9163_1-2444479_1"  class="" href="" target="_blank"
                    title="" ddt-pit="1" ddt-src="其他"   >     </a>
            </dt>
               </dl>
    </div>
            <div  class="col eject_right"  name="m403752_pid5369_5366_t9148"   >

        </div>
        </div>
    </div>
                    </div>
                    <div  class="level_one "  name="m403752_pid5370_t9144"  type=bar father=1 >
                        <dl class='primary_dl'son=1 ddt-area="5357" dd_name="文本列表定制">

    <dt>
        <a  name="04"   nname="book-65152-9163_1-468600_1"  class="" href="" target="_blank"
            title="文学社科" ddt-pit="1" ddt-src="">考研资料     </a>
    </dt>
</dl>
    <div  class="hide submenu "  name="m403752_pid5370_5366_t9145"  type=item >
        <div  class="con eject_main"  name="m403752_pid5370_5366_t9146"   >
            <div  class="col eject_left"  name="m403752_pid5370_5366_t9147"   >
            <dl class='inner_dl' ddt-area="5358" dd_name="弹出层1">

        <dt>
            <a  name="0401"   nname="book-65152-9163_1-476808_1"  class="" href="" target="_blank"
                title="" ddt-pit="1" ddt-src="">英语       </a>
        </dt>
          </dl>
                <dl class='inner_dl' ddt-area="5358" dd_name="弹出层2">

                    <dt>
                        <a  name="0402"   nname="book-65152-9163_1-476808_1"  class="" href="" target="_blank"
                            title="" ddt-pit="1" ddt-src="">数学        </a>
                    </dt>
                </dl>
                <dl class='inner_dl' ddt-area="5358" dd_name="弹出层2">

                    <dt>
                        <a  name="0403"   nname="book-65152-9163_1-476808_1"  class="" href="" target="_blank"
                            title="" ddt-pit="1" ddt-src="">政治        </a>
                    </dt>
                </dl>
                <dl class='inner_dl' ddt-area="5358" dd_name="弹出层2">

                    <dt>
                        <a  name="0404"   nname="book-65152-9163_1-476808_1"  class="" href="" target="_blank"
                            title="" ddt-pit="1" ddt-src="">其他        </a>
                    </dt>
                </dl>
    </div><div  class="col eject_right"  name="m403752_pid5370_5366_t9148"   >
            <a   class=" _1  pic"    href=""  ddt-pit="1" dd_name="1"  ddt-area="5365"ddt-src="" title="小说" target="_blank"  nname="book-65152-9163_1-478218_1"  >
                <img  src="http://img61.ddimg.cn/upload_img/00778/a/49yuan5jian-1551162045.jpg"    title='小说'  alt='小说'  ddt-src="http://img61.ddimg.cn/upload_img/00778/a/49yuan5jian-1551162045.jpg"/>
            </a>
        </div>
        </div>
    </div>
                    </div>
                    <div  class="level_one "  name="m403752_pid5371_t9144"  type=bar father=1 >
                        <dl class='primary_dl'son=1 ddt-area="5357" dd_name="文本列表定制">

    <dt>
        考级考证
    </dt>
    </dd>    </dl>
    <div  class="hide submenu "  name="m403752_pid5371_5366_t9145"  type=item >
        <div  class="con eject_main"  name="m403752_pid5371_5366_t9146"   >
            <div  class="col eject_left"  name="m403752_pid5371_5366_t9147"   >
                <dl class='inner_dl' ddt-area="5358" dd_name="弹出层1">

        <dt>
            <a  name="0501"   nname="book-65152-9163_1-468866_1"  class="" href="" target="_blank"
                title="" ddt-pit="1" ddt-src="">计算机二级        </a>
        </dt>
           </dl>
        <dl class='inner_dl' ddt-area="5359" dd_name="弹出层2">

            <dt>
                <a  name="0502"   nname="book-65152-9163_1-468969_1"  class="" href="" target="_blank"
                    title="" ddt-pit="1" ddt-src="">英语四六级        </a>
            </dt>
               </dl>
        <dl class='inner_dl' ddt-area="5360" dd_name="弹出层3">

            <dt>
                <a  name="0503"   nname="book-65152-9163_1-468978_1"  class="" href="" target="_blank"
                    title="" ddt-pit="1" ddt-src="">雅思托福        </a>
            </dt>
             </dl>
        <dl class='inner_dl' ddt-area="5361" dd_name="弹出层4">

            <dt>
                <a  name="0504"   nname="book-65152-9163_1-469006_1"  class="" href="" target="_blank"
                    title="" ddt-pit="1" ddt-src="">教师资格证        </a>
            </dt>
               </dl>
                <dl class='inner_dl' ddt-area="5361" dd_name="弹出层4">

                    <dt>
                        <a  name="0505"   nname="book-65152-9163_1-469006_1"  class="" href="" target="_blank"
                            title="" ddt-pit="1" ddt-src="">会计证        </a>
                    </dt>
                </dl>
                <dl class='inner_dl' ddt-area="5361" dd_name="弹出层4">

                    <dt>
                        <a  name="0506"   nname="book-65152-9163_1-469006_1"  class="" href="" target="_blank"
                            title="" ddt-pit="1" ddt-src="">其他        </a>
                    </dt>
                </dl>
    </div><div  class="col eject_right"  name="m403752_pid5371_5366_t9148"   >
            <a   class=" _1  pic"    href=""  ddt-pit="1" dd_name="1"  ddt-area="5365"ddt-src="" title="文艺" target="_blank"  nname="book-65152-9163_1-478235_1"  >
                <img  src="http://img62.ddimg.cn/upload_img/00726/0122/500X120_lyx_0801-1568018784.jpg"    title='文艺'  alt='文艺'  ddt-src="http://img62.ddimg.cn/upload_img/00726/0122/500X120_lyx_0801-1568018784.jpg"/></a>
        </div>
        </div>
    </div>
                    </div>

                    <div  class="level_one "  name="m403752_pid5376_t9144"  type=bar father=1 >
                        <dl class='primary_dl'son=1 ddt-area="5357" dd_name="文本列表定制">

    <dt>
        <a    nname="book-65152-9163_1-468615_1"  class="" href="" target="_blank"
              title="成功/励志" ddt-pit="1" ddt-src="">其他        </a>
    </dt>
</dl>
    <div  class="hide submenu "  name="m403752_pid5376_5366_t9145"  type=item >
        <div  class="con eject_main"  name="m403752_pid5376_5366_t9146"   >
            <div  class="col eject_left"  name="m403752_pid5376_5366_t9147"   >
                <dl class='inner_dl' ddt-area="5358" dd_name="弹出层1">

        <dt>
            <a    name="0601"  class="" href="" target="_blank"
                  title="" ddt-pit="1" ddt-src="">期刊/音像        </a>
        </dt>
           </dl>
                <dl class='inner_dl' ddt-area="5361" dd_name="弹出层4">

                    <dt>
                        <a  name="0602"   nname="book-65152-9163_1-469006_1"  class="" href="" target="_blank"
                            title="" ddt-pit="1" ddt-src="">科技生活        </a>
                    </dt>
                </dl>
                <dl class='inner_dl' ddt-area="5361" dd_name="弹出层4">

                    <dt>
                        <a  name="0603"   nname="book-65152-9163_1-469006_1"  class="" href="" target="_blank"
                            title="" ddt-pit="1" ddt-src="">心灵鸡汤        </a>
                    </dt>
                </dl>
                <dl class='inner_dl' ddt-area="5361" dd_name="弹出层4">

                    <dt>
                        <a  name="0604"   nname="book-65152-9163_1-469006_1"  class="" href="" target="_blank"
                            title="" ddt-pit="1" ddt-src="">其他        </a>
                    </dt>
                </dl>
    </div>
            <div  class="col eject_right"  name="m403752_pid5376_5366_t9148"   >

            </div>
        </div>
    </div>
                    </div>


                    <div  class="level_one "  name="m403752_pid5440_t10274"  type=bar father=1 >
                        <dl  class="con primary_dl"  name="m403752_pid5440_t10275"  son='1'  ><dt  class="con "  name="m403752_pid5440_t10276"   >
                        </dt>
                            <dd  class="con sec_cate"  name="m403752_pid5440_t10277"   ></dd>
                        </dl>
                        <div  class="con "  name="m403752_pid5440_t10278"   >
                            <div  class="hide submenu "  name="m403752_pid5440_5435_t9145"  type=item >
                                <div  class="con eject_main"  name="m403752_pid5440_5435_t9146"   ><div  class="col eject_left"  name="m403752_pid5440_5435_t9147"   ></div>
                                    <div  class="col eject_right"  name="m403752_pid5440_5435_t9148"  >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div  class="level_one "  name="m403752_pid5441_t10274"  type=bar father=1 >
                        <dl  class="con primary_dl"  name="m403752_pid5441_t10275"  son='1'  ><dt  class="con "  name="m403752_pid5441_t10276"   >
                        </dt>
                            <dd  class="con sec_cate"  name="m403752_pid5441_t10277"   ></dd>
                        </dl>
                        <div  class="con "  name="m403752_pid5441_t10278"   >
                            <div  class="hide submenu "  name="m403752_pid5441_5435_t9145"  type=item >
                                <div  class="con eject_main"  name="m403752_pid5441_5435_t9146"   ><div  class="col eject_left"  name="m403752_pid5441_5435_t9147"   >
                                </div>
                                    <div  class="col eject_right"  name="m403752_pid5441_5435_t9148"   ></div></div></div></div></div>
                    <div  class="level_one "  name="m403752_pid5442_t10274"  type=bar father=1 ><dl  class="con primary_dl"  name="m403752_pid5442_t10275"  son='1'  >
                        <dt  class="con "  name="m403752_pid5442_t10276"   ></dt>
                        <dd  class="con sec_cate"  name="m403752_pid5442_t10277"   ></dd></dl>
                        <div  class="con "  name="m403752_pid5442_t10278"   >
                        <div  class="hide submenu "  name="m403752_pid5442_5435_t9145"  type=item >
                            <div  class="con eject_main"  name="m403752_pid5442_5435_t9146"   >
                            <div  class="col eject_left"  name="m403752_pid5442_5435_t9147"   ></div>
                                <div  class="col eject_right"  name="m403752_pid5442_5435_t9148"   ></div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div  class="level_one "  name="m403752_pid5440_t10274"  type=bar father=1 >
                        <dl  class="con primary_dl"  name="m403752_pid5440_t10275"  son='1'  ><dt  class="con "  name="m403752_pid5440_t10276"   >
                        </dt>
                            <dd  class="con sec_cate"  name="m403752_pid5440_t10277"   ></dd>
                        </dl>
                        <div  class="con "  name="m403752_pid5440_t10278"   >
                            <div  class="hide submenu "  name="m403752_pid5440_5435_t9145"  type=item >
                                <div  class="con eject_main"  name="m403752_pid5440_5435_t9146"   ><div  class="col eject_left"  name="m403752_pid5440_5435_t9147"   ></div>
                                    <div  class="col eject_right"  name="m403752_pid5440_5435_t9148"  >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div  class="level_one "  name="m403752_pid5440_t10274"  type=bar father=1 >
                        <dl  class="con primary_dl"  name="m403752_pid5440_t10275"  son='1'  ><dt  class="con "  name="m403752_pid5440_t10276"   >
                        </dt>
                            <dd  class="con sec_cate"  name="m403752_pid5440_t10277"   ></dd>
                        </dl>
                        <div  class="con "  name="m403752_pid5440_t10278"   >
                            <div  class="hide submenu "  name="m403752_pid5440_5435_t9145"  type=item >
                                <div  class="con eject_main"  name="m403752_pid5440_5435_t9146"   ><div  class="col eject_left"  name="m403752_pid5440_5435_t9147"   ></div>
                                    <div  class="col eject_right"  name="m403752_pid5440_5435_t9148"  >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div  class="level_one "  name="m403752_pid5440_t10274"  type=bar father=1 >
                        <dl  class="con primary_dl"  name="m403752_pid5440_t10275"  son='1'  ><dt  class="con "  name="m403752_pid5440_t10276"   >
                        </dt>
                            <dd  class="con sec_cate"  name="m403752_pid5440_t10277"   ></dd>
                        </dl>
                        <div  class="con "  name="m403752_pid5440_t10278"   >
                            <div  class="hide submenu "  name="m403752_pid5440_5435_t9145"  type=item >
                                <div  class="con eject_main"  name="m403752_pid5440_5435_t9146"   ><div  class="col eject_left"  name="m403752_pid5440_5435_t9147"   ></div>
                                    <div  class="col eject_right"  name="m403752_pid5440_5435_t9148"  >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div  class="level_one "  name="m403752_pid5440_t10274"  type=bar father=1 >
                        <dl  class="con primary_dl"  name="m403752_pid5440_t10275"  son='1'  ><dt  class="con "  name="m403752_pid5440_t10276"   >
                        </dt>
                            <dd  class="con sec_cate"  name="m403752_pid5440_t10277"   ></dd>
                        </dl>
                        <div  class="con "  name="m403752_pid5440_t10278"   >
                            <div  class="hide submenu "  name="m403752_pid5440_5435_t9145"  type=item >
                                <div  class="con eject_main"  name="m403752_pid5440_5435_t9146"   ><div  class="col eject_left"  name="m403752_pid5440_5435_t9147"   ></div>
                                    <div  class="col eject_right"  name="m403752_pid5440_5435_t9148"  >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div  class="level_one "  name="m403752_pid5440_t10274"  type=bar father=1 >
                        <dl  class="con primary_dl"  name="m403752_pid5440_t10275"  son='1'  ><dt  class="con "  name="m403752_pid5440_t10276"   >
                        </dt>
                            <dd  class="con sec_cate"  name="m403752_pid5440_t10277"   ></dd>
                        </dl>
                        <div  class="con "  name="m403752_pid5440_t10278"   >
                            <div  class="hide submenu "  name="m403752_pid5440_5435_t9145"  type=item >
                                <div  class="con eject_main"  name="m403752_pid5440_5435_t9146"   ><div  class="col eject_left"  name="m403752_pid5440_5435_t9147"   ></div>
                                    <div  class="col eject_right"  name="m403752_pid5440_5435_t9148"  >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div  class="level_one "  name="m403752_pid5440_t10274"  type=bar father=1 >
                        <dl  class="con primary_dl"  name="m403752_pid5440_t10275"  son='1'  ><dt  class="con "  name="m403752_pid5440_t10276"   >
                        </dt>
                            <dd  class="con sec_cate"  name="m403752_pid5440_t10277"   ></dd>
                        </dl>
                        <div  class="con "  name="m403752_pid5440_t10278"   >
                            <div  class="hide submenu "  name="m403752_pid5440_5435_t9145"  type=item >
                                <div  class="con eject_main"  name="m403752_pid5440_5435_t9146"   ><div  class="col eject_left"  name="m403752_pid5440_5435_t9147"   ></div>
                                    <div  class="col eject_right"  name="m403752_pid5440_5435_t9148"  >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div  class="level_one "  name="m403752_pid5440_t10274"  type=bar father=1 >
                        <dl  class="con primary_dl"  name="m403752_pid5440_t10275"  son='1'  ><dt  class="con "  name="m403752_pid5440_t10276"   >
                        </dt>
                            <dd  class="con sec_cate"  name="m403752_pid5440_t10277"   ></dd>
                        </dl>
                        <div  class="con "  name="m403752_pid5440_t10278"   >
                            <div  class="hide submenu "  name="m403752_pid5440_5435_t9145"  type=item >
                                <div  class="con eject_main"  name="m403752_pid5440_5435_t9146"   ><div  class="col eject_left"  name="m403752_pid5440_5435_t9147"   ></div>
                                    <div  class="col eject_right"  name="m403752_pid5440_5435_t9148"  >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div  class="level_one "  name="m403752_pid5440_t10274"  type=bar father=1 >
                        <dl  class="con primary_dl"  name="m403752_pid5440_t10275"  son='1'  ><dt  class="con "  name="m403752_pid5440_t10276"   >
                        </dt>
                            <dd  class="con sec_cate"  name="m403752_pid5440_t10277"   ></dd>
                        </dl>
                        <div  class="con "  name="m403752_pid5440_t10278"   >
                            <div  class="hide submenu "  name="m403752_pid5440_5435_t9145"  type=item >
                                <div  class="con eject_main"  name="m403752_pid5440_5435_t9146"   ><div  class="col eject_left"  name="m403752_pid5440_5435_t9147"   ></div>
                                    <div  class="col eject_right"  name="m403752_pid5440_5435_t9148"  >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div  class="level_one "  name="m403752_pid5440_t10274"  type=bar father=1 >
                        <dl  class="con primary_dl"  name="m403752_pid5440_t10275"  son='1'  ><dt  class="con "  name="m403752_pid5440_t10276"   >
                        </dt>
                            <dd  class="con sec_cate"  name="m403752_pid5440_t10277"   ></dd>
                        </dl>
                        <div  class="con "  name="m403752_pid5440_t10278"   >
                            <div  class="hide submenu "  name="m403752_pid5440_5435_t9145"  type=item >
                                <div  class="con eject_main"  name="m403752_pid5440_5435_t9146"   ><div  class="col eject_left"  name="m403752_pid5440_5435_t9147"   ></div>
                                    <div  class="col eject_right"  name="m403752_pid5440_5435_t9148"  >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div  class="level_one "  name="m403752_pid5440_t10274"  type=bar father=1 >
                        <dl  class="con primary_dl"  name="m403752_pid5440_t10275"  son='1'  ><dt  class="con "  name="m403752_pid5440_t10276"   >
                        </dt>
                            <dd  class="con sec_cate"  name="m403752_pid5440_t10277"   ></dd>
                        </dl>
                        <div  class="con "  name="m403752_pid5440_t10278"   >
                            <div  class="hide submenu "  name="m403752_pid5440_5435_t9145"  type=item >
                                <div  class="con eject_main"  name="m403752_pid5440_5435_t9146"   ><div  class="col eject_left"  name="m403752_pid5440_5435_t9147"   ></div>
                                    <div  class="col eject_right"  name="m403752_pid5440_5435_t9148"  >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div  class="level_one "  name="m403752_pid5440_t10274"  type=bar father=1 >
                        <dl  class="con primary_dl"  name="m403752_pid5440_t10275"  son='1'  ><dt  class="con "  name="m403752_pid5440_t10276"   >
                        </dt>
                            <dd  class="con sec_cate"  name="m403752_pid5440_t10277"   ></dd>
                        </dl>
                        <div  class="con "  name="m403752_pid5440_t10278"   >
                            <div  class="hide submenu "  name="m403752_pid5440_5435_t9145"  type=item >
                                <div  class="con eject_main"  name="m403752_pid5440_5435_t9146"   ><div  class="col eject_left"  name="m403752_pid5440_5435_t9147"   ></div>
                                    <div  class="col eject_right"  name="m403752_pid5440_5435_t9148"  >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div  class="level_one "  name="m403752_pid5440_t10274"  type=bar father=1 >
                        <dl  class="con primary_dl"  name="m403752_pid5440_t10275"  son='1'  ><dt  class="con "  name="m403752_pid5440_t10276"   >
                        </dt>
                            <dd  class="con sec_cate"  name="m403752_pid5440_t10277"   ></dd>
                        </dl>
                        <div  class="con "  name="m403752_pid5440_t10278"   >
                            <div  class="hide submenu "  name="m403752_pid5440_5435_t9145"  type=item >
                                <div  class="con eject_main"  name="m403752_pid5440_5435_t9146"   ><div  class="col eject_left"  name="m403752_pid5440_5435_t9147"   ></div>
                                    <div  class="col eject_right"  name="m403752_pid5440_5435_t9148"  >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div  class="level_one "  name="m403752_pid5440_t10274"  type=bar father=1 >
                        <dl  class="con primary_dl"  name="m403752_pid5440_t10275"  son='1'  ><dt  class="con "  name="m403752_pid5440_t10276"   >
                        </dt>
                            <dd  class="con sec_cate"  name="m403752_pid5440_t10277"   ></dd>
                        </dl>
                        <div  class="con "  name="m403752_pid5440_t10278"   >
                            <div  class="hide submenu "  name="m403752_pid5440_5435_t9145"  type=item >
                                <div  class="con eject_main"  name="m403752_pid5440_5435_t9146"   ><div  class="col eject_left"  name="m403752_pid5440_5435_t9147"   ></div>
                                    <div  class="col eject_right"  name="m403752_pid5440_5435_t9148"  >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div  class="level_one "  name="m403752_pid5440_t10274"  type=bar father=1 >
                        <dl  class="con primary_dl"  name="m403752_pid5440_t10275"  son='1'  ><dt  class="con "  name="m403752_pid5440_t10276"   >
                        </dt>
                            <dd  class="con sec_cate"  name="m403752_pid5440_t10277"   ></dd>
                        </dl>
                        <div  class="con "  name="m403752_pid5440_t10278"   >
                            <div  class="hide submenu "  name="m403752_pid5440_5435_t9145"  type=item >
                                <div  class="con eject_main"  name="m403752_pid5440_5435_t9146"   ><div  class="col eject_left"  name="m403752_pid5440_5435_t9147"   ></div>
                                    <div  class="col eject_right"  name="m403752_pid5440_5435_t9148"  >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div  class="level_one "  name="m403752_pid5440_t10274"  type=bar father=1 >
                        <dl  class="con primary_dl"  name="m403752_pid5440_t10275"  son='1'  ><dt  class="con "  name="m403752_pid5440_t10276"   >
                        </dt>
                            <dd  class="con sec_cate"  name="m403752_pid5440_t10277"   ></dd>
                        </dl>
                        <div  class="con "  name="m403752_pid5440_t10278"   >
                            <div  class="hide submenu "  name="m403752_pid5440_5435_t9145"  type=item >
                                <div  class="con eject_main"  name="m403752_pid5440_5435_t9146"   ><div  class="col eject_left"  name="m403752_pid5440_5435_t9147"   ></div>
                                    <div  class="col eject_right"  name="m403752_pid5440_5435_t9148"  >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div  class="level_one "  name="m403752_pid5440_t10274"  type=bar father=1 >
                        <dl  class="con primary_dl"  name="m403752_pid5440_t10275"  son='1'  ><dt  class="con "  name="m403752_pid5440_t10276"   >
                        </dt>
                            <dd  class="con sec_cate"  name="m403752_pid5440_t10277"   ></dd>
                        </dl>
                        <div  class="con "  name="m403752_pid5440_t10278"   >
                            <div  class="hide submenu "  name="m403752_pid5440_5435_t9145"  type=item >
                                <div  class="con eject_main"  name="m403752_pid5440_5435_t9146"   ><div  class="col eject_left"  name="m403752_pid5440_5435_t9147"   ></div>
                                    <div  class="col eject_right"  name="m403752_pid5440_5435_t9148"  >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div  class="level_one "  name="m403752_pid5440_t10274"  type=bar father=1 >
                        <dl  class="con primary_dl"  name="m403752_pid5440_t10275"  son='1'  ><dt  class="con "  name="m403752_pid5440_t10276"   >
                        </dt>
                            <dd  class="con sec_cate"  name="m403752_pid5440_t10277"   ></dd>
                        </dl>
                        <div  class="con "  name="m403752_pid5440_t10278"   >
                            <div  class="hide submenu "  name="m403752_pid5440_5435_t9145"  type=item >
                                <div  class="con eject_main"  name="m403752_pid5440_5435_t9146"   ><div  class="col eject_left"  name="m403752_pid5440_5435_t9147"   ></div>
                                    <div  class="col eject_right"  name="m403752_pid5440_5435_t9148"  >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div  class="level_one "  name="m403752_pid5440_t10274"  type=bar father=1 >
                        <dl  class="con primary_dl"  name="m403752_pid5440_t10275"  son='1'  ><dt  class="con "  name="m403752_pid5440_t10276"   >
                        </dt>
                            <dd  class="con sec_cate"  name="m403752_pid5440_t10277"   ></dd>
                        </dl>
                        <div  class="con "  name="m403752_pid5440_t10278"   >
                            <div  class="hide submenu "  name="m403752_pid5440_5435_t9145"  type=item >
                                <div  class="con eject_main"  name="m403752_pid5440_5435_t9146"   ><div  class="col eject_left"  name="m403752_pid5440_5435_t9147"   ></div>
                                    <div  class="col eject_right"  name="m403752_pid5440_5435_t9148"  >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div  class="level_one "  name="m403752_pid5443_t10274"  type=bar father=1 >
                        <dl  class="con primary_dl"  name="m403752_pid5443_t10275"  son='1'  ><dt  class="con "  name="m403752_pid5443_t10276"   ></dt>
                            <dd  class="con sec_cate"  name="m403752_pid5443_t10277"   ></dd>
                        </dl>
                        <div  class="con "  name="m403752_pid5443_t10278"   >
                            <div  class="hide submenu "  name="m403752_pid5443_5435_t9145"  type=item >
                                <div  class="con eject_main"  name="m403752_pid5443_5435_t9146"   >
                                <div  class="col eject_left"  name="m403752_pid5443_5435_t9147"   ></div>
                                    <div  class="col eject_right"  name="m403752_pid5443_5435_t9148"   >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 改动结束-->
            <div class="spacer c_spacer"></div>
        </div>
        <div class="vspacer"></div>
        <div  class="col storey_one_center" name=9164>
            <div id='component_403753'></div>
            <div  class="tab_box_aa " id="component_map_id_403753_part_id_5221"   name=m403753_pid0_p5221  dd_name="焦点图"    js="true" itemclass="" action="hover" delay="0" speed='3000'  rand='0' area='0' barclass='on'  updown='1' level="2">
    <div class="head  head"    ddt-area="5221" dd_name="tab头">
        <ul class="tab_aa">
            <li class='on first'  class=" tabh_0  on first " type="bar"><span>1</span></li>
            <li class=" tabh_1 " type="bar" ><span>2</span></li>
            <li class=" tabh_2 " type="bar" ><span>3</span></li>
            <li class=" tabh_3 " type="bar" ><span>4</span></li>
            <li class=" tabh_4 " type="bar" ><span>5</span></li>
            <li class=" tabh_5 " type="bar" ><span>6</span></li>
            <li class=" tabh_6 " type="bar" ><span>7</span></li>
            <li class=" tabh_7 " type="bar" ><span>8</span></li>
            <li class=" tabh_8 " type="bar" ><span>9</span></li>
            <li class=" tabh_9 " type="bar" ><span>10</span></li>
            <li class=" tabh_10 " type="bar" ><span>11</span></li>
        </ul></div>
                <div class="tab_content_aa tab_content_aa ">
    <div class="content tab_1" type="item" dd_name="tab_1">
        <a   class=" _1  pic"    href=""  ddt-pit="1" dd_name="1"  ddt-area="5223"ddt-src="" title="文艺每满100减50" target="_blank"  nname="book-65152-9164_1-474033_1"  >
            <img  src="http://img61.ddimg.cn/upload_img/00087/geq/750x315_dl_0812-1568691145.jpg"    title='文艺每满100减50'  alt='文艺每满100减50'  ddt-src="http://img61.ddimg.cn/upload_img/00087/geq/750x315_dl_0812-1568691145.jpg"/></a>                                     </div>
    <div class="content tab_2" type="item" dd_name="tab_2" style="display: none">
        <a   class=" _1  pic"    href=""  ddt-pit="1" dd_name="1"  ddt-area="5225"ddt-src="" title="万种童书 每满100减40" target="_blank"  nname="book-65152-9164_1-474035_1"  >
            <img  src="http://img61.ddimg.cn/upload_img/00785/ts0918_0923/750x315_wzh_20190912-1568706271.jpg"    title='万种童书 每满100减40'  alt='万种童书 每满100减40'  ddt-src="http://img61.ddimg.cn/upload_img/00785/ts0918_0923/750x315_wzh_20190912-1568706271.jpg"/></a></div>
    <div class="content tab_3" type="item" dd_name="tab_3" style="display: none">
        <a   class=" _1  pic"    href=""  ddt-pit="1" dd_name="1"  ddt-area="5227"ddt-src="" title="教辅79-30" target="_blank"  nname="book-65152-9164_1-474037_1"  >
            <img  src="http://img62.ddimg.cn/upload_img/00779/xmj/750x315_dl_0807-1568289013.jpg"    title='教辅79-30'  alt='教辅79-30'  ddt-src="http://img62.ddimg.cn/upload_img/00779/xmj/750x315_dl_0807-1568289013.jpg"/></a></div>
    <div class="content tab_4" type="item" dd_name="tab_4" style="display: none">
        <a   class=" _1  pic"    href=""  ddt-pit="1" dd_name="1"  ddt-area="5229"ddt-src="" title="博库5折封顶" target="_blank"  nname="book-65152-9164_1-474039_1"  >
            <img  src="http://img61.ddimg.cn/upload_img/00316/by/750-1568805068.jpg"    title='博库5折封顶'  alt='博库5折封顶'  ddt-src="http://img61.ddimg.cn/upload_img/00316/by/750-1568805068.jpg"/></a>                                     </div>
    <div class="content tab_5" type="item" dd_name="tab_5" style="display: none">
        <a   class=" _1  pic"    href=""  ddt-pit="1" dd_name="1"  ddt-area="5231"ddt-src="http://baby.dangdang.com/2019new9" title="9月新书" target="_blank"  nname="book-65152-9164_1-474041_1"  >
            <img  src="http://img62.ddimg.cn/upload_img/00785/xssd201909/750-315-1567161079.jpg"    title='9月新书'  alt='9月新书'  ddt-src="http://img62.ddimg.cn/upload_img/00785/xssd201909/750-315-1567161079.jpg"/></a>                                     </div>
    <div class="content tab_6" type="item" dd_name="tab_6" style="display: none">
        <a   class=" _1  pic"    href=""  ddt-pit="1" dd_name="1"  ddt-area="5233"ddt-src="" title="时代华语" target="_blank"  nname="book-65152-9164_1-474043_1"  >
            <img  src="http://img52.ddimg.cn/9003260127167592.jpg"    title='时代华语'  alt='时代华语'  ddt-src="http://img52.ddimg.cn/9003260127167592.jpg"/></a>                                     </div>
    <div class="content tab_7" type="item" dd_name="tab_7" style="display: none">
        <a   class=" _1  pic"    href=""  ddt-pit="1" dd_name="1"  ddt-area="5235"ddt-src="" title="社科" target="_blank"  nname="book-65152-9164_1-474045_1"  >
            <img  src="http://img60.ddimg.cn/upload_img/00759/xin/750x315-1568717511.jpg"    title='社科'  alt='社科'  ddt-src="http://img60.ddimg.cn/upload_img/00759/xin/750x315-1568717511.jpg"/></a>                                     </div>
    <div class="content tab_8" type="item" dd_name="tab_8" style="display: none">
        <a   class=" _1  pic"    href=""  ddt-pit="1" dd_name="1"  ddt-area="5237"ddt-src="" title="电子书" target="_blank"  nname="book-65152-9164_1-474047_1"  >
            <img  src="http://img62.ddimg.cn/ddreader/dangebook/9y30j15_750x315.jpg"    title='电子书'  alt='电子书'  ddt-src="http://img62.ddimg.cn/ddreader/dangebook/9y30j15_750x315.jpg"/></a>                                     </div>
    <div class="content tab_9" type="item" dd_name="tab_9" style="display: none">
        <a   class=" _1  pic"    href=""  ddt-pit="1" dd_name="1"  ddt-area="10193"ddt-src="" title="范志红新书" target="_blank"  nname="book-65152-9164_1-2626619_1"  >
            <img  src="http://img61.ddimg.cn/upload_img/00820/a/750x315-1568778635.jpg"    title='范志红新书'  alt='范志红新书'  ddt-src="http://img61.ddimg.cn/upload_img/00820/a/750x315-1568778635.jpg"/></a>                                     </div>
    <div class="content tab_10" type="item" dd_name="tab_10" style="display: none">
        <a   class=" _1  pic"    href=""  ddt-pit="1" dd_name="1"  ddt-area="10194"ddt-src="" title="招商" target="_blank"  nname="book-65152-9164_1-2626612_1"  >
            <img  src="http://img63.ddimg.cn/upload_img/00316/by/750X315-1568634028.jpg"    title='招商'  alt='招商'  ddt-src="http://img63.ddimg.cn/upload_img/00316/by/750X315-1568634028.jpg"/></a>                                     </div>
    <div class="content tab_11" type="item" dd_name="tab_11" style="display: none">
        <a   class=" _1  pic"    href=""  ddt-pit="1" dd_name="1"  ddt-area="10195"ddt-src="" title="新经典" target="_blank"  nname="book-65152-9164_1-2648587_1">
            <img  src="http://img59.ddimg.cn/9002790070204389.jpg"    title='新经典'  alt='新经典'  ddt-src="http://img59.ddimg.cn/9002790070204389.jpg"/></a>                                     </div>


</div>
</div>


    <div class="spacer c_spacer"></div>
            <div  class="book_online "  name="图书馆首：新书上架_2" dd_name="新书上架"  ddt-area="403754" ddt-floor="403754" ddt-expose="on" ><h1>新到书籍</h1><hr style="border-bottom: 5px solid #FF3333;">
                <div class="roll_aa " id="mapid_403754_parent_5298_part_" marquee="true"    name=m403754_pid5298_p           js="true" action="newclickroll" delay="500" prevnoneclass="btn_prev_none" nextnoneclass="btn_next_none" page="0"  speed="0" display_count="" is_display_tab="1" noend="0">
        <div class="btn_brand_prev" type="rollpre"></div>
        <div class="btn_brand_next" type="rollnext"></div>
        <ul class="mix_marquee_tab">
        </ul>
        <div class="over">
            <ul class="list_aa" style="left:0;" type="rollbox">
                <li type="rollitem" dd_name="第1帧">
                    <ul class="product_ul " id="component_403754__5298_5294__5294"   ddt-area="5294" dd_name="商品">
                        <li class="line1 "   nname="book-65152-9164_2-470620_1"  ddt-pit="1" dd_name="1">
                            <a  title="春日序曲（《请以你的名字呼唤我》第90届奥斯卡获奖影片原著作者全新洒泪力作）"  class="img" href=""  target="_blank">
                                <img src='http://img3m9.ddimg.cn/44/30/27911609-1_l_8.jpg' alt='春日序曲（《请以你的名字呼唤我》第90届奥斯卡获奖影片原著作者全新洒泪力作）' /></a>
                            <p class="name" ddt-src="27911609"><a  title="春日序曲（《请以你的名字呼唤我》第90届奥斯卡获奖影片原著作者全新洒泪力作）" href=""  target="_blank">春日序曲（《请以你的名字呼唤我》第90届奥斯卡获奖影片原著作者全新</a></p>
                            <p class="author"><span class="author_t"></span>安德烈·艾席蒙  白马时光 出品</p>
                            <p class="price"><span class="rob"><span class="sign">&yen;</span><span class="num">40</span>
                                <span class="tail">.90</span></span>
                                <span class="price_r"><span class="sign">&yen;</span>
                                <span class="num">45</span><span class="tail">.00</span></span></p>
                            <div class="icon_pop"></div>
                        </li>
                        <li class="line2 "   nname="book-65152-9164_2-470620_2"  ddt-pit="2" dd_name="2">
                            <a  title="我们都曾受过伤，却有了更好的人生"  class="img" href=""  target="_blank"><img src='http://img3m5.ddimg.cn/70/11/27916585-1_l_3.jpg' alt='我们都曾受过伤，却有了更好的人生' /></a>
                            <p class="name" ddt-src="27916585">
                                <a  title="我们都曾受过伤，却有了更好的人生" href=""  target="_blank">我们都曾受过伤，却有了更好的人生</a></p>
                            <p class="author"><span class="author_t"></span>（美）梅格·杰伊</p>
                            <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                <span class="num">29</span>
                                <span class="tail">.00</span></span>
                                <span class="price_r"><span class="sign">&yen;</span>
                                    <span class="num">58</span>
                                    <span class="tail">.00</span></span>
                                <span class="ebookprice_n">
                                    <span class="ebookprice_title">电子书</span>
                                    <span class="sign">&yen;</span>
                                    <span class="num">34</span><span class="tail">.80</span></span></p>
                            <div class="icon_pop"></div>            </li>
                        <li class="line3 "   nname="book-65152-9164_2-470620_3"  ddt-pit="3" dd_name="3">
                            <a  title="养育男孩（全2册）"  class="img" href=""  target="_blank">
                                <img src='http://img3m1.ddimg.cn/40/27/27922891-1_l_5.jpg' alt='养育男孩（全2册）' /></a><p class="name" ddt-src="27922891"><a  title="养育男孩（全2册）" href=""  target="_blank">养育男孩（全2册）</a></p>
                            <p class="author"><span class="author_t"></span>史蒂夫·比达尔夫，丹·金德伦，迈克尔·汤普森</p>
                            <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                <span class="num">98</span><span class="tail">.80</span></span><span class="price_r"><span class="sign">&yen;</span><span class="num">98</span>
                                <span class="tail">.80</span></span></p>
                            <div class="icon_pop"></div>
                        </li>
                        <li class="line4 "   nname="book-65152-9164_2-470620_4"  ddt-pit="4" dd_name="4">
                            <a  title="吉祥纹莲花楼（当当专享签名本）"  class="img" href=""  target="_blank"><img src='http://img3m2.ddimg.cn/31/27/27921892-1_l_9.jpg' alt='吉祥纹莲花楼（当当专享签名本）' /></a>
                            <p class="name" ddt-src="27921892">
                                <a  title="吉祥纹莲花楼（当当专享签名本）" href=""  target="_blank">吉祥纹莲花楼（当当专享签名本）</a></p>
                            <p class="author"><span class="author_t"></span>藤萍 著，星文文化 出品</p>
                            <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                <span class="num">89</span><span class="tail">.90</span></span>
                                <span class="price_r"><span class="sign">&yen;</span>
                                    <span class="num">109</span><span class="tail">.00</span></span></p>
                            <div class="icon_pop"></div>
                        </li>
                        <li class="line5 "   nname="book-65152-9164_2-470620_5"  ddt-pit="5" dd_name="5">
                            <a  title="买房可以很简单：给普通人的一堂极简买房课"  class="img" href=""  target="_blank"><img src='http://img3m7.ddimg.cn/67/24/27924997-1_l_40.jpg' alt='买房可以很简单：给普通人的一堂极简买房课' /></a><p class="name" ddt-src="27924997"><a  title="买房可以很简单：给普通人的一堂极简买房课" href=""  target="_blank">买房可以很简单：给普通人的一堂极简买房课</a></p>
                            <p class="author"><span class="author_t"></span>子安 著</p>
                            <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                <span class="num">34</span><span class="tail">.00</span></span>
                                <span class="price_r"><span class="sign">&yen;</span>
                                    <span class="num">68</span><span class="tail">.00</span></span></p>
                            <div class="icon_pop"></div>
                        </li>
                        <li class="line6 "   nname="book-65152-9164_2-470620_6"  ddt-pit="6" dd_name="6">
                            <a  title="DK不可思议的大剖面（战舰的秘密/人体的秘密/城堡的秘密）"  class="img" href=""  target="_blank"><img src='http://img3m1.ddimg.cn/34/3/27932191-1_l_3.jpg' alt='DK不可思议的大剖面（战舰的秘密/人体的秘密/城堡的秘密）' /></a>
                            <p class="name" ddt-src="27932191"><a  title="DK不可思议的大剖面（战舰的秘密/人体的秘密/城堡的秘密）" href=""  target="_blank">DK不可思议的大剖面（战舰的秘密/人体的秘密/城堡的秘密）</a></p>
                            <p class="author"><span class="author_t"></span>英国DK公司</p>
                            <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                <span class="num">168</span><span class="tail">.30</span></span>
                                <span class="price_r"><span class="sign">&yen;</span><span class="num">198</span>
                                    <span class="tail">.00</span></span></p>
                            <div class="icon_pop"></div>
                        </li>
                        <li class="line7 "   nname="book-65152-9164_2-470620_7"  ddt-pit="7" dd_name="7">
                            <a  title="与时间赛跑的大熊"  class="img" href="http://product.dangdang.com/27925655.html"  target="_blank"><img src='http://img3m5.ddimg.cn/32/16/27925655-1_l_9.jpg' alt='与时间赛跑的大熊' /></a><p class="name" ddt-src="27925655"><a  title="与时间赛跑的大熊" href=""  target="_blank">与时间赛跑的大熊</a></p>
                            <p class="author"><span class="author_t"></span>让 - 吕克·弗罗芒塔勒</p>
                            <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                <span class="num">34</span><span class="tail">.50</span></span>
                                <span class="price_r"><span class="sign">&yen;</span>
                                    <span class="num">69</span><span class="tail">.00</span></span></p>
                            <div class="icon_pop"></div>
                        </li>
                        <li class="line8 "   nname="book-65152-9164_2-470620_8"  ddt-pit="8" dd_name="8">
                            <a  title="带人要同频，管人要共情"  class="img" href=""  target="_blank"><img src='http://img3m8.ddimg.cn/21/26/1901149788-1_l_1.jpg' alt='带人要同频，管人要共情' /></a>
                            <p class="name" ddt-src="1901149788">
                                <a  title="带人要同频，管人要共情" href=""  target="_blank">带人要同频，管人要共情</a></p>
                            <p class="author"><span class="author_t"></span>（日）吉田幸弘 著</p>
                            <p class="price"><span class="rob"><span class="sign">&yen;</span><span class="num">26</span>
                                <span class="tail">.99</span></span></p>
                            <div class="icon_pop"></div>
                        </li>
                    </ul>

                </li><li type="rollitem" dd_name="第2帧">
                <ul class="product_ul " id="component_403754__5298_5295__5295"   ddt-area="5295" dd_name="商品">
                    <li class="line1 "   nname="book-65152-9164_2-470621_1"  ddt-pit="1" dd_name="1">
                        <a  title="你想活出怎样的人生（宫崎骏从10岁读到70岁的小说，同名电影制作中，登顶日本2018图书总榜）"  class="img" href=""  target="_blank">
                            <img src='http://img3m0.ddimg.cn/37/36/27911800-1_l_3.jpg' alt='你想活出怎样的人生（宫崎骏从10岁读到70岁的小说，同名电影制作中，登顶日本2018图书总榜）' /></a><p class="name" ddt-src="27911800">
                        <a  title="你想活出怎样的人生（宫崎骏从10岁读到70岁的小说，同名电影制作中，登顶日本2018图书总榜）" href=""  target="_blank">你想活出怎样的人生（宫崎骏从10岁读到70岁的小说，同名电影制作中，</a></p>
                        <p class="author"><span class="author_t"></span>（日）吉野源三郎 著，（日）胁田和 绘  ，新经典  出品</p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span>
                            <span class="num">46</span><span class="tail">.90</span></span>
                            <span class="price_r"><span class="sign">&yen;</span>
                                <span class="num">49</span><span class="tail">.50</span></span></p>
                        <div class="icon_pop"></div>
                    </li>
                    <li class="line2 "   nname="book-65152-9164_2-470621_2"  ddt-pit="2" dd_name="2">
                        <a  title="简读中国史（张宏杰重磅新作）"  class="img" href=""  target="_blank">
                            <img src='http://img3m3.ddimg.cn/61/19/27906973-1_l_11.jpg' alt='简读中国史（张宏杰重磅新作）' /></a><p class="name" ddt-src="27906973">
                        <a  title="简读中国史（张宏杰重磅新作）" href=""  target="_blank">简读中国史（张宏杰重磅新作）</a></p>
                        <p class="author"><span class="author_t"></span>张宏杰 著,博集天卷 出品</p>
                        <p class="price"><span class="rob">
                            <span class="sign">&yen;</span><span class="num">29</span>
                            <span class="tail">.00</span></span><span class="price_r">
                            <span class="sign">&yen;</span><span class="num">58</span>
                            <span class="tail">.00</span></span>
                            <span class="ebookprice_n"><span class="ebookprice_title">电子书</span>
                                <span class="sign">&yen;</span><span class="num">28</span>
                                <span class="tail">.99</span></span></p>
                        <div class="icon_pop"></div>
                    </li>
                    <li class="line3 "   nname="book-65152-9164_2-470621_3"  ddt-pit="3" dd_name="3">
                        <a  title="凡是过去，皆为序曲：2020小林漫画日历"  class="img" href="h"  target="_blank">
                            <img src='http://img3m1.ddimg.cn/5/32/27916421-1_l_6.jpg' alt='凡是过去，皆为序曲：2020小林漫画日历' /></a><p class="name" ddt-src="27916421">
                        <a  title="凡是过去，皆为序曲：2020小林漫画日历" href=""  target="_blank">凡是过去，皆为序曲：2020小林漫画日历</a></p>
                        <p class="author"><span class="author_t"></span>林帝浣 绘著</p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span>
                            <span class="num">84</span><span class="tail">.00</span></span>
                            <span class="price_r"><span class="sign">&yen;</span>
                                <span class="num">168</span><span class="tail">.00</span></span></p>
                        <div class="icon_pop"></div>
                    </li>
                    <li class="line4 "   nname="book-65152-9164_2-470621_4"  ddt-pit="4" dd_name="4">
                        <a  title="南渡君臣：宋高宗及其时代（精装，虞云国重磅新作！）"  class="img" href=""  target="_blank"><img src='http://img3m6.ddimg.cn/30/27/27907536-1_l_13.jpg' alt='南渡君臣：宋高宗及其时代（精装，虞云国重磅新作！）' /></a>
                        <p class="name" ddt-src="27907536"><a  title="南渡君臣：宋高宗及其时代（精装，虞云国重磅新作！）" href=""  target="_blank">南渡君臣：宋高宗及其时代（精装，虞云国重磅新作！）</a></p>
                        <p class="author"><span class="author_t"></span>虞云国  著</p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span>
                            <span class="num">34</span><span class="tail">.00</span></span>
                            <span class="price_r"><span class="sign">&yen;</span>
                                <span class="num">68</span><span class="tail">.00</span></span></p>
                        <div class="icon_pop"></div>
                    </li>
                    <li class="line5 "   nname="book-65152-9164_2-470621_5"  ddt-pit="5" dd_name="5">
                        <a  title="一禅小和尚：你总说没事，但我知道你偷偷哭过很多次(当当专享签章)（和8000万粉丝一起感受一禅小和尚暖到骨子里的治愈力！）"  class="img" href=""  target="_blank">
                            <img src='http://img3m8.ddimg.cn/17/30/27915938-1_l_12.jpg' alt='一禅小和尚：你总说没事，但我知道你偷偷哭过很多次(当当专享签章)（和8000万粉丝一起感受一禅小和尚暖到骨子里的治愈力！）' /></a>
                        <p class="name" ddt-src="27915938">
                            <a  title="一禅小和尚：你总说没事，但我知道你偷偷哭过很多次(当当专享签章)（和8000万粉丝一起感受一禅小和尚暖到骨子里的治愈力！）" href=""  target="_blank">一禅小和尚：你总说没事，但我知道你偷偷哭过很多次(当当专享签章)（</a></p>
                        <p class="author"><span class="author_t"></span>一禅小和尚</p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span><span class="num">39</span>
                            <span class="tail">.60</span></span>
                            <span class="price_r"><span class="sign">&yen;</span>
                                <span class="num">52</span><span class="tail">.80</span></span></p>
                        <div class="icon_pop"></div>
                    </li>
                    <li class="line6 "   nname="book-65152-9164_2-470621_6"  ddt-pit="6" dd_name="6">
                        <a  title="动物探险家（套装共2册）"  class="img" href=""  target="_blank">
                            <img src='http://img3m4.ddimg.cn/88/35/27892744-1_l_3.jpg' alt='动物探险家（套装共2册）' /></a><p class="name" ddt-src="27892744">
                        <a  title="动物探险家（套装共2册）" href=""  target="_blank">动物探险家（套装共2册）</a></p>
                        <p class="author"><span class="author_t"></span>(荷) 希尔特·杨·罗伯斯  著 ; (荷) 温迪·潘德斯  绘 ; 姜云舒  译</p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span>
                            <span class="num">85</span><span class="tail">.60</span></span>
                            <span class="price_r"><span class="sign">&yen;</span>
                                <span class="num">136</span><span class="tail">.00</span></span></p>
                        <div class="icon_pop"></div>
                    </li>
                    <li class="line7 "   nname="book-65152-9164_2-470621_7"  ddt-pit="7" dd_name="7">
                        <a  title="成语故事（绘本版，全40册）"  class="img" href=""  target="_blank">
                            <img src='http://img3m9.ddimg.cn/35/19/27914669-1_l_3.jpg' alt='成语故事（绘本版，全40册）' /></a><p class="name" ddt-src="27914669">
                        <a  title="成语故事（绘本版，全40册）" href=""  target="_blank">成语故事（绘本版，全40册）</a></p>
                        <p class="author"><span class="author_t"></span>中国教育科学研究院学前教育研究中心 编；武建华、王祖民、高晴、黄缨等/绘</p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span>
                            <span class="num">379</span><span class="tail">.20</span></span>
                            <span class="price_r"><span class="sign">&yen;</span>
                                <span class="num">480</span><span class="tail">.00</span></span></p>
                        <div class="icon_pop"></div>
                    </li>
                    <li class="line8 "   nname="book-65152-9164_2-470621_8"  ddt-pit="8" dd_name="8">
                        <a  title="顾客心理战：读懂顾客心理，实现快速成交"  class="img" href=""  target="_blank">
                            <img src='http://img3m4.ddimg.cn/17/22/1901149784-1_l_1.jpg' alt='顾客心理战：读懂顾客心理，实现快速成交' /></a><p class="name" ddt-src="1901149784">
                        <a  title="顾客心理战：读懂顾客心理，实现快速成交" href=""  target="_blank">顾客心理战：读懂顾客心理，实现快速成交</a></p>
                        <p class="author"><span class="author_t"></span>（英）菲利普·格雷夫斯</p>
                        <p class="price"><span class="rob">
                            <span class="sign">&yen;</span><span class="num">29</span><span class="tail">.50</span></span></p>
                        <div class="icon_pop"></div>
                    </li>
                </ul>

            </li><li type="rollitem" dd_name="第3帧">
                <ul class="product_ul " id="component_403754__5298_5296__5296"   ddt-area="5296" dd_name="商品">
                    <li class="line1 "   nname="book-65152-9164_2-470622_1"  ddt-pit="1" dd_name="1">
                        <a  title="快乐读书吧二年级上全套小鲤鱼跳龙门二年级注音版5册一只想飞的猫孤独的小螃蟹小狗的小房子小学生二年级课外书必读老师推荐"  class="img" href=""  target="_blank">
                            <img src='http://img3m3.ddimg.cn/79/4/27900853-1_l_9.jpg' alt='快乐读书吧二年级上全套小鲤鱼跳龙门二年级注音版5册一只想飞的猫孤独的小螃蟹小狗的小房子小学生二年级课外书必读老师推荐' /></a>
                        <p class="name" ddt-src="27900853">
                            <a  title="快乐读书吧二年级上全套小鲤鱼跳龙门二年级注音版5册一只想飞的猫孤独的小螃蟹小狗的小房子小学生二年级课外书必读老师推荐" href=""  target="_blank">快乐读书吧二年级上全套小鲤鱼跳龙门二年级注音版5册一只想飞的猫孤</a></p>
                        <p class="author"><span class="author_t"></span>冰波 陈伯吹 严文井 孙幼军 金近</p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span>
                            <span class="num">35</span><span class="tail">.40</span></span>
                            <span class="price_r"><span class="sign">&yen;</span>
                                <span class="num">60</span><span class="tail">.00</span></span></p>
                        <div class="icon_pop"></div>
                    </li>
                    <li class="line2 "   nname="book-65152-9164_2-470622_2"  ddt-pit="2" dd_name="2">
                        <a  title="旧日的静定"  class="img" href=""  target="_blank">
                            <img src='http://img3m4.ddimg.cn/48/3/27924384-1_l_3.jpg' alt='旧日的静定' /></a><p class="name" ddt-src="27924384">
                        <a  title="旧日的静定" href=""  target="_blank">旧日的静定</a></p><p class="author">
                        <span class="author_t"></span>张怡微</p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span>
                            <span class="num">59</span><span class="tail">.20</span></span>
                            <span class="price_r"><span class="sign">&yen;</span><span class="num">68</span>
                                <span class="tail">.00</span></span></p>
                        <div class="icon_pop"></div>
                    </li>
                    <li class="line3 "   nname="book-65152-9164_2-470622_3"  ddt-pit="3" dd_name="3">
                        <a  title="抗战外援：1937-1945年的外国援助与中日货币战（中国抗战时期货币金融的全景记录）"  class="img" href=""  target="_blank">
                            <img src='http://img3m5.ddimg.cn/9/35/27912465-1_l_13.jpg' alt='抗战外援：1937-1945年的外国援助与中日货币战（中国抗战时期货币金融的全景记录）' /></a>
                        <p class="name" ddt-src="27912465"><a  title="抗战外援：1937-1945年的外国援助与中日货币战（中国抗战时期货币金融的全景记录）" href=""  target="_blank">抗战外援：1937-1945年的外国援助与中日货币战（中国抗战时期货币金</a></p>
                        <p class="author"><span class="author_t"></span>［美］阿瑟·N.杨格 著   ， 李雯雯  译     于杰  校译</p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span>
                            <span class="num">44</span><span class="tail">.00</span></span>
                            <span class="price_r"><span class="sign">&yen;</span>
                                <span class="num">88</span><span class="tail">.00</span></span></p>
                        <div class="icon_pop"></div>
                    </li>
                    <li class="line4 "   nname="book-65152-9164_2-470622_4"  ddt-pit="4" dd_name="4">
                        <a  title="长安骊歌（十子夺嫡、诡谲宫廷，盛世长安悬疑探案  大唐皇族爱恨情仇）"  class="img" href=""  target="_blank">
                            <img src='http://img3m3.ddimg.cn/87/3/27916503-1_l_2.jpg' alt='长安骊歌（十子夺嫡、诡谲宫廷，盛世长安悬疑探案  大唐皇族爱恨情仇）' /></a>
                        <p class="name" ddt-src="27916503"><a  title="长安骊歌（十子夺嫡、诡谲宫廷，盛世长安悬疑探案  大唐皇族爱恨情仇）" href=""  target="_blank">长安骊歌（十子夺嫡、诡谲宫廷，盛世长安悬疑探案&nbsp;&nbsp;大唐皇族爱恨情仇</a></p>
                        <p class="author"><span class="author_t"></span>郁馥</p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span>
                            <span class="num">89</span><span class="tail">.10</span></span>
                            <span class="price_r"><span class="sign">&yen;</span>
                                <span class="num">108</span><span class="tail">.00</span>
                            </span></p><div class="icon_pop"></div>
                    </li>
                    <li class="line5 "   nname="book-65152-9164_2-470622_5"  ddt-pit="5" dd_name="5">
                        <a  title="西游记壁画与玄奘取经图像"  class="img" href=""  target="_blank">
                            <img src='http://img3m3.ddimg.cn/37/25/27908533-1_l_9.jpg' alt='西游记壁画与玄奘取经图像' /></a>
                        <p class="name" ddt-src="27908533">
                            <a  title="西游记壁画与玄奘取经图像" href=""  target="_blank">西游记壁画与玄奘取经图像</a></p>
                        <p class="author"><span class="author_t"></span>魏文斌 张利明</p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span>
                            <span class="num">149</span><span class="tail">.40</span></span>
                            <span class="price_r"><span class="sign">&yen;</span><span class="num">168</span>
                                <span class="tail">.00</span></span></p>
                        <div class="icon_pop"></div>
                    </li>
                    <li class="line6 "   nname="book-65152-9164_2-470622_6"  ddt-pit="6" dd_name="6">
                        <a  title="汉声数学图画书（全41册+《妈妈手册》）"  class="img" href=""  target="_blank"><img src='http://img3m3.ddimg.cn/63/16/27909153-1_l_6.jpg' alt='汉声数学图画书（全41册+《妈妈手册》）' /></a>
                        <p class="name" ddt-src="27909153"><a  title="汉声数学图画书（全41册+《妈妈手册》）" href=""  target="_blank">汉声数学图画书（全41册+《妈妈手册》）</a></p>
                        <p class="author"><span class="author_t"></span>[美]明德尔·西托默，哈利·西托默，富兰克林·布朗利</p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span>
                            <span class="num">971</span><span class="tail">.70</span></span>
                            <span class="price_r"><span class="sign">&yen;</span>
                                <span class="num">1230</span><span class="tail">.0</span></span></p>
                        <div class="icon_pop"></div>
                    </li>
                    <li class="line7 "   nname="book-65152-9164_2-470622_7"  ddt-pit="7" dd_name="7">
                        <a  title="小宽，别放弃：全4册（平装盒子）"  class="img" href=""  target="_blank"><img src='http://img3m7.ddimg.cn/23/0/27923567-1_l_3.jpg' alt='小宽，别放弃：全4册（平装盒子）' /></a>
                        <p class="name" ddt-src="27923567"><a  title="小宽，别放弃：全4册（平装盒子）" href=""  target="_blank">小宽，别放弃：全4册（平装盒子）</a></p>
                        <p class="author"><span class="author_t"></span>[日]信实 著/绘；王维幸 译；心喜阅童书 出品</p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span>
                            <span class="num">101</span><span class="tail">.10</span></span>
                            <span class="price_r"><span class="sign">&yen;</span>
                                <span class="num">128</span><span class="tail">.00</span></span></p>
                        <div class="icon_pop"></div>            </li>
                    <li class="line8 "   nname="book-65152-9164_2-470622_8"  ddt-pit="8" dd_name="8">
                        <a  title="高效写作的秘密"  class="img" href=""  target="_blank">
                            <img src='http://img3m4.ddimg.cn/93/8/1901152434-1_l_1.jpg' alt='高效写作的秘密' /></a>
                        <p class="name" ddt-src="1901152434"><a  title="高效写作的秘密" href=""  target="_blank">高效写作的秘密</a></p>
                        <p class="author"><span class="author_t"></span>杰拉尔德·格拉夫,凯茜·比肯施泰因</p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span>
                            <span class="num">23</span><span class="tail">.99</span></span></p>
                        <div class="icon_pop"></div>
                    </li>
                </ul>

            </li><li type="rollitem" dd_name="第4帧">
                <ul class="product_ul " id="component_403754__5298_5297__5297"   ddt-area="5297" dd_name="商品">
                    <li class="line1 "   nname="book-65152-9164_2-470623_1"  ddt-pit="1" dd_name="1">
                        <a  title="迈向财富自由之路"  class="img" href=""  target="_blank">
                            <img src='http://img3m9.ddimg.cn/42/36/27921309-1_l_3.jpg' alt='迈向财富自由之路' /></a>
                        <p class="name" ddt-src="27921309"><a  title="迈向财富自由之路" href=""  target="_blank">迈向财富自由之路</a></p>
                        <p class="author"><span class="author_t"></span>( 新加坡 ) 莫顿·史川奇著;张雨洁译</p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span>
                            <span class="num">46</span><span class="tail">.90</span></span>
                            <span class="price_r"><span class="sign">&yen;</span>
                                <span class="num">49</span><span class="tail">.80</span></span></p>
                        <div class="icon_pop"></div>
                    </li>
                    <li class="line2 "   nname="book-65152-9164_2-470623_2"  ddt-pit="2" dd_name="2">
                        <a  title="中国文化课（余秋雨2019全新重磅作品！）"  class="img" href=""  target="_blank">
                            <img src='http://img3m9.ddimg.cn/84/6/27914619-1_l_5.jpg' alt='中国文化课（余秋雨2019全新重磅作品！）' /></a>
                        <p class="name" ddt-src="27914619">
                            <a  title="中国文化课（余秋雨2019全新重磅作品！）" href=""  target="_blank">中国文化课（余秋雨2019全新重磅作品！）</a></p><p class="author"><span class="author_t"></span>余秋雨</p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span><span class="num">64</span>
                            <span class="tail">.00</span></span><span class="price_r">
                            <span class="sign">&yen;</span><span class="num">128</span>
                            <span class="tail">.00</span></span></p><div class="icon_pop"></div>
                    </li>
                    <li class="line3 "   nname="book-65152-9164_2-470623_3"  ddt-pit="3" dd_name="3">
                        <a  title="成都下水道 让我们灵魂激荡身体欢愉：一个男科医生的手记"  class="img" href=""  target="_blank"><img src='http://img3m3.ddimg.cn/5/23/27895433-1_l_3.jpg' alt='成都下水道 让我们灵魂激荡身体欢愉：一个男科医生的手记' /></a>
                        <p class="name" ddt-src="27895433"><a  title="成都下水道 让我们灵魂激荡身体欢愉：一个男科医生的手记" href=""  target="_blank">成都下水道&nbsp;让我们灵魂激荡身体欢愉：一个男科医生的手记</a></p>
                        <p class="author"><span class="author_t"></span>任黎明（@成都下水道） 著，凤凰联动 出品</p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span><span class="num">40</span>
                            <span class="tail">.60</span></span><span class="price_r"><span class="sign">&yen;</span>
                            <span class="num">48</span><span class="tail">.00</span></span><span class="ebookprice_n">
                            <span class="ebookprice_title">电子书</span>
                            <span class="sign">&yen;</span><span class="num">19</span>
                            <span class="tail">.90</span></span></p><div class="icon_pop"></div>
                    </li>
                    <li class="line4 "   nname="book-65152-9164_2-470623_4"  ddt-pit="4" dd_name="4">
                        <a  title="春风十里不如你"  class="img" href=""  target="_blank"><img src='http://img3m8.ddimg.cn/75/32/27928668-1_l_7.jpg' alt='春风十里不如你' /></a><p class="name" ddt-src="27928668">
                        <a  title="春风十里不如你" href=""  target="_blank">春风十里不如你</a></p>
                        <p class="author"><span class="author_t"></span>冯唐</p><p class="price">
                        <span class="rob"><span class="sign">&yen;</span><span class="num">50</span><span class="tail">.70</span></span><span class="price_r"><span class="sign">&yen;</span><span class="num">56</span>
                        <span class="tail">.00</span></span><span class="ebookprice_n">
                        <span class="ebookprice_title">电子书</span>
                        <span class="sign">&yen;</span><span class="num">27</span>
                        <span class="tail">.99</span></span></p>
                        <div class="icon_pop"></div>
                    </li>
                    <li class="line5 "   nname="book-65152-9164_2-470623_5"  ddt-pit="5" dd_name="5">
                        <a  title="给孩子的图解百科全书（当当独家，12册礼盒套装）"  class="img" href=""  target="_blank"><img src='http://img3m6.ddimg.cn/85/23/27912046-1_l_6.jpg' alt='给孩子的图解百科全书（当当独家，12册礼盒套装）' /></a>
                        <p class="name" ddt-src="27912046"><a  title="给孩子的图解百科全书（当当独家，12册礼盒套装）" href="http://product.dangdang.com/27912046.html"  target="_blank">给孩子的图解百科全书（当当独家，12册礼盒套装）</a></p>
                        <p class="author"><span class="author_t"></span>［意大利］克里斯蒂诺·贝托卢西 等著，［意大利］亚历山德罗·巴托罗兹/ 洛伦佐·塞奇/ 吉安·保罗·法莱斯基尼 等绘图，孙汇琪 等译</p>
                        <p class="price"><span class="rob">
                            <span class="sign">&yen;</span><span class="num">289</span>
                            <span class="tail">.80</span></span><span class="price_r">
                            <span class="sign">&yen;</span><span class="num">420</span>
                            <span class="tail">.00</span></span></p><div class="icon_pop"></div>
                    </li>
                    <li class="line6 "   nname="book-65152-9164_2-470623_6"  ddt-pit="6" dd_name="6">
                        <a  title="小手扭扭指偶书 亲子篇（全4册）"  class="img" href=""  target="_blank"><img src='http://img3m2.ddimg.cn/44/29/27874682-1_l_7.jpg' alt='小手扭扭指偶书 亲子篇（全4册）' /></a>
                        <p class="name" ddt-src="27874682"><a  title="小手扭扭指偶书 亲子篇（全4册）" href=""  target="_blank">小手扭扭指偶书&nbsp;亲子篇（全4册）</a></p>
                        <p class="author"><span class="author_t"></span>萨曼莎【美】</p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span>
                            <span class="num">135</span><span class="tail">.30</span></span>
                            <span class="price_r"><span class="sign">&yen;</span>
                                <span class="num">159</span><span class="tail">.20</span></span></p>
                        <div class="icon_pop"></div>
                    </li>
                    <li class="line7 "   nname="book-65152-9164_2-470623_7"  ddt-pit="7" dd_name="7">
                        <a  title="10个我喜欢你的理由：全6册"  class="img" href=""  target="_blank">
                            <img src='http://img3m9.ddimg.cn/14/10/27914549-1_l_5.jpg' alt='10个我喜欢你的理由：全6册' /></a>
                        <p class="name" ddt-src="27914549"><a  title="10个我喜欢你的理由：全6册" href=""  target="_blank">10个我喜欢你的理由：全6册</a></p>
                        <p class="author"><span class="author_t"></span>凯瑟琳.巴尔（Catherine Barr），海豚传媒出品</p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span>
                            <span class="num">141</span><span class="tail">.30</span></span>
                            <span class="price_r"><span class="sign">&yen;</span>
                                <span class="num">178</span><span class="tail">.80</span></span></p>
                        <div class="icon_pop"></div>
                    </li>
                    <li class="line8 "   nname="book-65152-9164_2-470623_8"  ddt-pit="8" dd_name="8">
                        <a  title="春风十里不如你"  class="img" href=""  target="_blank"><img src='http://img3m0.ddimg.cn/47/23/1901152190-1_l_1.jpg' alt='春风十里不如你' /></a>
                        <p class="name" ddt-src="1901152190">
                            <a  title="春风十里不如你" href=""  target="_blank">春风十里不如你</a></p><p class="author">
                        <span class="author_t"></span>冯唐</p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span>
                            <span class="num">27</span><span class="tail">.99</span></span></p>
                        <div class="icon_pop"></div>
                    </li>
                </ul>

            </li>                </ul>
        </div>
    </div>
    </div>
            <div class="spacer c_spacer"></div>
        </div><div class="vspacer"></div>
        <div  class="col storey_one_right" name=9165>
            <div  class="con " name=9166>
                <div  class="book_new_state "  name="图书馆首：最新动态_1" dd_name="最新动态"  ddt-area="403755" ddt-floor="403755" ddt-expose="on" >
                    <div id='component_403755'></div>
                    <div  class="book_right_title "  name="m403755_pid5354_t9140"   >
                        <h2 class='' ddt-pit='1'>最新动态</h2></div>
                    <ul class="" ddt-area="5355" dd_name="文本列表">
    <li    nname="book-65152-9166_1-474429_1" class="line line1 on"  ddt-pit="1" dd_name="1">
        <a  href="" target="_blank" class="" title="人文社科、经管励志，5折封顶" ddt-src="">人文社科、经管励志，5折封顶</a></li>
    <li    nname="book-65152-9166_1-474429_2" class="line line2 "  ddt-pit="2" dd_name="2">
        <a  href="" target="_blank" class="" title="小说专场，每满100减50" ddt-src="
        ">小说专场，每满100减50</a></li>
    <li    nname="book-65152-9166_1-474429_3" class="line line3 "  ddt-pit="3" dd_name="3">
        <a  href="" target="_blank" class="" title="范志红健康日历2020，5折预售" ddt-src="">范志红健康日历2020，5折预售</a></li>
</ul>
</div>
                <div class="spacer c_spacer"></div>
            </div>
            <div  class="con " name=9167>
                <div  class="book_presell "  name="图书馆首：新书预售_1" dd_name="好书推荐"  ddt-area="403756" ddt-floor="403756" ddt-expose="on" >
                    <div id='component_403756'></div>
                    <div  class="book_right_title "  name="m403756_pid5301_t9128"   >
                        <h2 class='' ddt-pit='1'>新书预售</h2></div>
                    <div class="roll_aa " id="mapid_403756_parent_5304_part_" marquee="true"    name=m403756_pid5304_p           js="true" action="newclickroll" delay="500" prevnoneclass="btn_prev_none" nextnoneclass="btn_next_none" page="0"  speed="0" display_count="" is_display_tab="1" noend="0">
    <div class="btn_brand_prev" type="rollpre"></div>
    <div class="btn_brand_next" type="rollnext"></div>
    <ul class="mix_marquee_tab">
    </ul>
    <div class="over">

        <ul class="list_aa " id="component_403756__5304_5303__5303"   ddt-area="5303" dd_name="商品">
            <li class="line1 "   nname="book-65152-9167_1-472140_1"  ddt-pit="1" dd_name="1">
                <a  title="范志红健康日历2020（限量签名本随机发）"  class="img" href=""  target="_blank">
                    <img src='http://img3m3.ddimg.cn/56/27/27940133-1_f_6.jpg' alt='范志红健康日历2020（限量签名本随机发）' /></a>
                <p class="star"><span class="title"></span>
                    <span class="level"><span style="width: 0%;"></span></span></p>
                <p class="link"><span>  (</span>
                    <a  target="_blank" href="">0</a>)</p><p class="name" ddt-src="27940133">
                <a  title="范志红健康日历2020（限量签名本随机发）" href=""  target="_blank">范志红健康日历2020（限量签名本随机发）</a></p>
                <p class="price"><span class="rob"><span class="sign">&yen;</span>
                    <span class="num">64</span><span class="tail">.00</span></span>
                    <span class="price_r"><span class="sign">&yen;</span><span class="num">128</span>
                        <span class="tail">.00</span></span></p>
                <div class="icon_pop"></div>
            </li>
            <li class="line2 "   nname="book-65152-9167_1-472140_2"  ddt-pit="2" dd_name="2">
                <a  title="致江东父老"  class="img" href=""  target="_blank">
                    <img src='http://img3m4.ddimg.cn/77/26/27926294-1_f_3.jpg' alt='致江东父老' /></a>
                <p class="star"><span class="title"></span><span class="level">
                    <span style="width: 0%;"></span></span></p><p class="link"><span>  (</span>
                <a  target="_blank" href="">0</a>)</p><p class="name" ddt-src="27926294">
                <a  title="致江东父老" href=""  target="_blank">致江东父老<span class="hot">当当专享限量签名版！鲁迅文学</span></a></p>
                <p class="price"><span class="rob"><span class="sign">&yen;</span>
                    <span class="num">51</span><span class="tail">.00</span></span>
                    <span class="price_r"><span class="sign">&yen;</span>
                        <span class="num">68</span><span class="tail">.00</span></span></p>
                <div class="icon_pop"></div>
            </li>
            <li class="line3 "   nname="book-65152-9167_1-472140_3"  ddt-pit="3" dd_name="3">
                <a  title="高能要事：为什么成功的路上不拥挤（专享赠送99元课程  数量有限赠完为止）"  class="img" href=""  target="_blank">
                    <img src='http://img3m0.ddimg.cn/53/5/27938150-1_f_11.jpg' alt='高能要事：为什么成功的路上不拥挤（专享赠送99元课程  数量有限赠完为止）' /></a>
                <p class="star"><span class="title"></span>
                    <span class="level"><span style="width: 0%;"></span></span></p>
                <p class="link"><span>  (</span><a  target="_blank" href="">143</a>)</p><p class="name" ddt-src="27938150">
                <a  title="高能要事：为什么成功的路上不拥挤（专享赠送99元课程  数量有限赠完为止）" href=""  target="_blank">高能要事：为什么成功的路上不拥挤（专享赠</a></p>
                <p class="price"><span class="rob"><span class="sign">&yen;</span>
                    <span class="num">37</span><span class="tail">.35</span></span>
                    <span class="price_r"><span class="sign">&yen;</span><span class="num">49</span>
                        <span class="tail">.80</span></span></p>
                <div class="icon_pop"></div>
            </li>
            <li class="line4 "   nname="book-65152-9167_1-472140_4"  ddt-pit="4" dd_name="4">
                <a  title="今天也想表白你：小绿和小蓝3 （当当尊享作者亲笔签名本+并有概率获得“ 欧皇”特签+随书附赠  典藏表白卡）"  class="img" href=""  target="_blank">
                    <img src='http://img3m3.ddimg.cn/86/20/27940163-1_f_12.jpg' alt='今天也想表白你：小绿和小蓝3 （当当尊享作者亲笔签名本+并有概率获得“ 欧皇”特签+随书附赠  典藏表白卡）' /></a>
                <p class="star"><span class="title"></span>
                    <span class="level"><span style="width: 0%;"></span></span></p>
                <p class="link"><span>  (</span>
                    <a  target="_blank" href="">0</a>)</p><p class="name" ddt-src="27940163">
                <a  title="今天也想表白你：小绿和小蓝3 （当当尊享作者亲笔签名本+并有概率获得“ 欧皇”特签+随书附赠  典藏表白卡）" href=""  target="_blank">今天也想表白你：小绿和小蓝3&nbsp;（当当尊享作</a></p>
                <p class="price"><span class="rob"><span class="sign">&yen;</span>
                    <span class="num">45</span><span class="tail">.40</span></span>
                    <span class="price_r"><span class="sign">&yen;</span><span class="num">69</span>
                        <span class="tail">.80</span></span></p>
                <div class="icon_pop"></div>
            </li>
            <li class="line5 "   nname="book-65152-9167_1-472140_5"  ddt-pit="5" dd_name="5">
                <a  title="我的表达能力顶呱呱：3~6岁表达能力提升绘本系列"  class="img" href=""  target="_blank">
                    <img src='http://img3m6.ddimg.cn/62/21/27925586-1_f_3.jpg' alt='我的表达能力顶呱呱：3~6岁表达能力提升绘本系列' /></a>
                <p class="star"><span class="title"></span>
                    <span class="level"><span style="width: 0%;"></span></span></p>
                <p class="link"><span>  (</span>
                    <a  target="_blank" href="">0</a>)</p>
                <p class="name" ddt-src="27925586"><a  title="我的表达能力顶呱呱：3~6岁表达能力提升绘本系列" href=""  target="_blank">我的表达能力顶呱呱：3~6岁表达能力提升绘</a></p>
                <p class="price"><span class="rob"><span class="sign">&yen;</span><span class="num">212</span>
                    <span class="tail">.10</span></span>
                    <span class="price_r"><span class="sign">&yen;</span>
                        <span class="num">249</span><span class="tail">.50</span></span></p>
                <div class="icon_pop"></div>
            </li>
        </ul>

    </div>
</div>
    <a       nname="book-65152-9167_1-472141_1" href="" target="_blank" title="更多"  class="book_presell_more" ddt-pit="1" ddt-src="" dd_name="文本_1">
        更多                        </a>
</div>
                <div class="spacer c_spacer"></div>
            </div>
            <div  class="con " name=9168>
                <div  class="book_new "  name="图书馆首：新书热卖榜_1" dd_name="新书热卖榜"  ddt-area="403757" ddt-floor="403757" ddt-expose="on" >
                    <div id='component_403757'></div>
                    <div  class="con title"     >
                        <a     nname="book-65152-9168_1-473546_1" href="" target="_blank" title="新书热卖榜"  class="hot_link" ddt-pit="1" ddt-src="" dd_name="文本_1">
    书籍热卖榜                        </a>
</div>
                    <div  class="con list"     >
                        <div  class="tab_box_aa " id="component_map_id_403757_part_id_5277"   name=m403757_pid5290_p5277     js="true" itemclass="" action="hover" delay="0" speed='0'  rand='0' area='1' barclass='on'  updown='1' level="2">
    <div class="head  head"    ddt-area="5277" dd_name="tab头">
        <ul class="tab_aa">
            <li class=" tabh_0  on first " type="bar"><span>总榜</span></li>
            <li class=" tabh_1 " type="bar" ><span>童书</span></li>
            <li class=" tabh_2 " type="bar" ><span>小说</span></li>
            <li class=" tabh_3 " type="bar" ><span>文学</span></li>
            <li class=" tabh_4 " type="bar" ><span>心理学</span></li>
        </ul>


    </div>
    <div class="tab_content_aa tab_content_aa ">
        <div class="content tab_1" type="item" dd_name="总榜">
            <div  class="book_top "  name="m403757_pid5290_5281_t9123"   >
                <style type="text/css">
                .hidden{display:none;}
            </style>
                <ul class="list_ab" id="component_403757__5290_5281_5279__5279" accordion="true" js="true" speed="0" area="0" rand="0" delay="0" action="hover" itemclass="" barclass="hidden" level="2" ddt-area="5279" dd_name="自动手风琴">
                    <li class="line1 bar hidden"    nname="book-65152-9168_1-473484_" type="bar"  ddt-pit="1" dd_name="1">
                        <span class="num num1">1</span>
                        <p class="name" ddt-src="27921399">
                            <a  title="想画什么都可以！超萌生活手绘3000例（萌趣简笔画）" href="">想画什么都可以！超萌生活手绘</a></p>            </li>
                    <li class="line1 item"    nname="book-65152-9168_1-473484_" class="on" type="item"  ddt-pit="1" dd_name="1">
                        <span class="num num1">1</span>
                        <a class="img" href=""  target="_blank" >
                            <img src='http://img3m9.ddimg.cn/33/15/27921399-1_l_3.jpg' alt='想画什么都可以！超萌生活手绘3000例（萌趣简笔画）' /></a><p class="name" ddt-src="27921399">
                        <a  title="想画什么都可以！超萌生活手绘3000例（萌趣简笔画）" href="" target="_blank">想画什么都可以！超萌生活手绘3000例（萌趣</a></p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span>
                            <span class="num">53</span><span class="tail">.20</span></span>
                            <span class="price_r"><span class="sign">&yen;</span><span class="num">59</span>
                                <span class="tail">.80</span></span></p><p class="link "><span></span>
                        <a  target="_blank" href="">559</a>条评论</p><div class="icon_pop">
                        <span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                    <li class="line2 bar"    nname="book-65152-9168_1-473484_" type="bar"  ddt-pit="2" dd_name="2">
                        <span class="num num2">2</span>
                        <p class="name" ddt-src="27911800"><a  title="你想活出怎样的人生（宫崎骏从10岁读到70岁的小说，同名电影制作中，登顶日本2018图书总榜）" href="" target="_blank">你想活出怎样的人生（宫崎骏从</a></p>            </li>
                    <li class="line2 item"    nname="book-65152-9168_1-473484_" class="on" type="item" style='display:none;' ddt-pit="2" dd_name="2">
                        <span class="num num2">2</span>
                        <a class="img" href=""  target="_blank" ><img src='http://img3m0.ddimg.cn/37/36/27911800-1_l_3.jpg' alt='你想活出怎样的人生（宫崎骏从10岁读到70岁的小说，同名电影制作中，登顶日本2018图书总榜）' /></a>
                        <p class="name" ddt-src="27911800"><a  title="你想活出怎样的人生（宫崎骏从10岁读到70岁的小说，同名电影制作中，登顶日本2018图书总榜）" href="" target="_blank">你想活出怎样的人生（宫崎骏从10岁读到70岁</a></p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span>
                            <span class="num">46</span><span class="tail">.90</span></span>
                            <span class="price_r"><span class="sign">&yen;</span><span class="num">49</span>
                                <span class="tail">.50</span></span></p><p class="link "><span></span>
                        <a  target="_blank" href="">1791</a>条评论</p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                    </li>
                    <li class="line3 bar"    nname="book-65152-9168_1-473484_" type="bar"  ddt-pit="3" dd_name="3">
                        <span class="num num3">3</span>
                        <p class="name" ddt-src="27918617">
                            <a  title="140亿年宇宙演化全史:当当独家首发" href="" target="_blank">140亿年宇宙演化全史:当当独家</a></p>            </li>
                    <li class="line3 item"    nname="book-65152-9168_1-473484_" class="on" type="item" style='display:none;' ddt-pit="3" dd_name="3">
                        <span class="num num3">3</span>
                        <a class="img" href=""  target="_blank" ><img src='http://img3m7.ddimg.cn/23/8/27918617-1_l_6.jpg' alt='140亿年宇宙演化全史:当当独家首发' /></a>
                        <p class="name" ddt-src="27918617"><a  title="140亿年宇宙演化全史:当当独家首发" href="" target="_blank">140亿年宇宙演化全史:当当独家首发</a></p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span>
                            <span class="num">46</span><span class="tail">.90</span></span>
                            <span class="price_r"><span class="sign">&yen;</span><span class="num">68</span>
                                <span class="tail">.00</span></span></p>
                        <p class="link "><span></span><a  target="_blank" href="">547</a>条评论</p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                    </li>
                    <li class="line4 bar"    nname="book-65152-9168_1-473484_" type="bar"  ddt-pit="4" dd_name="4">
                        <span class="num num4">4</span>
                        <p class="name" ddt-src="27917700">
                            <a  title="文小叔有医说医:中医药文化传承心录" href="" target="_blank">文小叔有医说医:中医药文化传</a></p>            </li>
                    <li class="line4 item"    nname="book-65152-9168_1-473484_" class="on" type="item" style='display:none;' ddt-pit="4" dd_name="4">
                        <span class="num num4">4</span>
                        <a class="img" href=""  target="_blank" ><img src='http://img3m0.ddimg.cn/96/16/27917700-1_l_2.jpg' alt='文小叔有医说医:中医药文化传承心录' /></a>
                        <p class="name" ddt-src="27917700"><a  title="文小叔有医说医:中医药文化传承心录" href="" target="_blank">文小叔有医说医:中医药文化传承心录</a></p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span><span class="num">45</span>
                            <span class="tail">.00</span></span><span class="price_r">
                            <span class="sign">&yen;</span><span class="num">45</span>
                            <span class="tail">.00</span></span></p><p class="link "><span></span>
                        <a  target="_blank" href="">490</a>条评论</p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                    </li>
                    <li class="line5 bar"    nname="book-65152-9168_1-473484_" type="bar"  ddt-pit="5" dd_name="5">
                        <span class="num num5">5</span>
                        <p class="name" ddt-src="27917710"><a  title="深度说服:用共情力和逻辑力轻松说服别人" href="" target="_blank">深度说服:用共情力和逻辑力轻</a></p>            </li>
                    <li class="line5 item"    nname="book-65152-9168_1-473484_" class="on" type="item" style='display:none;' ddt-pit="5" dd_name="5">
                        <span class="num num5">5</span>
                        <a class="img" href=""  target="_blank" ><img src='http://img3m0.ddimg.cn/7/26/27917710-1_l_2.jpg' alt='深度说服:用共情力和逻辑力轻松说服别人' /></a>
                        <p class="name" ddt-src="27917710"><a  title="深度说服:用共情力和逻辑力轻松说服别人" href="" target="_blank">深度说服:用共情力和逻辑力轻松说服别人</a></p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span>
                            <span class="num">37</span><span class="tail">.40</span></span>
                            <span class="price_r"><span class="sign">&yen;</span><span class="num">42</span>
                                <span class="tail">.00</span></span></p><p class="link "><span></span>
                        <a  target="_blank" href="">81</a>条评论</p><div class="icon_pop">
                        <span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                    </li>
                    <li class="line6 bar"    nname="book-65152-9168_1-473484_" type="bar"  ddt-pit="6" dd_name="6">
                        <span class="num num6">6</span>
                        <p class="name" ddt-src="27938458"><a  title="小家，越住越大3（签名本）" href="" target="_blank">小家，越住越大3（签名本）</a></p>            </li>
                    <li class="line6 item"    nname="book-65152-9168_1-473484_" class="on" type="item" style='display:none;' ddt-pit="6" dd_name="6">
                        <span class="num num6">6</span>
                        <a class="img" href=""  target="_blank" ><img src='http://img3m8.ddimg.cn/64/17/27938458-1_l_3.jpg' alt='小家，越住越大3（签名本）' /></a>
                        <p class="name" ddt-src="27938458"><a  title="小家，越住越大3（签名本）" href="" target="_blank">小家，越住越大3（签名本）</a></p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span>
                            <span class="num">48</span><span class="tail">.30</span></span>
                            <span class="price_r"><span class="sign">&yen;</span><span class="num">69</span>
                                <span class="tail">.00</span></span></p><p class="link "><span></span>
                        <a  target="_blank" href="">0</a>条评论</p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                    </li>
                    <li class="line7 bar"    nname="book-65152-9168_1-473484_" type="bar"  ddt-pit="7" dd_name="7">
                        <span class="num num7">7</span>
                        <p class="name" ddt-src="27910986"><a  title="温莎王朝：帝国巅峰与至暗时刻" href="" target="_blank">温莎王朝：帝国巅峰与至暗时刻</a></p>            </li>
                    <li class="line7 item"    nname="book-65152-9168_1-473484_" class="on" type="item" style='display:none;' ddt-pit="7" dd_name="7">
                        <span class="num num7">7</span>
                        <a class="img" href=""  target="_blank" ><img src='http://img3m6.ddimg.cn/15/36/27910986-1_l_6.jpg' alt='温莎王朝：帝国巅峰与至暗时刻' /></a>
                        <p class="name" ddt-src="27910986"><a  title="温莎王朝：帝国巅峰与至暗时刻" href="" target="_blank">温莎王朝：帝国巅峰与至暗时刻</a></p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span>
                            <span class="num">44</span><span class="tail">.00</span></span>
                            <span class="price_r"><span class="sign">&yen;</span><span class="num">88</span>
                                <span class="tail">.00</span></span></p>
                        <p class="link "><span></span><a  target="_blank" href="">371</a>条评论</p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                    </li>
                    <li class="line8 bar"    nname="book-65152-9168_1-473484_" type="bar"  ddt-pit="8" dd_name="8">
                        <span class="num num8">8</span>
                        <p class="name" ddt-src="27932957"><a  title="欢喜：冯唐2020金句日历（冯唐新书）" href="" target="_blank">欢喜：冯唐2020金句日历（冯唐</a></p>            </li>
                    <li class="line8 item"    nname="book-65152-9168_1-473484_" class="on" type="item" style='display:none;' ddt-pit="8" dd_name="8">
                        <span class="num num8">8</span>
                        <a class="img" href=""  target="_blank" ><img src='http://img3m7.ddimg.cn/8/29/27932957-1_l_3.jpg' alt='欢喜：冯唐2020金句日历（冯唐新书）' /></a>
                        <p class="name" ddt-src="27932957"><a  title="欢喜：冯唐2020金句日历（冯唐新书）" href="" target="_blank">欢喜：冯唐2020金句日历（冯唐新书）</a></p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span>
                            <span class="num">63</span><span class="tail">.36</span></span>
                            <span class="price_r"><span class="sign">&yen;</span><span class="num">88</span>
                                <span class="tail">.00</span></span></p>
                        <p class="link "><span></span><a  target="_blank" href="">2</a>条评论</p>
                        <div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                    </li>
                    <li class="line9 bar"    nname="book-65152-9168_1-473484_" type="bar"  ddt-pit="9" dd_name="9">
                        <span class="num num9">9</span>
                        <p class="name" ddt-src="27909224"><a  title="格局（新版）：思维决定出路，格局决定结局" href="" target="_blank">格局（新版）：思维决定出路，</a></p>            </li>
                    <li class="line9 item"    nname="book-65152-9168_1-473484_" class="on" type="item" style='display:none;' ddt-pit="9" dd_name="9">
                        <span class="num num9">9</span>
                        <a class="img" href="
                        "  target="_blank" ><img src='http://img3m4.ddimg.cn/35/13/27909224-1_l_3.jpg' alt='格局（新版）：思维决定出路，格局决定结局' /></a>
                        <p class="name" ddt-src="27909224"><a  title="格局（新版）：思维决定出路，格局决定结局" href="" target="_blank">格局（新版）：思维决定出路，格局决定结局</a></p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span><span class="num">18</span>
                            <span class="tail">.00</span></span><span class="price_r"><span class="sign">&yen;</span>
                            <span class="num">36</span><span class="tail">.00</span></span></p>
                        <p class="link "><span></span><a  target="_blank" href="">166509</a>条评论</p>
                        <div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/xsq.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/xsq.png',sizingMethod='noscale');" class="product_tags"></span></div>
                    </li>
                    <li class="line10 bar"    nname="book-65152-9168_1-473484_" type="bar"  ddt-pit="10" dd_name="10">
                        <span class="num num10">10</span>
                        <p class="name" ddt-src="27925557"><a  title="半小时漫画经济学：生活常识篇（漫画科普开创者二混子新作！全网粉丝700万！用特别搞笑的方式，讲清楚特别艰深的经济学原理。）" href="" target="_blank">半小时漫画经济学：生活常识篇</a></p>            </li>
                    <li class="line10 item"    nname="book-65152-9168_1-473484_" class="on" type="item" style='display:none;' ddt-pit="10" dd_name="10">
                        <span class="num num10">10</span>
                        <a class="img" href=""  target="_blank" ><img src='http://img3m7.ddimg.cn/33/29/27925557-1_l_3.jpg' alt='半小时漫画经济学：生活常识篇（漫画科普开创者二混子新作！全网粉丝700万！用特别搞笑的方式，讲清楚特别艰深的经济学原理。）' /></a>
                        <p class="name" ddt-src="27925557"><a  title="半小时漫画经济学：生活常识篇（漫画科普开创者二混子新作！全网粉丝700万！用特别搞笑的方式，讲清楚特别艰深的经济学原理。）" href="" target="_blank">半小时漫画经济学：生活常识篇（漫画科普开</a></p>
                        <p class="price"><span class="rob"><span class="sign">&yen;</span><span class="num">37</span>
                            <span class="tail">.43</span></span><span class="price_r"><span class="sign">&yen;</span>
                            <span class="num">49</span><span class="tail">.90</span></span></p><p class="link "><span>
                    </span><a  target="_blank" href="">529</a>条评论</p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                    </li>
                </ul>
                <a       nname="book-65152-9168_1-473490_1" href="" target="_blank" title="查看完整榜单>>"  class="more_top" ddt-pit="1" ddt-src="" dd_name="更多_1">
                    查看完整榜单>>                        </a>
            </div>                                    </div>
        <div class="content tab_2" type="item" dd_name="童书" style="display: none">
                                        <textarea style='display:none'><div  class="book_top "  name="m403757_pid5290_5283_t9123"   >    <style type="text/css">
                                            .hidden{display:none;}
                                        </style>
                                            <ul class="list_ab" id="component_403757__5290_5283_5279__5279" accordion="true" js="true" speed="0" area="0" rand="0" delay="0" action="hover" itemclass="" barclass="hidden" level="2" ddt-area="5279" dd_name="自动手风琴">
                                                <li class="line1 bar hidden"    nname="book-65152-9168_1-473498_" type="bar"  ddt-pit="1" dd_name="1">
                                                    <span class="num num1">1</span>
                                                    <p class="name" ddt-src="27903961"><a  title="迷人的逻辑思维游戏书（全3册）" href="" target="_blank">迷人的逻辑思维游戏书（全3册</a></p>            </li>
                                                <li class="line1 item"    nname="book-65152-9168_1-473498_" class="on" type="item"  ddt-pit="1" dd_name="1">
                                                    <span class="num num1">1</span>
                                                    <a class="img" href=""  target="_blank" ><img src='http://img3m1.ddimg.cn/19/4/27903961-1_l_5.jpg' alt='迷人的逻辑思维游戏书（全3册）' /></a>
                                                    <p class="name" ddt-src="27903961">
                                                        <a  title="迷人的逻辑思维游戏书（全3册）" href="" target="_blank">迷人的逻辑思维游戏书（全3册）</a></p>
                                                    <p class="price"><span class="rob"><span class="sign">&yen;</span><span class="num">86</span><span class="tail">.90</span></span>
                                                        <span class="price_r"><span class="sign">&yen;</span>
                                                            <span class="num">138</span><span class="tail">.00</span></span></p>
                                                    <p class="link "><span></span>
                                                        <a  target="_blank" href="">833</a>条评论</p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                                                </li>
                                                <li class="line2 bar"    nname="book-65152-9168_1-473498_" type="bar"  ddt-pit="2" dd_name="2">
                                                    <span class="num num2">2</span>
                                                    <p class="name" ddt-src="27917192"><a  title="小星星的大月饼（凯迪克奖得主绘本套装）" href="" target="_blank">小星星的大月饼（凯迪克奖得主</a></p>            </li>
                                                <li class="line2 item"    nname="book-65152-9168_1-473498_" class="on" type="item" style='display:none;' ddt-pit="2" dd_name="2">
                                                    <span class="num num2">2</span>
                                                    <a class="img" href=""  target="_blank" ><img src='http://img3m2.ddimg.cn/83/26/27917192-1_l_9.jpg' alt='小星星的大月饼（凯迪克奖得主绘本套装）' /></a>
                                                    <p class="name" ddt-src="27917192"><a  title="小星星的大月饼（凯迪克奖得主绘本套装）" href="" target="_blank">小星星的大月饼（凯迪克奖得主绘本套装）</a></p>
                                                    <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                                        <span class="num">78</span>
                                                        <span class="tail">.70</span></span><span class="price_r">
                                                        <span class="sign">&yen;</span><span class="num">99</span>
                                                        <span class="tail">.60</span></span></p><p class="link "><span></span>
                                                    <a  target="_blank" href="">211</a>条评论</p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                                                </li>
                                                <li class="line3 bar"    nname="book-65152-9168_1-473498_" type="bar"  ddt-pit="3" dd_name="3">
                                                    <span class="num num3">3</span>
                                                    <p class="name" ddt-src="27925655"><a  title="与时间赛跑的大熊" href="" target="_blank">与时间赛跑的大熊</a></p>            </li>
                                                <li class="line3 item"    nname="book-65152-9168_1-473498_" class="on" type="item" style='display:none;' ddt-pit="3" dd_name="3">
                                                    <span class="num num3">3</span>
                                                    <a class="img" href=""  target="_blank" ><img src='http://img3m5.ddimg.cn/32/16/27925655-1_l_9.jpg' alt='与时间赛跑的大熊' /></a>
                                                    <p class="name" ddt-src="27925655"><a  title="与时间赛跑的大熊" href="" target="_blank">与时间赛跑的大熊</a></p>
                                                    <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                                        <span class="num">34</span><span class="tail">.50</span></span>
                                                        <span class="price_r"><span class="sign">&yen;</span><span class="num">69</span><span class="tail">.00</span></span></p>
                                                    <p class="link "><span></span><a  target="_blank" href="">176</a>条评论</p>
                                                    <div class="icon_pop"></div>            </li>
                                                <li class="line4 bar"    nname="book-65152-9168_1-473498_" type="bar"  ddt-pit="4" dd_name="4">
                                                    <span class="num num4">4</span>
                                                    <p class="name" ddt-src="27907881">
                                                        <a  title="世界博物馆奇妙之旅（全套5册，专为孩子打造的博物通识启蒙绘本。复旦大学文物与博物馆学系周婧景副教授权威推荐，3-6岁）" href="" target="_blank">世界博物馆奇妙之旅（全套5册</a></p>            </li>
                                                <li class="line4 item"    nname="book-65152-9168_1-473498_" class="on" type="item" style='display:none;' ddt-pit="4" dd_name="4">
                                                    <span class="num num4">4</span>
                                                    <a class="img" href=""  target="_blank" ><img src='http://img3m1.ddimg.cn/78/2/27907881-1_l_6.jpg' alt='世界博物馆奇妙之旅（全套5册，专为孩子打造的博物通识启蒙绘本。复旦大学文物与博物馆学系周婧景副教授权威推荐，3-6岁）' /></a><p class="name" ddt-src="27907881">
                                                    <a  title="世界博物馆奇妙之旅（全套5册，专为孩子打造的博物通识启蒙绘本。复旦大学文物与博物馆学系周婧景副教授权威推荐，3-6岁）" href="" target="_blank">世界博物馆奇妙之旅（全套5册，专为孩子打</a></p>
                                                    <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                                        <span class="num">85</span><span class="tail">.30</span></span>
                                                        <span class="price_r"><span class="sign">&yen;</span>
                                                            <span class="num">108</span><span class="tail">.00</span></span></p>
                                                    <p class="link "><span></span><a  target="_blank" href="">599</a>条评论</p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                                                </li>
                                                <li class="line5 bar"    nname="book-65152-9168_1-473498_" type="bar"  ddt-pit="5" dd_name="5">
                                                    <span class="num num5">5</span>
                                                    <p class="name" ddt-src="27904241"><a  title="穿越时空看文明—全景手绘中国史（精装全4册）" href="" target="_blank">穿越时空看文明—全景手绘中国</a></p>
                                                </li>
                                                <li class="line5 item"    nname="book-65152-9168_1-473498_" class="on" type="item" style='display:none;' ddt-pit="5" dd_name="5">
                                                    <span class="num num5">5</span>
                                                    <a class="img" href=""  target="_blank" ><img src='http://img3m1.ddimg.cn/2/25/27904241-1_l_3.jpg' alt='穿越时空看文明—全景手绘中国史（精装全4册）' /></a>
                                                    <p class="name" ddt-src="27904241">
                                                        <a  title="穿越时空看文明—全景手绘中国史（精装全4册）" href="" target="_blank">穿越时空看文明—全景手绘中国史（精装全4</a></p><p class="price"><span class="rob"><span class="sign">&yen;</span>
                                                    <span class="num">214</span><span class="tail">.90</span></span>
                                                    <span class="price_r"><span class="sign">&yen;</span>
                                                        <span class="num">272</span><span class="tail">.00</span></span></p>
                                                    <p class="link "><span></span><a  target="_blank" href="">4718</a>条评论</p>
                                                    <div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                                                </li>
                                                <li class="line6 bar"    nname="book-65152-9168_1-473498_" type="bar"  ddt-pit="6" dd_name="6">
                                                    <span class="num num6">6</span>
                                                    <p class="name" ddt-src="27909879"><a  title="这就是物理（函套10册）" href="" target="_blank">这就是物理（函套10册）</a></p>            </li>
                                                <li class="line6 item"    nname="book-65152-9168_1-473498_" class="on" type="item" style='display:none;' ddt-pit="6" dd_name="6">
                                                    <span class="num num6">6</span>
                                                    <a class="img" href=""  target="_blank" ><img src='http://img3m9.ddimg.cn/96/2/27909879-1_l_8.jpg' alt='这就是物理（函套10册）' /></a>
                                                    <p class="name" ddt-src="27909879"><a  title="这就是物理（函套10册）" href="" target="_blank">这就是物理（函套10册）</a></p>
                                                    <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                                        <span class="num">158</span><span class="tail">.00</span></span>
                                                        <span class="price_r"><span class="sign">&yen;</span><span class="num">200</span><span class="tail">.00</span></span></p>
                                                    <p class="link "><span></span>
                                                        <a  target="_blank" href="">3848</a>条评论</p>
                                                    <div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                                                </li>
                                                <li class="line7 bar"    nname="book-65152-9168_1-473498_" type="bar"  ddt-pit="7" dd_name="7">
                                                    <span class="num num7">7</span>
                                                    <p class="name" ddt-src="27905692"><a  title="一只夜行猫" href="" target="_blank">一只夜行猫</a></p>            </li>
                                                <li class="line7 item"    nname="book-65152-9168_1-473498_" class="on" type="item" style='display:none;' ddt-pit="7" dd_name="7">
                                                    <span class="num num7">7</span>
                                                    <a class="img" href=""  target="_blank" ><img src='http://img3m2.ddimg.cn/67/33/27905692-1_l_3.jpg' alt='一只夜行猫' /></a>
                                                    <p class="name" ddt-src="27905692"><a  title="一只夜行猫" href="" target="_blank">一只夜行猫</a></p>
                                                    <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                                        <span class="num">35</span><span class="tail">.40</span></span>
                                                        <span class="price_r"><span class="sign">&yen;</span>
                                                            <span class="num">39</span><span class="tail">.80</span></span></p>
                                                    <p class="link "><span></span><a  target="_blank" href="">1476</a>条评论</p>
                                                    <div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                                                </li>
                                                <li class="line8 bar"    nname="book-65152-9168_1-473498_" type="bar"  ddt-pit="8" dd_name="8">
                                                    <span class="num num8">8</span>
                                                    <p class="name" ddt-src="27909153"><a  title="汉声数学图画书（全41册+《妈妈手册》）" href="" target="_blank">汉声数学图画书（全41册+《妈</a></p>            </li>
                                                <li class="line8 item"    nname="book-65152-9168_1-473498_" class="on" type="item" style='display:none;' ddt-pit="8" dd_name="8">
                                                    <span class="num num8">8</span>
                                                    <a class="img" href=""  target="_blank" ><img src='http://img3m3.ddimg.cn/63/16/27909153-1_l_6.jpg' alt='汉声数学图画书（全41册+《妈妈手册》）' /></a>
                                                    <p class="name" ddt-src="27909153"><a  title="汉声数学图画书（全41册+《妈妈手册》）" href="" target="_blank">汉声数学图画书（全41册+《妈妈手册》）</a></p>
                                                    <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                                        <span class="num">971</span><span class="tail">.70</span></span>
                                                        <span class="price_r"><span class="sign">&yen;</span>
                                                            <span class="num">1230</span><span class="tail">.0</span></span></p>
                                                    <p class="link "><span></span><a  target="_blank" href="">1062</a>条评论</p>
                                                    <div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                                                </li>
                                                <li class="line9 bar"    nname="book-65152-9168_1-473498_" type="bar"  ddt-pit="9" dd_name="9">
                                                    <span class="num num9">9</span>
                                                    <p class="name" ddt-src="27913261"><a  title="凯迪克大奖绘本巫婆奶奶系列（全6册）" href="" target="_blank">凯迪克大奖绘本巫婆奶奶系列（</a></p>            </li>
                                                <li class="line9 item"    nname="book-65152-9168_1-473498_" class="on" type="item" style='display:none;' ddt-pit="9" dd_name="9">
                                                    <span class="num num9">9</span>
                                                    <a class="img" href=""  target="_blank" ><img src='http://img3m1.ddimg.cn/13/17/27913261-1_l_3.jpg' alt='凯迪克大奖绘本巫婆奶奶系列（全6册）' /></a>
                                                    <p class="name" ddt-src="27913261"><a  title="凯迪克大奖绘本巫婆奶奶系列（全6册）" href="" target="_blank">凯迪克大奖绘本巫婆奶奶系列（全6册）</a></p><p class="price"><span class="rob">
                                                    <span class="sign">&yen;</span><span class="num">186</span>
                                                    <span class="tail">.30</span></span><span class="price_r">
                                                    <span class="sign">&yen;</span><span class="num">270</span>
                                                    <span class="tail">.00</span></span></p><p class="link "><span></span>
                                                    <a  target="_blank" href="">80</a>条评论</p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                                                </li>
                                                <li class="line10 bar"    nname="book-65152-9168_1-473498_" type="bar"  ddt-pit="10" dd_name="10">
                                                    <span class="num num10">10</span>
                                                    <p class="name" ddt-src="27913770"><a  title="我爸爸+我妈妈（全2册）——清华附小推荐经典儿童绘本 ！（启发童书馆出品）" href="" target="_blank">我爸爸+我妈妈（全2册）——清</a></p>            </li>
                                                <li class="line10 item"    nname="book-65152-9168_1-473498_" class="on" type="item" style='display:none;' ddt-pit="10" dd_name="10">
                                                    <span class="num num10">10</span>
                                                    <a class="img" href=""  target="_blank" ><img src='http://img3m0.ddimg.cn/27/8/27913770-1_l_3.jpg' alt='我爸爸+我妈妈（全2册）——清华附小推荐经典儿童绘本 ！（启发童书馆出品）' /></a>
                                                    <p class="name" ddt-src="27913770"><a  title="我爸爸+我妈妈（全2册）——清华附小推荐经典儿童绘本 ！（启发童书馆出品）" href="" target="_blank">我爸爸+我妈妈（全2册）——清华附小推荐经</a></p>
                                                    <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                                        <span class="num">62</span><span class="tail">.80</span></span>
                                                        <span class="price_r"><span class="sign">&yen;</span>
                                                            <span class="num">79</span><span class="tail">.60</span></span></p>
                                                    <p class="link "><span></span><a  target="_blank" href="">0</a>条评论</p>
                                                    <div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                                                </li>
                                            </ul>
                                            <a       nname="book-65152-9168_1-473517_1" href="" target="_blank" title="查看完整榜单>>"  class="more_top" ddt-pit="1" ddt-src="" dd_name="更多_1">
                                                查看完整榜单>>                        </a>
                                        </div></textarea>                                    </div>
        <div class="content tab_3" type="item" dd_name="小说" style="display: none">
                                        <textarea style='display:none'><div  class="book_top "  name="m403757_pid5290_5287_t9123"   >    <style type="text/css">
                                            .hidden{display:none;}
                                        </style>
                                            <ul class="list_ab" id="component_403757__5290_5287_5279__5279" accordion="true" js="true" speed="0" area="0" rand="0" delay="0" action="hover" itemclass="" barclass="hidden" level="2" ddt-area="5279" dd_name="自动手风琴">
                                                <li class="line1 bar hidden"    nname="book-65152-9168_1-473531_" type="bar"  ddt-pit="1" dd_name="1">
                                                    <span class="num num1">1</span>
                                                    <p class="name" ddt-src="27911800"><a  title="你想活出怎样的人生（宫崎骏从10岁读到70岁的小说，同名电影制作中，登顶日本2018图书总榜）" href="" target="_blank">你想活出怎样的人生（宫崎骏从</a></p>            </li>
                                                <li class="line1 item"    nname="book-65152-9168_1-473531_" class="on" type="item"  ddt-pit="1" dd_name="1">
                                                    <span class="num num1">1</span>
                                                    <a class="img" href=""  target="_blank" ><img src='http://img3m0.ddimg.cn/37/36/27911800-1_l_3.jpg' alt='你想活出怎样的人生（宫崎骏从10岁读到70岁的小说，同名电影制作中，登顶日本2018图书总榜）' /></a>
                                                    <p class="name" ddt-src="27911800"><a  title="你想活出怎样的人生（宫崎骏从10岁读到70岁的小说，同名电影制作中，登顶日本2018图书总榜）" href="" target="_blank">你想活出怎样的人生（宫崎骏从10岁读到70岁</a></p>
                                                    <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                                        <span class="num">46</span><span class="tail">.90</span></span>
                                                        <span class="price_r"><span class="sign">&yen;</span>
                                                            <span class="num">49</span><span class="tail">.50</span></span></p>
                                                    <p class="link "><span></span><a  target="_blank" href="">1791</a>条评论</p>
                                                    <div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                                                </li>
                                                <li class="line2 bar"    nname="book-65152-9168_1-473531_" type="bar"  ddt-pit="2" dd_name="2">
                                                    <span class="num num2">2</span>
                                                    <p class="name" ddt-src="27916425"><a  title="时间的答案：卢思浩新书2019年首部长篇小说（当当独家签名版）" href="" target="_blank">时间的答案：卢思浩新书2019年</a></p>            </li>
                                                <li class="line2 item"    nname="book-65152-9168_1-473531_" class="on" type="item" style='display:none;' ddt-pit="2" dd_name="2">
                                                    <span class="num num2">2</span>
                                                    <a class="img" href=""  target="_blank" ><img src='http://img3m5.ddimg.cn/9/36/27916425-1_l_3.jpg' alt='时间的答案：卢思浩新书2019年首部长篇小说（当当独家签名版）' /></a>
                                                    <p class="name" ddt-src="27916425"><a  title="时间的答案：卢思浩新书2019年首部长篇小说（当当独家签名版）" href="" target="_blank">时间的答案：卢思浩新书2019年首部长篇小说</a></p>
                                                    <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                                        <span class="num">24</span><span class="tail">.80</span></span>
                                                        <span class="price_r"><span class="sign">&yen;</span>
                                                            <span class="num">45</span><span class="tail">.00</span></span></p>
                                                    <p class="link "><span></span><a  target="_blank" href="">4117</a>条评论</p>
                                                    <div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/xsq.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/xsq.png',sizingMethod='noscale');" class="product_tags"></span></div>
                                                </li>
                                                <li class="line3 bar"    nname="book-65152-9168_1-473531_" type="bar"  ddt-pit="3" dd_name="3">
                                                    <span class="num num3">3</span>
                                                    <p class="name" ddt-src="27911609"><a  title="春日序曲（贾平凹推荐《请以你的名字呼唤我》第90届奥斯卡获奖影片原著作者全新力作）" href="" target="_blank">春日序曲（贾平凹推荐《请以你</a></p>            </li>
                                                <li class="line3 item"    nname="book-65152-9168_1-473531_" class="on" type="item" style='display:none;' ddt-pit="3" dd_name="3">
                                                    <span class="num num3">3</span>
                                                    <a class="img" href=""  target="_blank" ><img src='http://img3m9.ddimg.cn/44/30/27911609-1_l_8.jpg' alt='春日序曲（贾平凹推荐《请以你的名字呼唤我》第90届奥斯卡获奖影片原著作者全新力作）' /></a>
                                                    <p class="name" ddt-src="27911609"><a  title="春日序曲（贾平凹推荐《请以你的名字呼唤我》第90届奥斯卡获奖影片原著作者全新力作）" href="" target="_blank">春日序曲（贾平凹推荐《请以你的名字呼唤我</a></p>
                                                    <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                                        <span class="num">40</span><span class="tail">.90</span></span>
                                                        <span class="price_r"><span class="sign">&yen;</span>
                                                            <span class="num">45</span><span class="tail">.00</span></span></p>
                                                    <p class="link "><span></span><a  target="_blank" href="">6007</a>条评论</p>
                                                    <div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                                                </li>
                                                <li class="line4 bar"    nname="book-65152-9168_1-473531_" type="bar"  ddt-pit="4" dd_name="4">
                                                    <span class="num num4">4</span>
                                                    <p class="name" ddt-src="27927035"><a  title="堂吉诃德（精装典藏版 荣获鲁迅文学奖翻译奖、西班牙女王勋章，董燕生译本；西班牙原版无删节足本，比现行译本多10余万字）" href="" target="_blank">堂吉诃德（精装典藏版&nbsp;荣获鲁</a></p>            </li>
                                                <li class="line4 item"    nname="book-65152-9168_1-473531_" class="on" type="item" style='display:none;' ddt-pit="4" dd_name="4">
                                                    <span class="num num4">4</span>
                                                    <a class="img" href=""  target="_blank" ><img src='http://img3m5.ddimg.cn/26/27/27927035-1_l_6.jpg' alt='堂吉诃德（精装典藏版 荣获鲁迅文学奖翻译奖、西班牙女王勋章，董燕生译本；西班牙原版无删节足本，比现行译本多10余万字）' /></a>
                                                    <p class="name" ddt-src="27927035"><a  title="堂吉诃德（精装典藏版 荣获鲁迅文学奖翻译奖、西班牙女王勋章，董燕生译本；西班牙原版无删节足本，比现行译本多10余万字）" href="" target="_blank">堂吉诃德（精装典藏版&nbsp;荣获鲁迅文学奖翻译</a></p>
                                                    <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                                        <span class="num">38</span><span class="tail">.22</span></span>
                                                        <span class="price_r"><span class="sign">&yen;</span>
                                                            <span class="num">98</span><span class="tail">.00</span></span></p>
                                                    <p class="link "><span></span><a  target="_blank" href="">12</a>条评论</p>
                                                    <div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                                                </li>
                                                <li class="line5 bar"    nname="book-65152-9168_1-473531_" type="bar"  ddt-pit="5" dd_name="5">
                                                    <span class="num num5">5</span>
                                                    <p class="name" ddt-src="27920510"><a  title="幼稚园 你们人类的爱情真难攻破（韩寒主编「幼稚园」系列第2期。李诞、傅首尔、荞麦、韩松落、陈谌等严肃地讨论爱，用科幻实验爱）" href="" target="_blank">幼稚园&nbsp;你们人类的爱情真难攻</a></p>            </li>
                                                <li class="line5 item"    nname="book-65152-9168_1-473531_" class="on" type="item" style='display:none;' ddt-pit="5" dd_name="5">
                                                    <span class="num num5">5</span>
                                                    <a class="img" href=""  target="_blank" ><img src='http://img3m0.ddimg.cn/35/14/27920510-1_l_3.jpg' alt='幼稚园 你们人类的爱情真难攻破（韩寒主编「幼稚园」系列第2期。李诞、傅首尔、荞麦、韩松落、陈谌等严肃地讨论爱，用科幻实验爱）' /></a><p class="name" ddt-src="27920510">
                                                    <a  title="幼稚园 你们人类的爱情真难攻破（韩寒主编「幼稚园」系列第2期。李诞、傅首尔、荞麦、韩松落、陈谌等严肃地讨论爱，用科幻实验爱）" href="" target="_blank">幼稚园&nbsp;你们人类的爱情真难攻破（韩寒主编</a></p>
                                                    <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                                        <span class="num">24</span><span class="tail">.90</span></span>
                                                        <span class="price_r"><span class="sign">&yen;</span>
                                                            <span class="num">49</span><span class="tail">.80</span></span></p>
                                                    <p class="link "><span></span><a  target="_blank" href="h">985</a>条评论</p>
                                                    <div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/xsq.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/xsq.png',sizingMethod='noscale');" class="product_tags"></span></div>
                                                </li>
                                                <li class="line6 bar"    nname="book-65152-9168_1-473531_" type="bar"  ddt-pit="6" dd_name="6">
                                                    <span class="num num6">6</span>
                                                    <p class="name" ddt-src="27921926"><a  title="艾迪的告别（法国版《乡下人的悲歌》，比《无声告白》更真实的人生）" href="
                                                    " target="_blank">艾迪的告别（法国版《乡下人的</a></p>
                                                </li>
                                                <li class="line6 item"    nname="book-65152-9168_1-473531_" class="on" type="item" style='display:none;' ddt-pit="6" dd_name="6">
                                                    <span class="num num6">6</span>
                                                    <a class="img" href=""  target="_blank" ><img src='http://img3m6.ddimg.cn/65/24/27921926-1_l_3.jpg' alt='艾迪的告别（法国版《乡下人的悲歌》，比《无声告白》更真实的人生）' /></a>
                                                    <p class="name" ddt-src="27921926"><a  title="艾迪的告别（法国版《乡下人的悲歌》，比《无声告白》更真实的人生）" href="
                                                    " target="_blank">艾迪的告别（法国版《乡下人的悲歌》，比《</a></p>
                                                    <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                                        <span class="num">34</span><span class="tail">.70</span></span>
                                                        <span class="price_r"><span class="sign">&yen;</span>
                                                            <span class="num">39</span><span class="tail">.80</span></span></p>
                                                    <p class="link "><span></span><a  target="_blank" href="">435</a>条评论</p>
                                                    <div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                                                </li>
                                                <li class="line7 bar"    nname="book-65152-9168_1-473531_" type="bar"  ddt-pit="7" dd_name="7">
                                                    <span class="num num7">7</span>
                                                    <p class="name" ddt-src="27914305"><a  title="82年生的金智英" href="" target="_blank">82年生的金智英</a></p>            </li>
                                                <li class="line7 item"    nname="book-65152-9168_1-473531_" class="on" type="item" style='display:none;' ddt-pit="7" dd_name="7">
                                                    <span class="num num7">7</span>
                                                    <a class="img" href=""  target="_blank" ><img src='http://img3m5.ddimg.cn/67/25/27914305-1_l_5.jpg' alt='82年生的金智英' /></a>
                                                    <p class="name" ddt-src="27914305"><a  title="82年生的金智英" href="" target="_blank">82年生的金智英</a></p>
                                                    <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                                        <span class="num">40</span><span class="tail">.80</span></span>
                                                        <span class="price_r"><span class="sign">&yen;</span>
                                                            <span class="num">45</span><span class="tail">.00</span></span></p>
                                                    <p class="link "><span></span><a  target="_blank" href="">14</a>条评论</p>
                                                    <div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                                                </li>
                                                <li class="line8 bar"    nname="book-65152-9168_1-473531_" type="bar"  ddt-pit="8" dd_name="8">
                                                    <span class="num num8">8</span>
                                                    <p class="name" ddt-src="27921906"><a  title="悠长假日" href="" target="_blank">悠长假日</a></p>            </li>
                                                <li class="line8 item"    nname="book-65152-9168_1-473531_" class="on" type="item" style='display:none;' ddt-pit="8" dd_name="8">
                                                    <span class="num num8">8</span>
                                                    <a class="img" href=""  target="_blank" ><img src='http://img3m6.ddimg.cn/45/4/27921906-1_l_3.jpg' alt='悠长假日' /></a>
                                                    <p class="name" ddt-src="27921906"><a  title="悠长假日" href="" target="_blank">悠长假日</a></p>
                                                    <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                                        <span class="num">34</span><span class="tail">.70</span></span>
                                                        <span class="price_r"><span class="sign">&yen;</span>
                                                            <span class="num">39</span><span class="tail">.80</span></span></p>
                                                    <p class="link "><span></span><a  target="_blank" href="">406</a>条评论</p>
                                                    <div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                                                </li>
                                                <li class="line9 bar"    nname="book-65152-9168_1-473531_" type="bar"  ddt-pit="9" dd_name="9">
                                                    <span class="num num9">9</span>
                                                    <p class="name" ddt-src="27917609"><a  title="罪全书前传" href="" target="_blank">罪全书前传</a></p>            </li>
                                                <li class="line9 item"    nname="book-65152-9168_1-473531_" class="on" type="item" style='display:none;' ddt-pit="9" dd_name="9">
                                                    <span class="num num9">9</span>
                                                    <a class="img" href=""  target="_blank" ><img src='http://img3m9.ddimg.cn/5/36/27917609-1_l_6.jpg' alt='罪全书前传' /></a>
                                                    <p class="name" ddt-src="27917609"><a  title="罪全书前传" href="" target="_blank">罪全书前传</a></p>
                                                    <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                                        <span class="num">45</span><span class="tail">.00</span></span>
                                                        <span class="price_r"><span class="sign">&yen;</span>
                                                            <span class="num">45</span><span class="tail">.00</span></span></p>
                                                    <p class="link "><span></span><a  target="_blank" href="">25</a>条评论</p>
                                                    <div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                                                </li>
                                                <li class="line10 bar"    nname="book-65152-9168_1-473531_" type="bar"  ddt-pit="10" dd_name="10">
                                                    <span class="num num10">10</span>
                                                    <p class="name" ddt-src="27905656"><a  title="晚风枕酒（人气畅销书作家七堇年重磅全新力作！）" href="" target="_blank">晚风枕酒（人气畅销书作家七堇</a></p>            </li>
                                                <li class="line10 item"    nname="book-65152-9168_1-473531_" class="on" type="item" style='display:none;' ddt-pit="10" dd_name="10">
                                                    <span class="num num10">10</span>
                                                    <a class="img" href=""  target="_blank" ><img src='http://img3m6.ddimg.cn/31/34/27905656-1_l_3.jpg' alt='晚风枕酒（人气畅销书作家七堇年重磅全新力作！）' /></a>
                                                    <p class="name" ddt-src="27905656"><a  title="晚风枕酒（人气畅销书作家七堇年重磅全新力作！）" href="" target="_blank">晚风枕酒（人气畅销书作家七堇年重磅全新力</a></p>
                                                    <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                                        <span class="num">43</span><span class="tail">.50</span></span>
                                                        <span class="price_r"><span class="sign">&yen;</span>
                                                            <span class="num">48</span><span class="tail">.00</span></span></p>
                                                    <p class="link "><span></span><a  target="_blank" href="">1482</a>条评论</p>
                                                    <div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                                                </li>
                                            </ul>
                                            <a       nname="book-65152-9168_1-473533_1" href="" target="_blank" title="查看完整榜单>>"  class="more_top" ddt-pit="1" ddt-src="" dd_name="更多_1">
                                                查看完整榜单>>                        </a>
                                        </div></textarea>                                    </div>
        <div class="content tab_4" type="item" dd_name="文学" style="display: none">
                                        <textarea style='display:none'><div  class="book_top "  name="m403757_pid5290_5289_t9123"   >    <style type="text/css">
                                            .hidden{display:none;}
                                        </style>
                                            <ul class="list_ab" id="component_403757__5290_5289_5279__5279" accordion="true" js="true" speed="0" area="0" rand="0" delay="0" action="hover" itemclass="" barclass="hidden" level="2" ddt-area="5279" dd_name="自动手风琴">
                                                <li class="line1 bar hidden"    nname="book-65152-9168_1-473534_" type="bar"  ddt-pit="1" dd_name="1">
                                                    <span class="num num1">1</span>
                                                    <p class="name" ddt-src="27932957"><a  title="欢喜：冯唐2020金句日历（冯唐新书）" href="" target="_blank">欢喜：冯唐2020金句日历（冯唐</a></p>            </li>
                                                <li class="line1 item"    nname="book-65152-9168_1-473534_" class="on" type="item"  ddt-pit="1" dd_name="1">
                                                    <span class="num num1">1</span>
                                                    <a class="img" href=""  target="_blank" ><img src='http://img3m7.ddimg.cn/8/29/27932957-1_l_3.jpg' alt='欢喜：冯唐2020金句日历（冯唐新书）' /></a>
                                                    <p class="name" ddt-src="27932957"><a  title="欢喜：冯唐2020金句日历（冯唐新书）" href="" target="_blank">欢喜：冯唐2020金句日历（冯唐新书）</a></p>
                                                    <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                                        <span class="num">63</span><span class="tail">.36</span></span>
                                                        <span class="price_r"><span class="sign">&yen;</span>
                                                            <span class="num">88</span><span class="tail">.00</span></span></p>
                                                    <p class="link "><span></span><a  target="_blank" href="">2</a>条评论</p>
                                                    <div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                                                </li>
                                                <li class="line2 bar"    nname="book-65152-9168_1-473534_" type="bar"  ddt-pit="2" dd_name="2">
                                                    <span class="num num2">2</span>
                                                    <p class="name" ddt-src="27928668"><a  title="春风十里不如你：一本书读尽冯唐人生金线，年轻时极尽欢喜，年长后极尽通透。（当当专享冯唐可装裱书法（飘银纸））" href="" target="_blank">春风十里不如你：一本书读尽冯</a></p>            </li>
                                                <li class="line2 item"    nname="book-65152-9168_1-473534_" class="on" type="item" style='display:none;' ddt-pit="2" dd_name="2">
                                                    <span class="num num2">2</span>
                                                    <a class="img" href=""  target="_blank" ><img src='http://img3m8.ddimg.cn/75/32/27928668-1_l_7.jpg' alt='春风十里不如你：一本书读尽冯唐人生金线，年轻时极尽欢喜，年长后极尽通透。（当当专享冯唐可装裱书法（飘银纸））' /></a>
                                                    <p class="name" ddt-src="27928668"><a  title="春风十里不如你：一本书读尽冯唐人生金线，年轻时极尽欢喜，年长后极尽通透。（当当专享冯唐可装裱书法（飘银纸））" href="" target="_blank">春风十里不如你：一本书读尽冯唐人生金线，</a></p>
                                                    <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                                        <span class="num">50</span><span class="tail">.70</span></span>
                                                        <span class="price_r"><span class="sign">&yen;</span>
                                                            <span class="num">56</span><span class="tail">.00</span></span></p>
                                                    <p class="link "><span></span><a  target="_blank" href="">70885</a>条评论</p>
                                                    <div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                                                </li>
                                                <li class="line3 bar"    nname="book-65152-9168_1-473534_" type="bar"  ddt-pit="3" dd_name="3">
                                                    <span class="num num3">3</span>
                                                    <p class="name" ddt-src="27912224"><a  title="戴建业 你听懂了没有（国民教授戴建业随笔精选集。陈引驰、骆玉明、六神磊磊推荐！火辣辣的文字写人生百态，有才有识，有情有趣！）" href="" target="_blank">戴建业&nbsp;你听懂了没有（国民教</a></p>            </li>
                                                <li class="line3 item"    nname="book-65152-9168_1-473534_" class="on" type="item" style='display:none;' ddt-pit="3" dd_name="3">
                                                    <span class="num num3">3</span>
                                                    <a class="img" href=""  target="_blank" ><img src='http://img3m4.ddimg.cn/65/16/27912224-1_l_2.jpg' alt='戴建业 你听懂了没有（国民教授戴建业随笔精选集。陈引驰、骆玉明、六神磊磊推荐！火辣辣的文字写人生百态，有才有识，有情有趣！）' /></a>
                                                    <p class="name" ddt-src="27912224"><a  title="戴建业 你听懂了没有（国民教授戴建业随笔精选集。陈引驰、骆玉明、六神磊磊推荐！火辣辣的文字写人生百态，有才有识，有情有趣！）" href="" target="_blank">戴建业&nbsp;你听懂了没有（国民教授戴建业随笔</a></p>
                                                    <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                                        <span class="num">64</span><span class="tail">.50</span></span>
                                                        <span class="price_r"><span class="sign">&yen;</span>
                                                            <span class="num">68</span><span class="tail">.00</span></span></p>
                                                    <p class="link "><span></span><a  target="_blank" href="">1013</a>条评论</p>
                                                    <div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                                                </li>
                                                <li class="line4 bar"    nname="book-65152-9168_1-473534_" type="bar"  ddt-pit="4" dd_name="4">
                                                    <span class="num num4">4</span>
                                                    <p class="name" ddt-src="27869799"><a  title="抵错（限量签名版，随机发放）" href="" target="_blank">抵错（限量签名版，随机发放）</a></p>            </li>
                                                <li class="line4 item"    nname="book-65152-9168_1-473534_" class="on" type="item" style='display:none;' ddt-pit="4" dd_name="4">
                                                    <span class="num num4">4</span>
                                                    <a class="img" href=""  target="_blank" ><img src='http://img3m9.ddimg.cn/12/30/27869799-1_l_17.jpg' alt='抵错（限量签名版，随机发放）' /></a>
                                                    <p class="name" ddt-src="27869799"><a  title="抵错（限量签名版，随机发放）" href="" target="_blank">抵错（限量签名版，随机发放）</a></p>
                                                    <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                                        <span class="num">32</span><span class="tail">.40</span></span>
                                                        <span class="price_r"><span class="sign">&yen;</span>
                                                            <span class="num">45</span><span class="tail">.00</span></span></p>
                                                    <p class="link "><span></span><a  target="_blank" href="">13</a>条评论</p>
                                                    <div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                                                </li>
                                                <li class="line5 bar"    nname="book-65152-9168_1-473534_" type="bar"  ddt-pit="5" dd_name="5">
                                                    <span class="num num5">5</span>
                                                    <p class="name" ddt-src="27924384"><a  title="旧日的静定" href="" target="_blank">旧日的静定</a></p>            </li>
                                                <li class="line5 item"    nname="book-65152-9168_1-473534_" class="on" type="item" style='display:none;' ddt-pit="5" dd_name="5">
                                                    <span class="num num5">5</span>
                                                    <a class="img" href=""  target="_blank" ><img src='http://img3m4.ddimg.cn/48/3/27924384-1_l_3.jpg' alt='旧日的静定' /></a>
                                                    <p class="name" ddt-src="27924384"><a  title="旧日的静定" href="" target="_blank">旧日的静定</a></p>
                                                    <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                                        <span class="num">59</span><span class="tail">.20</span></span>
                                                        <span class="price_r"><span class="sign">&yen;</span>
                                                            <span class="num">68</span><span class="tail">.00</span></span></p>
                                                    <p class="link "><span></span><a  target="_blank" href="">4</a>条评论</p>
                                                    <div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                                                </li>
                                                <li class="line6 bar"    nname="book-65152-9168_1-473534_" type="bar"  ddt-pit="6" dd_name="6">
                                                    <span class="num num6">6</span>
                                                    <p class="name" ddt-src="27919969"><a  title="飞花令里读诗词 日历2020年" href="" target="_blank">飞花令里读诗词&nbsp;日历2020年</a></p>            </li>
                                                <li class="line6 item"    nname="book-65152-9168_1-473534_" class="on" type="item" style='display:none;' ddt-pit="6" dd_name="6">
                                                    <span class="num num6">6</span>
                                                    <a class="img" href=""  target="_blank" ><img src='http://img3m9.ddimg.cn/88/28/27919969-1_l_12.jpg' alt='飞花令里读诗词 日历2020年' /></a>
                                                    <p class="name" ddt-src="27919969"><a  title="飞花令里读诗词 日历2020年" href="" target="_blank">飞花令里读诗词&nbsp;日历2020年</a></p>
                                                    <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                                        <span class="num">49</span><span class="tail">.00</span></span>
                                                        <span class="price_r"><span class="sign">&yen;</span>
                                                            <span class="num">128</span><span class="tail">.00</span></span></p>
                                                    <p class="link "><span></span><a  target="_blank" href="">1064</a>条评论</p><div class="icon_pop"></div>            </li>
                                                <li class="line7 bar"    nname="book-65152-9168_1-473534_" type="bar"  ddt-pit="7" dd_name="7">
                                                    <span class="num num7">7</span>
                                                    <p class="name" ddt-src="27911436"><a  title="李银河说爱情" href="" target="_blank">李银河说爱情</a></p>            </li>
                                                <li class="line7 item"    nname="book-65152-9168_1-473534_" class="on" type="item" style='display:none;' ddt-pit="7" dd_name="7">
                                                    <span class="num num7">7</span>
                                                    <a class="img" href=""  target="_blank" ><img src='http://img3m6.ddimg.cn/69/5/27911436-1_l_3.jpg' alt='李银河说爱情' /></a>
                                                    <p class="name" ddt-src="27911436"><a  title="李银河说爱情" href="" target="_blank">李银河说爱情</a></p>
                                                    <p class="price"><span class="rob"><span class="sign">&yen;</span>
                                                        <span class="num">40</span><span class="tail">.80</span></span>
                                                        <span class="price_r"><span class="sign">&yen;</span>
                                                            <span class="num">45</span><span class="tail">.00</span></span></p>
                                                    <p class="link "><span></span><a  target="_blank" href="">1529</a>条评论</p>
                                                    <div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>
                                                </li>
                                                <li class="line8 bar"    nname="book-65152-9168_1-473534_" type="bar"  ddt-pit="8" dd_name="8">
                                                    <span class="num num8">8</span>
                                                    <p class="name" ddt-src="27918847"><a  title="朝与同歌暮与酒" href="" target="_blank">朝与同歌暮与酒</a></p>            </li>
                                                <li class="line8 item"    nname="book-65152-9168_1-473534_" class="on" type="item" style='display:none;' ddt-pit="8" dd_name="8">
                                                    <span class="num num8">8</span>
                                                    <a class="img" href="http://product.dangdang.com/27918847.html"  target="_blank" ><img src='http://img3m7.ddimg.cn/55/16/27918847-1_l_9.jpg' alt='朝与同歌暮与酒' /></a><p class="name" ddt-src="27918847"><a  title="朝与同歌暮与酒" href="http://product.dangdang.com/27918847.html?ref=book-65152-9168_1-473534-7" target="_blank">朝与同歌暮与酒</a></p><p class="price"><span class="rob"><span class="sign">&yen;</span><span class="num">41</span><span class="tail">.80</span></span><span class="price_r"><span class="sign">&yen;</span><span class="num">48</span><span class="tail">.00</span></span></p><p class="link "><span></span><a  target="_blank" href="http://product.dangdang.com/27918847.html?point=comment_point">473</a>条评论</p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                                                <li class="line9 bar"    nname="book-65152-9168_1-473534_" type="bar"  ddt-pit="9" dd_name="9">
                                                    <span class="num num9">9</span>
                                                    <p class="name" ddt-src="27906523"><a  title="楚辞（畅销100万册《诗经》同款。易中天、冯唐、张皓宸推荐，全二册注音注释插图，易解可诵）【果麦经典】" href="http://product.dangdang.com/27906523.html?ref=book-65152-9168_1-473534-8" target="_blank">楚辞（畅销100万册《诗经》同</a></p>            </li>
                                                <li class="line9 item"    nname="book-65152-9168_1-473534_" class="on" type="item" style='display:none;' ddt-pit="9" dd_name="9">
                                                    <span class="num num9">9</span>
                                                    <a class="img" href="http://product.dangdang.com/27906523.html"  target="_blank" ><img src='http://img3m3.ddimg.cn/7/13/27906523-1_l_6.jpg' alt='楚辞（畅销100万册《诗经》同款。易中天、冯唐、张皓宸推荐，全二册注音注释插图，易解可诵）【果麦经典】' /></a><p class="name" ddt-src="27906523"><a  title="楚辞（畅销100万册《诗经》同款。易中天、冯唐、张皓宸推荐，全二册注音注释插图，易解可诵）【果麦经典】" href="http://product.dangdang.com/27906523.html?ref=book-65152-9168_1-473534-8" target="_blank">楚辞（畅销100万册《诗经》同款。易中天、</a></p><p class="price"><span class="rob"><span class="sign">&yen;</span><span class="num">103</span><span class="tail">.80</span></span><span class="price_r"><span class="sign">&yen;</span><span class="num">118</span><span class="tail">.00</span></span></p><p class="link "><span></span><a  target="_blank" href="http://product.dangdang.com/27906523.html?point=comment_point">1259</a>条评论</p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                                                <li class="line10 bar"    nname="book-65152-9168_1-473534_" type="bar"  ddt-pit="10" dd_name="10">
                                                    <span class="num num10">10</span>
                                                    <p class="name" ddt-src="27907170"><a  title="时间在左，尘缘在右" href="http://product.dangdang.com/27907170.html?ref=book-65152-9168_1-473534-9" target="_blank">时间在左，尘缘在右</a></p>            </li>
                                                <li class="line10 item"    nname="book-65152-9168_1-473534_" class="on" type="item" style='display:none;' ddt-pit="10" dd_name="10">
                                                    <span class="num num10">10</span>
                                                    <a class="img" href="http://product.dangdang.com/27907170.html"  target="_blank" ><img src='http://img3m0.ddimg.cn/60/31/27907170-1_l_6.jpg' alt='时间在左，尘缘在右' /></a><p class="name" ddt-src="27907170"><a  title="时间在左，尘缘在右" href="http://product.dangdang.com/27907170.html?ref=book-65152-9168_1-473534-9" target="_blank">时间在左，尘缘在右</a></p><p class="price"><span class="rob"><span class="sign">&yen;</span><span class="num">39</span><span class="tail">.80</span></span><span class="price_r"><span class="sign">&yen;</span><span class="num">39</span><span class="tail">.80</span></span></p><p class="link "><span></span><a  target="_blank" href="http://product.dangdang.com/27907170.html?point=comment_point">247</a>条评论</p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                                            </ul>
                                            <a       nname="book-65152-9168_1-473538_1" href="http://bang.dangdang.com/books/newhotsales/01.05.00.00.00.00-recent7-0-0-1-1" target="_blank" title="查看完整榜单>>"  class="more_top" ddt-pit="1" ddt-src="http://bang.dangdang.com/books/newhotsales/01.05.00.00.00.00-recent7-0-0-1-1" dd_name="更多_1">
                                                查看完整榜单>>                        </a>
                                        </div></textarea>                                    </div>
        <div class="content tab_5" type="item" dd_name="心理学" style="display: none">
                                        <textarea style='display:none'><div  class="book_top "  name="m403757_pid5290_10462_t9123"   >    <style type="text/css">
                                            .hidden{display:none;}
                                        </style>
                                            <ul class="list_ab" id="component_403757__5290_10462_5279__5279" accordion="true" js="true" speed="0" area="0" rand="0" delay="0" action="hover" itemclass="" barclass="hidden" level="2" ddt-area="5279" dd_name="自动手风琴">
                                                <li class="line1 bar hidden"    nname="book-65152-9168_1-3073556_" type="bar"  ddt-pit="1" dd_name="1">
                                                    <span class="num num1">1</span>
                                                    <p class="name" ddt-src="27897984"><a  title="狮子吃素的那一天：如何搞定强势的人？" href="http://product.dangdang.com/27897984.html?ref=book-65152-9168_1-3073556-0" target="_blank">狮子吃素的那一天：如何搞定强</a></p>            </li>
                                                <li class="line1 item"    nname="book-65152-9168_1-3073556_" class="on" type="item"  ddt-pit="1" dd_name="1">
                                                    <span class="num num1">1</span>
                                                    <a class="img" href="http://product.dangdang.com/27897984.html"  target="_blank" ><img src='http://img3m4.ddimg.cn/81/21/27897984-1_l_3.jpg' alt='狮子吃素的那一天：如何搞定强势的人？' /></a><p class="name" ddt-src="27897984"><a  title="狮子吃素的那一天：如何搞定强势的人？" href="http://product.dangdang.com/27897984.html?ref=book-65152-9168_1-3073556-0" target="_blank">狮子吃素的那一天：如何搞定强势的人？</a></p><p class="price"><span class="rob"><span class="sign">&yen;</span><span class="num">24</span><span class="tail">.00</span></span><span class="price_r"><span class="sign">&yen;</span><span class="num">48</span><span class="tail">.00</span></span></p><p class="link "><span></span><a  target="_blank" href="http://product.dangdang.com/27897984.html?point=comment_point">1599</a>条评论</p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                                                <li class="line2 bar"    nname="book-65152-9168_1-3073556_" type="bar"  ddt-pit="2" dd_name="2">
                                                    <span class="num num2">2</span>
                                                    <p class="name" ddt-src="27903927"><a  title="零压人生：瞬间化解焦虑、烦躁的高效压力管理术！" href="http://product.dangdang.com/27903927.html?ref=book-65152-9168_1-3073556-1" target="_blank">零压人生：瞬间化解焦虑、烦躁</a></p>            </li>
                                                <li class="line2 item"    nname="book-65152-9168_1-3073556_" class="on" type="item" style='display:none;' ddt-pit="2" dd_name="2">
                                                    <span class="num num2">2</span>
                                                    <a class="img" href="http://product.dangdang.com/27903927.html"  target="_blank" ><img src='http://img3m7.ddimg.cn/84/7/27903927-1_l_3.jpg' alt='零压人生：瞬间化解焦虑、烦躁的高效压力管理术！' /></a><p class="name" ddt-src="27903927"><a  title="零压人生：瞬间化解焦虑、烦躁的高效压力管理术！" href="http://product.dangdang.com/27903927.html?ref=book-65152-9168_1-3073556-1" target="_blank">零压人生：瞬间化解焦虑、烦躁的高效压力管</a></p><p class="price"><span class="rob"><span class="sign">&yen;</span><span class="num">13</span><span class="tail">.50</span></span><span class="price_r"><span class="sign">&yen;</span><span class="num">46</span><span class="tail">.80</span></span></p><p class="link "><span></span><a  target="_blank" href="http://product.dangdang.com/27903927.html?point=comment_point">1249</a>条评论</p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/xsq.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/xsq.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                                                <li class="line3 bar"    nname="book-65152-9168_1-3073556_" type="bar"  ddt-pit="3" dd_name="3">
                                                    <span class="num num3">3</span>
                                                    <p class="name" ddt-src="27916585"><a  title="我们都曾受过伤，却有了更好的人生" href="http://product.dangdang.com/27916585.html?ref=book-65152-9168_1-3073556-2" target="_blank">我们都曾受过伤，却有了更好的</a></p>            </li>
                                                <li class="line3 item"    nname="book-65152-9168_1-3073556_" class="on" type="item" style='display:none;' ddt-pit="3" dd_name="3">
                                                    <span class="num num3">3</span>
                                                    <a class="img" href="http://product.dangdang.com/27916585.html"  target="_blank" ><img src='http://img3m5.ddimg.cn/70/11/27916585-1_l_3.jpg' alt='我们都曾受过伤，却有了更好的人生' /></a><p class="name" ddt-src="27916585"><a  title="我们都曾受过伤，却有了更好的人生" href="http://product.dangdang.com/27916585.html?ref=book-65152-9168_1-3073556-2" target="_blank">我们都曾受过伤，却有了更好的人生</a></p><p class="price"><span class="rob"><span class="sign">&yen;</span><span class="num">29</span><span class="tail">.00</span></span><span class="price_r"><span class="sign">&yen;</span><span class="num">58</span><span class="tail">.00</span></span></p><p class="link "><span></span><a  target="_blank" href="http://product.dangdang.com/27916585.html?point=comment_point">105</a>条评论</p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/xsq.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/xsq.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                                                <li class="line4 bar"    nname="book-65152-9168_1-3073556_" type="bar"  ddt-pit="4" dd_name="4">
                                                    <span class="num num4">4</span>
                                                    <p class="name" ddt-src="27898040"><a  title="人人都能梦的解析（《天才在左 疯子在右》作者高铭重磅新作！）" href="http://product.dangdang.com/27898040.html?ref=book-65152-9168_1-3073556-3" target="_blank">人人都能梦的解析（《天才在左</a></p>            </li>
                                                <li class="line4 item"    nname="book-65152-9168_1-3073556_" class="on" type="item" style='display:none;' ddt-pit="4" dd_name="4">
                                                    <span class="num num4">4</span>
                                                    <a class="img" href="http://product.dangdang.com/27898040.html"  target="_blank" ><img src='http://img3m0.ddimg.cn/38/3/27898040-1_l_5.jpg' alt='人人都能梦的解析（《天才在左 疯子在右》作者高铭重磅新作！）' /></a><p class="name" ddt-src="27898040"><a  title="人人都能梦的解析（《天才在左 疯子在右》作者高铭重磅新作！）" href="http://product.dangdang.com/27898040.html?ref=book-65152-9168_1-3073556-3" target="_blank">人人都能梦的解析（《天才在左&nbsp;疯子在右》</a></p><p class="price"><span class="rob"><span class="sign">&yen;</span><span class="num">24</span><span class="tail">.90</span></span><span class="price_r"><span class="sign">&yen;</span><span class="num">49</span><span class="tail">.80</span></span></p><p class="link "><span></span><a  target="_blank" href="http://product.dangdang.com/27898040.html?point=comment_point">329</a>条评论</p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/xsq.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/xsq.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                                                <li class="line5 bar"    nname="book-65152-9168_1-3073556_" type="bar"  ddt-pit="5" dd_name="5">
                                                    <span class="num num5">5</span>
                                                    <p class="name" ddt-src="27914140"><a  title="内向者优势（性格内向不是缺陷，而是一种优势）" href="http://product.dangdang.com/27914140.html?ref=book-65152-9168_1-3073556-4" target="_blank">内向者优势（性格内向不是缺陷</a></p>            </li>
                                                <li class="line5 item"    nname="book-65152-9168_1-3073556_" class="on" type="item" style='display:none;' ddt-pit="5" dd_name="5">
                                                    <span class="num num5">5</span>
                                                    <a class="img" href="http://product.dangdang.com/27914140.html"  target="_blank" ><img src='http://img3m0.ddimg.cn/1/8/27914140-1_l_3.jpg' alt='内向者优势（性格内向不是缺陷，而是一种优势）' /></a><p class="name" ddt-src="27914140"><a  title="内向者优势（性格内向不是缺陷，而是一种优势）" href="http://product.dangdang.com/27914140.html?ref=book-65152-9168_1-3073556-4" target="_blank">内向者优势（性格内向不是缺陷，而是一种优</a></p><p class="price"><span class="rob"><span class="sign">&yen;</span><span class="num">24</span><span class="tail">.50</span></span><span class="price_r"><span class="sign">&yen;</span><span class="num">49</span><span class="tail">.00</span></span></p><p class="link "><span></span><a  target="_blank" href="http://product.dangdang.com/27914140.html?point=comment_point">167</a>条评论</p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/xsq.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/xsq.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                                                <li class="line6 bar"    nname="book-65152-9168_1-3073556_" type="bar"  ddt-pit="6" dd_name="6">
                                                    <span class="num num6">6</span>
                                                    <p class="name" ddt-src="27926316"><a  title="微表情密码" href="http://product.dangdang.com/27926316.html?ref=book-65152-9168_1-3073556-5" target="_blank">微表情密码</a></p>            </li>
                                                <li class="line6 item"    nname="book-65152-9168_1-3073556_" class="on" type="item" style='display:none;' ddt-pit="6" dd_name="6">
                                                    <span class="num num6">6</span>
                                                    <a class="img" href="http://product.dangdang.com/27926316.html"  target="_blank" ><img src='http://img3m6.ddimg.cn/0/11/27926316-1_l_3.jpg' alt='微表情密码' /></a><p class="name" ddt-src="27926316"><a  title="微表情密码" href="http://product.dangdang.com/27926316.html?ref=book-65152-9168_1-3073556-5" target="_blank">微表情密码</a></p><p class="price"><span class="rob"><span class="sign">&yen;</span><span class="num">19</span><span class="tail">.90</span></span><span class="price_r"><span class="sign">&yen;</span><span class="num">39</span><span class="tail">.80</span></span></p><p class="link "><span></span><a  target="_blank" href="http://product.dangdang.com/27926316.html?point=comment_point">107</a>条评论</p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/xsq.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/xsq.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                                                <li class="line7 bar"    nname="book-65152-9168_1-3073556_" type="bar"  ddt-pit="7" dd_name="7">
                                                    <span class="num num7">7</span>
                                                    <p class="name" ddt-src="27921636"><a  title="恋爱心理必修课" href="http://product.dangdang.com/27921636.html?ref=book-65152-9168_1-3073556-6" target="_blank">恋爱心理必修课</a></p>            </li>
                                                <li class="line7 item"    nname="book-65152-9168_1-3073556_" class="on" type="item" style='display:none;' ddt-pit="7" dd_name="7">
                                                    <span class="num num7">7</span>
                                                    <a class="img" href="http://product.dangdang.com/27921636.html"  target="_blank" ><img src='http://img3m6.ddimg.cn/72/30/27921636-1_l_16.jpg' alt='恋爱心理必修课' /></a><p class="name" ddt-src="27921636"><a  title="恋爱心理必修课" href="http://product.dangdang.com/27921636.html?ref=book-65152-9168_1-3073556-6" target="_blank">恋爱心理必修课</a></p><p class="price"><span class="rob"><span class="sign">&yen;</span><span class="num">35</span><span class="tail">.40</span></span><span class="price_r"><span class="sign">&yen;</span><span class="num">59</span><span class="tail">.00</span></span></p><p class="link "><span></span><a  target="_blank" href="http://product.dangdang.com/27921636.html?point=comment_point">239</a>条评论</p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                                                <li class="line8 bar"    nname="book-65152-9168_1-3073556_" type="bar"  ddt-pit="8" dd_name="8">
                                                    <span class="num num8">8</span>
                                                    <p class="name" ddt-src="27925584"><a  title="刻意观察" href="http://product.dangdang.com/27925584.html?ref=book-65152-9168_1-3073556-7" target="_blank">刻意观察</a></p>            </li>
                                                <li class="line8 item"    nname="book-65152-9168_1-3073556_" class="on" type="item" style='display:none;' ddt-pit="8" dd_name="8">
                                                    <span class="num num8">8</span>
                                                    <a class="img" href="http://product.dangdang.com/27925584.html"  target="_blank" ><img src='http://img3m4.ddimg.cn/60/19/27925584-1_l_3.jpg' alt='刻意观察' /></a><p class="name" ddt-src="27925584"><a  title="刻意观察" href="http://product.dangdang.com/27925584.html?ref=book-65152-9168_1-3073556-7" target="_blank">刻意观察</a></p><p class="price"><span class="rob"><span class="sign">&yen;</span><span class="num">19</span><span class="tail">.90</span></span><span class="price_r"><span class="sign">&yen;</span><span class="num">39</span><span class="tail">.80</span></span></p><p class="link "><span></span><a  target="_blank" href="http://product.dangdang.com/27925584.html?point=comment_point">15</a>条评论</p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/hg.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/hg.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                                                <li class="line9 bar"    nname="book-65152-9168_1-3073556_" type="bar"  ddt-pit="9" dd_name="9">
                                                    <span class="num num9">9</span>
                                                    <p class="name" ddt-src="27926909"><a  title="心理学经典必读系列：乌合之众+梦的解析+自卑与超越+性学三论+人性的弱点" href="http://product.dangdang.com/27926909.html?ref=book-65152-9168_1-3073556-8" target="_blank">心理学经典必读系列：乌合之众</a></p>            </li>
                                                <li class="line9 item"    nname="book-65152-9168_1-3073556_" class="on" type="item" style='display:none;' ddt-pit="9" dd_name="9">
                                                    <span class="num num9">9</span>
                                                    <a class="img" href="http://product.dangdang.com/27926909.html"  target="_blank" ><img src='http://img3m9.ddimg.cn/98/12/27926909-1_l_3.jpg' alt='心理学经典必读系列：乌合之众+梦的解析+自卑与超越+性学三论+人性的弱点' /></a><p class="name" ddt-src="27926909"><a  title="心理学经典必读系列：乌合之众+梦的解析+自卑与超越+性学三论+人性的弱点" href="http://product.dangdang.com/27926909.html?ref=book-65152-9168_1-3073556-8" target="_blank">心理学经典必读系列：乌合之众+梦的解析+自</a></p><p class="price"><span class="rob"><span class="sign">&yen;</span><span class="num">39</span><span class="tail">.80</span></span><span class="price_r"><span class="sign">&yen;</span><span class="num">186</span><span class="tail">.40</span></span></p><p class="link "><span></span><a  target="_blank" href="http://product.dangdang.com/27926909.html?point=comment_point">48</a>条评论</p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/xsq.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/xsq.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                                                <li class="line10 bar"    nname="book-65152-9168_1-3073556_" type="bar"  ddt-pit="10" dd_name="10">
                                                    <span class="num num10">10</span>
                                                    <p class="name" ddt-src="27914916"><a  title="当爱变成了情感操纵：如何摆脱以爱为名的控制，重寻亲密、自在的情感关系" href="http://product.dangdang.com/27914916.html?ref=book-65152-9168_1-3073556-9" target="_blank">当爱变成了情感操纵：如何摆脱</a></p>            </li>
                                                <li class="line10 item"    nname="book-65152-9168_1-3073556_" class="on" type="item" style='display:none;' ddt-pit="10" dd_name="10">
                                                    <span class="num num10">10</span>
                                                    <a class="img" href="http://product.dangdang.com/27914916.html"  target="_blank" ><img src='http://img3m6.ddimg.cn/84/7/27914916-1_l_3.jpg' alt='当爱变成了情感操纵：如何摆脱以爱为名的控制，重寻亲密、自在的情感关系' /></a><p class="name" ddt-src="27914916"><a  title="当爱变成了情感操纵：如何摆脱以爱为名的控制，重寻亲密、自在的情感关系" href="http://product.dangdang.com/27914916.html?ref=book-65152-9168_1-3073556-9" target="_blank">当爱变成了情感操纵：如何摆脱以爱为名的控</a></p><p class="price"><span class="rob"><span class="sign">&yen;</span><span class="num">22</span><span class="tail">.50</span></span><span class="price_r"><span class="sign">&yen;</span><span class="num">45</span><span class="tail">.00</span></span></p><p class="link "><span></span><a  target="_blank" href="http://product.dangdang.com/27914916.html?point=comment_point">66</a>条评论</p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/xsq.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/xsq.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                                            </ul>
                                            <a       nname="book-65152-9168_1-3073559_1" href="http://bang.dangdang.com/books/newhotsales/01.31.00.00.00.00-recent7-0-0-1-1" target="_blank" title="查看完整榜单>>"  class="more_top" ddt-pit="1" ddt-src="http://bang.dangdang.com/books/newhotsales/01.31.00.00.00.00-recent7-0-0-1-1" dd_name="更多_1">
                                                查看完整榜单>>                        </a>
                                        </div></textarea>                                    </div>


    </div>
</div>


</div></div><div class="spacer c_spacer"></div></div></div></div>
    <div class="home_screen_cai " id="guess_like" >
    </div>
    <script src="https://cdn.bootcss.com/holder/2.9.4/holder.min.js">
        Holder.addTheme("new", {
            fg: "#ccc",
            bg: "#000",
            size: 10,
            margin:auton
        }).addImage("holder.js/1200x400?theme=new", "#test").run();
    </script>
    <!-- 推荐-->
<%--        <div class="main">--%>
<%--            <div class="heading3">--%>
<%--                <h3>为您推荐</h3>--%>
<%--                <hr style="border-bottom: 5px solid #FF3333;">--%>
<%--            </div>--%>

<%--            <!--</div>-->--%>
<%--            <div id="main">--%>
<%--                <!--单个盒子-->--%>
<%--                <div class="box">--%>
<%--                    <!--图片盒子-->--%>
<%--                    <div class="pic">--%>
<%--                        <img src="/index/images/101.jpg"/>--%>
<%--                        <p class="name" ddt-src="27921892">--%>
<%--                        <a  title="吉祥纹莲花楼（当当专享签名本）" href=""  target="_blank">吉祥纹莲花楼</a></p>--%>
<%--                        <p class="author"><span class="author_t"></span>藤萍 著，星文文化 出品</p>--%>
<%--                        <p class="price"><span class="rob"><span class="sign">&yen;</span>--%>
<%--                        <span class="num">89</span><span class="tail">.90</span></span>--%>
<%--                            </p>--%>

<%--                    </div>--%>

<%--                </div>--%>
<%--                <!--单个盒子-->--%>
<%--                <div class="box">--%>
<%--                    <!--图片盒子-->--%>
<%--                    <div class="pic">--%>
<%--                        <img src="/index/images/101.jpg"/>--%>
<%--                        <p class="name" ddt-src="27921892">--%>
<%--                            <a  title="吉祥纹莲花楼（当当专享签名本）" href=""  target="_blank">吉祥纹莲花楼</a></p>--%>
<%--                        <p class="author"><span class="author_t"></span>藤萍 著，星文文化 出品</p>--%>
<%--                        <p class="price"><span class="rob"><span class="sign">&yen;</span>--%>
<%--                        <span class="num">89</span><span class="tail">.90</span></span>--%>
<%--                    </div>--%>

<%--                </div>--%>
<%--                <!--单个盒子-->--%>
<%--                <div class="box">--%>
<%--                    <!--图片盒子-->--%>
<%--                    <div class="pic">--%>
<%--                        <img src="/index/images/101.jpg"/>--%>
<%--                        <p class="name" ddt-src="27921892">--%>
<%--                            <a  title="吉祥纹莲花楼（当当专享签名本）" href=""  target="_blank">吉祥纹莲花楼</a></p>--%>
<%--                        <p class="author"><span class="author_t"></span>藤萍 著，星文文化 出品</p>--%>
<%--                        <p class="price"><span class="rob"><span class="sign">&yen;</span>--%>
<%--                        <span class="num">89</span><span class="tail">.90</span></span>--%>
<%--                    </div>--%>

<%--                </div>--%>
<%--                <!--单个盒子-->--%>
<%--                <div class="box">--%>
<%--                    <!--图片盒子-->--%>
<%--                    <div class="pic">--%>
<%--                        <img src="/index/images/101.jpg"/>--%>
<%--                        <p class="name" ddt-src="27921892">--%>
<%--                            <a  title="吉祥纹莲花楼（当当专享签名本）" href=""  target="_blank">吉祥纹莲花楼</a></p>--%>
<%--                        <p class="author"><span class="author_t"></span>藤萍 著，星文文化 出品</p>--%>
<%--                        <p class="price"><span class="rob"><span class="sign">&yen;</span>--%>
<%--                        <span class="num">89</span><span class="tail">.90</span></span>--%>
<%--                    </div>--%>

<%--                </div>--%>
<%--                <!--单个盒子-->--%>
<%--                <div class="box">--%>
<%--                    <!--图片盒子-->--%>
<%--                    <div class="pic">--%>
<%--                        <img src="/index/images/101.jpg"/>--%>
<%--                        <p class="name" ddt-src="27921892">--%>
<%--                            <a  title="吉祥纹莲花楼（当当专享签名本）" href=""  target="_blank">吉祥纹莲花楼</a></p>--%>
<%--                        <p class="author"><span class="author_t"></span>藤萍 著，星文文化 出品</p>--%>
<%--                        <p class="price"><span class="rob"><span class="sign">&yen;</span>--%>
<%--                        <span class="num">89</span><span class="tail">.90</span></span>--%>
<%--                    </div>--%>

<%--                </div>--%>
<%--                <!--单个盒子-->--%>
<%--                <div class="box">--%>
<%--                    <!--图片盒子-->--%>
<%--                    <div class="pic">--%>
<%--                        <img src="/index/images/101.jpg"/>--%>
<%--                        <p class="name" ddt-src="27921892">--%>
<%--                            <a  title="吉祥纹莲花楼（当当专享签名本）" href=""  target="_blank">吉祥纹莲花楼</a></p>--%>
<%--                        <p class="author"><span class="author_t"></span>藤萍 著，星文文化 出品</p>--%>
<%--                        <p class="price"><span class="rob"><span class="sign">&yen;</span>--%>
<%--                        <span class="num">89</span><span class="tail">.90</span></span>--%>
<%--                    </div>--%>

<%--                </div>--%>
<%--                <!--单个盒子-->--%>
<%--                <div class="box">--%>
<%--                    <!--图片盒子-->--%>
<%--                    <div class="pic">--%>
<%--                        <img src="/index/images/101.jpg"/>--%>
<%--                        <p class="name" ddt-src="27921892">--%>
<%--                            <a  title="吉祥纹莲花楼（当当专享签名本）" href=""  target="_blank">吉祥纹莲花楼</a></p>--%>
<%--                        <p class="author"><span class="author_t"></span>藤萍 著，星文文化 出品</p>--%>
<%--                        <p class="price"><span class="rob"><span class="sign">&yen;</span>--%>
<%--                        <span class="num">89</span><span class="tail">.90</span></span>--%>
<%--                    </div>--%>

<%--                </div>--%>
<%--                <!--单个盒子-->--%>
<%--                <div class="box">--%>
<%--                    <!--图片盒子-->--%>
<%--                    <div class="pic">--%>
<%--                        <img src="/index/images/101.jpg"/>--%>
<%--                        <p class="name" ddt-src="27921892">--%>
<%--                            <a  title="吉祥纹莲花楼（当当专享签名本）" href=""  target="_blank">吉祥纹莲花楼</a></p>--%>
<%--                        <p class="author"><span class="author_t"></span>藤萍 著，星文文化 出品</p>--%>
<%--                        <p class="price"><span class="rob"><span class="sign">&yen;</span>--%>
<%--                        <span class="num">89</span><span class="tail">.90</span></span>--%>
<%--                    </div>--%>

<%--                </div>--%>
<%--                <!--单个盒子-->--%>
<%--                <div class="box">--%>
<%--                    <!--图片盒子-->--%>
<%--                    <div class="pic">--%>
<%--                        <img src="/index/images/101.jpg"/>--%>
<%--                        <p class="name" ddt-src="27921892">--%>
<%--                            <a  title="吉祥纹莲花楼（当当专享签名本）" href=""  target="_blank">吉祥纹莲花楼</a></p>--%>
<%--                        <p class="author"><span class="author_t"></span>藤萍 著，星文文化 出品</p>--%>
<%--                        <p class="price"><span class="rob"><span class="sign">&yen;</span>--%>
<%--                        <span class="num">89</span><span class="tail">.90</span></span>--%>
<%--                    </div>--%>

<%--                </div>--%>
<%--                <!--单个盒子-->--%>
<%--                <div class="box">--%>
<%--                    <!--图片盒子-->--%>
<%--                    <div class="pic">--%>
<%--                        <img src="/index/images/101.jpg"/>--%>
<%--                        <p class="name" ddt-src="27921892">--%>
<%--                            <a  title="吉祥纹莲花楼（当当专享签名本）" href=""  target="_blank">吉祥纹莲花楼</a></p>--%>
<%--                        <p class="author"><span class="author_t"></span>藤萍 著，星文文化 出品</p>--%>
<%--                        <p class="price"><span class="rob"><span class="sign">&yen;</span>--%>
<%--                        <span class="num">89</span><span class="tail">.90</span></span>--%>
<%--                    </div>--%>

<%--                </div>--%>

<%--                <!--单个盒子标签复制20次...图片名字改改...-->--%>
<%--            </div>--%>

<%--            <!--jQuery方式需要引入jQuery库,JS方式与CSS方式都要注释掉-->--%>
<%--            <script src="/index/js/jquery-3.4.0.min.js" type="text/javascript"></script>--%>
<%--            <!--引入JS,CSS方式注释掉-->--%>
<%--            <script src="/index/js/index.js" type="text/javascript"></script>--%>



<%--                    <div  class="book_parters "  name="图书馆首：战略合作伙伴_2" dd_name="战略合作伙伴"  ddt-area="403770" ddt-floor="403770" ddt-expose="on" >--%>
<%--       <div id='component_403770'></div>--%>
<%--</div><div class="spacer c_spacer"></div><div  class="book_1ad "  name="图书馆首：底部通栏广告_3" dd_name="底通"  ddt-area="403771" ddt-floor="403771" ddt-expose="on" ><div id='component_403771'></div></div><div class="spacer c_spacer"></div><div  class="book_returntop_area "  name="图书馆首：回到顶部_4" dd_name="问卷调查"  ddt-area="403772" ddt-floor="403772" ddt-expose="on" >--%>
<%--        <div id='component_403772'></div>--%>
<%--        <div  class="con book_yjdc"     >--%>
<%--        <a       nname="book-65152-9156_4-503233_1" href="http://survey.dangdang.com/html/2488.html" target="_blank" title="新版调研"  class="" ddt-pit="1" ddt-src="http://survey.dangdang.com/html/2488.html" dd_name="有奖调查_1">--%>
<%--    新版调研                        </a>--%>
<%--</div><div  class="con book_returntop"     ><a href=javascript:void(0);  ddt-pit='1' ddt-src=javascript:void(0); dd_name=回到顶部>返回顶部</a></div></div><div class="spacer c_spacer"></div>--%>

<%--    <div class="spacer c_spacer"></div></div></div><style></style>--%>
<script type="text/javascript" src="http://book.dangdang.com/Standard/Framework/Extend/hosts/js/jquery/lazyload181.js"></script>
<script type="text/javascript" src="http://book.dangdang.com/Standard/Framework/Extend/hosts/js/jquery/jquery.imgmask.js"></script>
<script type="text/javascript" src="http://book.dangdang.com/Standard/Framework/Extend/hosts/js/mix.js"></script>
<script type="text/javascript" src="http://book.dangdang.com/Standard/Framework/Extend/hosts/js/jquery/jquery.jtab.js"></script>
<script type="text/javascript" src="http://book.dangdang.com/Standard/Framework/Extend/hosts/js/jquery/jquery.livequery.min.js"></script>
<script type="text/javascript" src="http://recosys.dangdang.com/realdata/js/bookhome/collect.js"></script>
<script type="text/javascript">
    $(function () {
        CC.bookHome();
    })
</script>
<script type="text/javascript">
    (function() {
        var _analysis = document.createElement('script');
        _analysis.type = 'text/javascript';
        _analysis.async = true;
        _analysis.src = ('https:' == document.location.protocol ? '' : 'http://rum.xdy-cdn.cn/probe/download/_xdy_cdn_rum.js');
        // _analysis.src = ('https:' == document.location.protocol ? '' : 'http://rum.xdy-cdn.cn/probe/download/_xdy_cdn_rum_debug.js'); 
        var script = document.getElementsByTagName('script')[0]; script.parentNode.insertBefore(_analysis, script);
    })();
</script>
<script type="text/javascript">
</script>
<script charset="gb2312" type="text/javascript">var width = 1; narrow = 0;</script>
<script src="//static.dangdang.com/js/header2012/pagetop2015_0827.js?20180908" charset="gb2312" type="text/javascript"></script>
<script src="//static.dangdang.com/js/header2012/dd.menu-aim.js?20180908" charset="gb2312" type="text/javascript"></script>
<script type="text/javascript">
    var newsuggesturl = "//schprompt.dangdang.com/suggest_new.php?";
    var nick_num = 2;
    initHeaderOperate();Suggest_Initialize("key_S");
    if(!window.onload){
        window.onload=function(){if(sug_gid("label_key").style.visibility=="visible")sug_gid(search_input_id).value="";}
    }else{
        var funcload=window.onload;
        window.onload=function(){funcload();if(sug_gid("label_key").style.visibility=="visible")sug_gid(search_input_id).value="";}
    }
    ddmenuaim(document.getElementById("menulist_content"),{activate: activateSubmenu,deactivate: deactivateSubmenu});
</script>
<script>
    if($('.storey_three .pic').length==0){$('.storey_three').hide();}
    //console.log( $('.storey_five .book_reco_area').length,$('.storey_five .pic').length );
    if($('.storey_five .pic').length==0 && $('.storey_five .c_spacer').length!=3){$('.storey_five').hide();}
    if($('.storey_three .book_1ad .pic').length==0){$('.storey_three .book_1ad').hide();}
    if($('.storey_five .book_1ad .pic').length==0){$('.storey_five .book_1ad').hide();}
    if($('.storey_three .book_3ad .pic').length==0){$('.storey_three .book_3ad').hide();}
    if($('.storey_five .book_3ad .pic').length==0){$('.storey_five .book_3ad').hide();}
</script><script>
    $(function(){
        $('.pic_top_long').attr('dd_name','图首小巨幕')
    });
</script><script>
    $(function(){
        $('.book_vip .list_aa li .price').parent().addClass('small_img');
    });
</script><script>
    $(window).scroll(function(){
        if($(window).scrollTop()>=500){
            $(".book_returntop").css("display", "block");
        }else{
            $(".book_returntop").css("display", "none");
        }
    });
    $(".book_returntop a").click(function(){$('body,html').animate({scrollTop:0},100);
    });

</script>

<script type="text/javascript">
    if($('.storey_five .book_3ad .pic,.storey_five .book_1ad .pic').length>0){$('.book_reco_area').attr('style','padding-top: 20px; border-top: 1px solid #eaeaea; ');}
    var click_count = 1;
    function change_product(){
        var pro_obj = $(".book_reco_pro .list_aa").find("li");
        var pro_count = pro_obj.length;
        //初始化 显示
        if(pro_count<=0){
            return ;
        }
        //可更换的次数
        var pages = parseInt(pro_count/10);

        if(pages>1){
            if(click_count<=(pages-1)){
                show_product(click_count,pro_obj);
                click_count++;
            }else{
                show_product(0,pro_obj);
                click_count=1
            }

        }
    }
    function show_product(click_count,pro_obj){
        pro_obj.css('display','none');
        var curr_index = click_count*10;
        $(".book_reco_pro li").slice(curr_index, curr_index+10).css('display','block');

    }

</script><script>
    $(function(){
        $(".fix_box .fix_erweima .little").hover(
                function () {
                    $(".fix_box .fix_erweima .big").css("display","block");
                },
                function () {
                    $(".fix_box .fix_erweima .big").css("display","none");
                }
        );
    });
</script><script>
    $('.level_one').each(function(){
        if($(this).height() > $(this).find('.submenu').height() + 23){
            $(this).find('.submenu').height($(this).height());
        }
    });
    $('.sidemenu').find('div[father=1]').each(function(){
        var son_len=$(this).find('dl[son=1] dt:empty').length;
        var  sec_cate=$(this).find('.sec_cate:empty').length;
        if(sec_cate>0){$(this).find('.sec_cate').remove();}
        if(son_len>0){
            $(this).remove();
        }else{
            $(this).find('dl[son=1]').find('dt').wrapInner("<span></span>");
            $(this).find('dl[son=1]').find('dd').addClass('dd_level1');
        }
    });
    var fath_len=$('.sidemenu').find('div[father=1]').length-1;
    $('.sidemenu').find('div[father=1]').eq(fath_len).addClass('last');
    $('.eject_left').find('dd>a').each(function(){
        $(this).html("<span>"+$(this).html()+"</span>")
    });
    $('.eject_left').each(function(){
        var dl_len=$(this).find('dl').length-1;
        $(this).find('dl').eq(dl_len).addClass('last');
    });
    $(function(){
        $('.level_one').each(function(e){
            var submenu = $(this).find('.submenu');
            var dl_length=submenu.find('dl').length;
            submenu.hide();
            if(dl_length<1){
                $(this).find('.primary_dl dt span').css('background-image','none');
            }
            $(this).hover(function(){
                if(dl_length>0){
                    $(this).addClass('on');
                    $(this).find('.submenu').show();
                    var thisTop = -1;
                    var thisO = $(this), thisSub = thisO.find('.submenu'),thisBody = $('.flq_body');
                    var thisOOffsetT = parseFloat(thisO.offset().top, 10),
                            thisOH = parseFloat(thisO.outerHeight(), 10),
                            thisBodyOffsetT = parseFloat(thisBody.offset().top, 10),
                            thisSubH = parseFloat(thisSub.outerHeight(), 10)

                    var winH = parseFloat($(window).height()),
                            winScrollTop = parseFloat($(window).scrollTop(), 10);

                    if(thisOOffsetT < winScrollTop){
                        thisTop = thisOOffsetT - thisBodyOffsetT - 2;
                    }else{
                        if(winScrollTop - thisBodyOffsetT > thisOOffsetT + thisOH - thisSubH - thisBodyOffsetT - 2){
                            thisTop = winScrollTop - thisBodyOffsetT
                        }else{
                            thisTop = thisOOffsetT + thisOH - thisSubH - thisBodyOffsetT - 2;
                            isIe = 1;
                        }
                    }
                    if(thisTop < -1){
                        thisTop = -1;
                    }
                    thisSub.css({'top': thisTop + "px"})
                }
            },function(){
                $(this).removeClass('on');
                if(dl_length>0){
                    $(this).find('.submenu').hide();
                }
            });
        });
        $('.submenu').each(function(){
            var slen=$(this).find("dl").length;
            if(slen<1){$(this).remove;}
        });
    });
    var c_h = 1063-74-$('.sidemenu').height();

    $('.hotsell').find('.content').css({'height':c_h+'px','overflow':'hidden'});

    $('.level_one').each(function(){
        $(this).find('.primary_dl dd a').last().addClass('last_a');
    });
</script> <script>
    $(function(){

        $('.img').live('mouseenter',function(){ $(this).parent('li').find(".name a").attr("style","text-decoration: underline;color: #ec7814");});

        $('.img').live('mouseleave',function(){  $(this).parent('li').find(".name a").attr("style"," ");});


    })
</script><script type="text/javascript">
    $(function(){
        var pro_li = $(".book_presell .list_aa").find("li");


        if(!pro_li||pro_li.length<2){
            $(".book_presell .btn_brand_prev").hide();
            $(".book_presell .btn_brand_next").hide();
        }

        $('.book_presell .mix_marquee_tab').css({"left":(238-(pro_li.length*20-10))/2+"px"});
    })
</script>            <div id="footer">
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
            <div class="footer_copyright"><span>Copyright (C) xun书, All Rights Reserved</span><a href="" target="_blank" class="footer_img" rel="nofollow"><img src="http://img60.ddimg.cn/upload_img/00459/index/validate.gif"></a><span><a

                    href="" target="_blank" rel="nofollow">京ICP证041189号</a></span><span>出版物经营许可证 新出发京批字第直0673号</span></div>
        </div>
    </div>
</div>

<% if(session.getAttribute("user")!=null){%>
    <script src="/index/js/shoppingNum.js" type="application/javascript" charset="UTF-8"> </script>
        <%}else {%>
    <script charset="UTF-8" type="text/javascript" > function $(){ document.getElementById("shoppingcount").innerHTML="0"; }
    </script> <%}%>
<script src="//static.dangdang.com/js/login/check_snbrowse.js?20190919" type="text/javascript"></script>
<script  type="text/javascript">login_session.browsePageOperate();</script>
<script type="text/javascript" src="//click.dangdang.com/js_tracker.js?20190919"></script>
<script type="text/javascript" src="//databack.dangdang.com/collect.js?20190919"></script>
<script type="text/javascript" src="//databack.dangdang.com/store.js?20190919"></script>

       </body>
</html>
    