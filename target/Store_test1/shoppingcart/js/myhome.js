var myhomePageVar = {
		favoritesPageNum: 1,//我的收藏当前显示第几页
		favoritesPageSize: 5 ,//我的收藏每页显示几条数据
		productUrl: 'http://product.dangdang.com/' //单品页url
};
$(document).ready(function(){
	//获取用户信息
	$(".user_photo").hover(function(){
		$(this).find('.edit_box').css('display','block');
	},function(){
		$(this).find('.edit_box').css('display','none');
	});
	$('.account_message li').on('mouseover', function(e){
		$(this).find('.pic').addClass('cash_up');		
	});
	$('.account_message li').on('mouseout', function(e){
		$(this).find('.pic').removeClass('cash_up');
		
	});
	getUserInfo();
	
	//获取订单信息
	getOrderInfo();
	//获取收藏信息
	getFavoriteInfo();
	//设置头部下方的广告
	//DD_ADSMART.fetchCPT(12217,1,2);
	getTopAd();	
	//积分签到弹层初始化
	initCheckinPan('J_muneAndContentWrap', 'J_checkInBtn' ,6);
	
	//关闭签到弹层时，刷新积分签到页面
    $('#J_checkInOuterPan').on('click', '.j_close_checkin_pan_wrap', function(){
    	getUserInfo();
    });
    
});

//
var ajax_finish = false;
var ajax_run = false;

var silver_card_pub = 188.00;   //升级银卡会员所需消费的图书音像金额
var gold_card_pub = 388.00;   //升级金卡会员所需消费的图书音像金额
var jade_card_pub = 588.00;   //升级钻石卡会员所需消费的图书音像金额

var silver_card_total = 888.00;    //升级银卡会员所需消费的总额
var gold_card_total = 1880.00;   //升级金卡会员所需消费的总额
var jade_card_total = 2880.00;   //升级钻石卡会员所需消费的总额

//获取账号信息
function getUserInfo(){
	jQuery('#J_userInfoWrap').load('', myhomeConf.myhome['userInfo'],function(){
		//打印签到按钮
		printCheckInBtnFun (6);
		
		//账号信息部分中用户昵称,取值cookie
		$('#J_userNick').html(utilJS.getCookie_one("show_name","dangdang"));
		//我的头像 鼠标放上去之后显示“编辑资料”按钮
		$(".user_photo").hover(function(){
			$(this).find('.edit_box').css('display','block');
		},function(){
			$(this).find('.edit_box').css('display','none');
		});
		$(".vip_type_box").hide();
		
		$(".vip_type1, .vip_type_box1").mouseover(function(){
			// ajax 获取用户消费信息
			var vip_code = $("#vip_code").val();
			if(ajax_run){
				return false;
			}
			if(ajax_finish){
				$(".vip_type_box").show();
				return false;
			}
			if(vip_code != 10) 
			{
				ajax_run = true;
				$.ajax({
					url: "/myhome/mySpendInfo",
					//dataType: "json",
					error: function() {
						ajax_run=false;
					},
					success: function(msg){
						utilJS.Ajax.checkLoginStatus(msg, myhomeConf.loginReturnUrl.homepage);
						var msg = JSON.parse(msg);
						if(msg.status == 1){
							return false;
						}
						var data = msg.data;
						
						// 构造html
						var html = '<div class="vip_type_box" style="display:none;">' 
							+ '<h2>会员消费额</h2>'
							+ '<table><tr><th class="pt10">一年内图书音像消费：</th><td class="pt10">￥' + data.pubCash.toFixed(2) + '</td></tr>'
							+ '<tr><th>一年内总消费：</th><td>￥' + data.totalCash.toFixed(2) + '</td></tr>';
						
						// refer to user.php
						var pub_need = 0.00;
						var total_need = 0.00;
						var vip_pub_need = 0.00;
						var vip_total_need = 0.00;
						
						var last_year_pub_cash = data.pubCash;
						var last_year_success_cash = data.totalCash;
						
						var vip_cust_pub_cash = data.vipPubCash;
						var vip_cust_start_cash = data.vipTotalCash;
						
						if(vip_code == 3) { //白银
						    pub_need = gold_card_pub - last_year_pub_cash;
						    total_need = gold_card_total - last_year_success_cash;
						    
						    vip_pub_need = silver_card_pub - vip_cust_pub_cash;
						    vip_total_need = silver_card_total - vip_cust_start_cash;
						}else if(vip_code == 1){ // 黄金
						    pub_need = jade_card_pub - last_year_pub_cash;
						    total_need = jade_card_total - last_year_success_cash;
						    
						    vip_pub_need = gold_card_pub - vip_cust_pub_cash;
						    vip_total_need = gold_card_total - vip_cust_start_cash;
						}else if(vip_code != 2 && vip_code != 10) {
						    pub_need = silver_card_pub - last_year_pub_cash;
						    total_need = silver_card_total - last_year_success_cash;	
						}
						
						if(vip_code != 2 ){
							html += '<tr><th class="pt10">升级还需消费图书音像：</th><td class="pt10">￥' + pub_need.toFixed(2) + '</td></tr>';
							html += '<tr><th>或消费任意商品：</th><td>￥'+ total_need.toFixed(2) +'</td></tr>';
						}
						
						if(vip_code != 0){
			                if(vip_pub_need <= 0 || vip_total_need <= 0) {
								html += '<tr><th class="pt10">会员期内图书音像消费：</th><td class="pt10">￥' + data.vipPubCash.toFixed(2) + '</td></tr>';
								html += '<tr><th>会员内总消费：</th><td>￥' + data.vipTotalCash.toFixed(2) + '</td></tr>';
								html += '<tr><th class="pt10" colspan="2" style="text-align:left;">恭喜您会员有效期后可顺利保级!</th></tr>';
			                }else{
			                	html += '<tr><th class="pt10">会员期内图书音像消费：</th><td class="pt10">￥' + vip_cust_pub_cash.toFixed(2) + '</td></tr>';
			                	html += '<tr><th>会员内总消费：</th><td>￥' + vip_cust_start_cash.toFixed(2) + '</td></tr>';
			                	html += '<tr><th class="pt10">保级还需消费图书音像：</th><td class="pt10">￥' + vip_pub_need.toFixed(2) + '</td></tr>';
			                	html += '<tr><th>或消费任意商品：</th><td>￥' + vip_total_need.toFixed(2) + '</td></tr>';
			                }
						}
						html += '</table></div>';
						
						$(".vip_box").append(html);
						$(".vip_type_box").show();
						ajax_run = false;
						ajax_finish=true;
					},
					complete: function (){
						ajax_run = false;
					}
				});
			}
			// vip_code
			//$(".vip_type_box").show();
		});
		
		$(".vip_type, .vip_type_box").mouseout(function(){
			$(".vip_type_box").hide();  
		});
		
		$('.account_message li').on('mouseover', function(e){
			$(this).find('.pic').addClass('cash_up');		
		});
		$('.account_message li').on('mouseout', function(e){
			$(this).find('.pic').removeClass('cash_up');
			
		});
	});
}
//获取订单信息
function getOrderInfo(){
	jQuery('#J_myOrderWrap').load('', myhomeConf.myhome['myorder'],function(){
		//我的订单跟踪信息隐藏与显示
		$(".follow").hover(function(){
			$(this).find('.follow_popup').css('display','block');
		},function(){
			$(this).find('.follow_popup').css('display','none');
		});	
	});
}
//获取我的收藏
function getFavoriteInfo(){
	jQuery('#J_myFavoritesWrap').load('', myhomeConf.myhome['myfavorites'],function(){
		//商品收藏
		getFavorites(myhomePageVar.favoritesPageNum, myhomePageVar.favoritesPageSize);
		
		//我的收藏查看上一页
		$('#J-favoritesShoWList').on('click', '#J-favoritesPre', function(){
			showFavoritesPre();
		});	
		//我的收藏查看下一页
		$('#J-favoritesShoWList').on('click', '#J-favoritesNext', function(){
			showFavoritesNext();
		});
	});
}
//设置头部广告
function getTopAd(){
	$('#adDiv').show();
	$('#J_adCptUrl').attr('href', 'http://a.dangdang.com/api/data/cpx/link/40820001/1');
	$('#J_adCptImg').attr('src', 'http://a.dangdang.com/api/data/cpx/img/40820001/1');
}
//获取我的收藏数据
function getFavorites(pageNum, pageSize){	
	var $myLeftMenu = $('#J-favoritesShoWList');
	var tpl_set = document.getElementById('J-favoritesTemp').innerHTML;
	var noDataHtml = document.getElementById('J-favoritesNoDataTemp').innerHTML;
	var compiled_set = juicer(tpl_set);
	var params = '&pageNum=' + pageNum + '&pageSize=' + pageSize;
	utilJS.Ajax.ajaxGetData('/favoriteList', params, function(data){
		if(data != ''){
			var info = JSON.parse(data);
			for(var i in info.data){
                info.data[i].str = "￥";
				//处理产品单品页路径
				info.data[i].product_url = myhomePageVar.productUrl + info.data[i].product_id + '.html';
				//处理产品图片路径
				info.data[i].product_img = utilJS.bussness.getProductImg(info.data[i].product_id, 'l', '');
				var digit_product = info.data[i].product_id.substr(0,3)
                if(digit_product == '196'){
                    info.data[i].str = "";
                }
			}
	        var html = compiled_set.render(info);
	        $myLeftMenu.html(html);
	        myhomePageVar.favoritesPageNum = pageNum;
		}else{
			$myLeftMenu.html(juicer(noDataHtml).render());
		}
    });
}
//我的收藏查看上一页
function showFavoritesPre(){
	var pageNum = myhomePageVar.favoritesPageNum - 1;
	getFavorites(pageNum, myhomePageVar.favoritesPageSize);
}
//我的收藏查看下一页
function showFavoritesNext(){
	var pageNum = myhomePageVar.favoritesPageNum + 1;
	getFavorites(pageNum, myhomePageVar.favoritesPageSize);
}