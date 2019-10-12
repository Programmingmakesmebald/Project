//收货人展示及隐藏
$('.pay_person').hover(function(){
    $(this).siblings('.address_detail').show();
},(function(){
    $(this).siblings('.address_detail').hide();
}));
//跟踪信息异步加载
/*$('.trace_info').hover(function(){
    var trace_order_detail =$(this).parent().parent().find('.trace_order_detail');
    var orderId = $(this).attr('order_id');
    if(trace_order_detail.html() == ''){
        $.ajax({
            type: 'GET',
            url: '/myOrder/getOrderTraceInfo',
            data: {
                'orderId':orderId
            },
            success: function (data) {
                if(data != ''){
                    utilJS.Ajax.checkLoginStatus(data,myhomeConf.loginReturnUrl.myOrder);
                    trace_order_detail.html(data);
                    trace_order_detail.show();
                }
            }
        });
    }else{
        trace_order_detail.show();
    }
},(function(){
    $(this).parent().parent().find('.trace_order_detail').hide();
}));*/
//跟踪信息异步加载
$('.trace_info').hover(function(){
    var trace_order_detail =$(this).parent().parent().find('.trace_order_detail');
    var orderId = $(this).attr('order_id');
    var packageIndex = $(this).attr('package_index');
    if(trace_order_detail.html() == ''){
        $.ajax({
            type: 'GET',
            url: '/myOrder/getOrderTraceInfoNew',
            data: {
                'orderId':orderId,
                'packageIndex':packageIndex
            },
            success: function (data) {
                if(data != ''){
                    utilJS.Ajax.checkLoginStatus(data,myhomeConf.loginReturnUrl.myOrder);
                    trace_order_detail.html(data);
                    trace_order_detail.show();
                }
            }
        });
    }else{
        trace_order_detail.show();
    }
},(function(){
    $(this).parent().parent().find('.trace_order_detail').hide();
}));
/*我的订单 积分显示*/
$(".score_block .score_show").css("display","none");
$(".score_block .score").hover(function(){
    $(this).parent().find(".score_show").css("display","block");
},function(){
    $(this).parent().find(".score_show").css("display","none");
});
//关闭窗口
$("#orderList").on('click','.close',function (){
    $(this).parent().hide();
});
//催货可以进行的操作
/*$("#orderList").on('click','.j_urge',function (){
    var urge_order_detail = $(this).parent().next(".urge_order_detail");
    var orderId = $(this).attr('order_id');
    var urge_receiver_mobile = $(this).attr('urge_receiver_mobile');
    var urge_button = $(this);
   $.ajax({  
            type: 'GET',
            url: '/myOrder/urgeActionCheck',
            data: {
                'orderId':orderId,
                'urgeReceiverMobile':urge_receiver_mobile
            },
            success: function (data) {
                if(data != ''){
//                    utilJS.Ajax.checkLoginStatus(data,myhomeConf.loginReturnUrl.myOrder);
                    if(data == 5){
                        urge_button.addClass('unable');
                    }else{
                        urge_order_detail.html(data);
                    }
                    urge_order_detail.show();
                }
            }
        });
});*/
//催货可以进行的操作
$("#orderList").on('click','.j_urge',function (){
    var urge_order_detail = $(this).parent().next(".urge_order_detail");
    var orderId = $(this).attr('order_id');
    var urge_receiver_mobile = $(this).attr('urge_receiver_mobile');
    var is_split_package = $(this).attr('isSplitPackage');
    var urge_button = $(this);
   $.ajax({  
            type: 'GET',
            url: '/myOrder/actionCheckByPackage',
            data: {
                'orderId':orderId,
                'urgeReceiverMobile':urge_receiver_mobile,
                'isSplitPackage':is_split_package
            },
            success: function (data) {
                if(data != ''){
//                    utilJS.Ajax.checkLoginStatus(data,myhomeConf.loginReturnUrl.myOrder);
                    if(data == 5){
                        urge_button.addClass('unable');
                    }else{
                        urge_order_detail.html(data);
                    }
                    urge_order_detail.show();
                }
            }
        });
});
////催货信息
$("#orderList").on('click','.j_close_urge',function (){
    $(this).parent().hide();
});
//选择催货方式
$("#orderList").on('click','.mobile_replay',function (){
    $(this).parent().next().children(".email_replay").removeClass('on');
    $(this).addClass('on');
    $(this).parent().parent().next('.choice_mobile').show();
    $(this).parent().parent().next().next('.choice_email').hide();
});
$("#orderList").on('click','.email_replay',function (){
    $(this).parent().prev().children(".mobile_replay").removeClass('on');
    $(this).addClass('on');
    $(this).parent().parent().next('.choice_mobile').hide();
    $(this).parent().parent().next().next('.choice_email').show();
});
//输入文字个数提示		
$('#orderList').on('keyup','.urge_message', function(){
        var len = $(this).val().length;
        $(this).parent().find('.urge_tips').hide();
        if(len > 500){
                $(this).val($(this).val().substring(0,500));
                $(this).parent().find('.j_tip_num').text(500);
                $(this).parent().find('.urge_tips').show();
        }
        else{
               $(this).parent().find('.urge_tips').hide();
                $(this).parent().find('.j_tip_num').text(len);				
        }
});
var mobile_phone_flag = 0;
var email_flag = 0;
//提交催货单
$("#orderList").on('click','.j_urge_form_submit',function (){
   var urge_info =  $(this).prev(".urge_form").serializeArray();
   var reply_type = $(this).prev(".urge_form").find("a.on").attr("value");
   var submit_error = $(this).next(".submit_error");
   var mobile = $(this).prev(".urge_form").find(".urge_mobile");
   var sucess_check = $(this).parent().parent().next(".new_pop");
   var parent_class = $(this).parent();
   if(reply_type == 1){
       if(mobile_phone_flag == 0){
           mobile_test(mobile);
           return;
       }
   }
   var orderId = $(this).parent().parent(".urge_order_detail").attr('order_id');
    $.ajax({
            type: 'GET',
            url: '/myOrder/addOrderUrgeInfo',
            data: {
                'orderId':orderId,
                'urge_info':urge_info,
                'reply_type':reply_type
            },
            success: function (data) {
                if(data == 1){
                     parent_class.hide();
                     sucess_check.show();
                }else if(data == 2){
                     parent_class.hide();
                     sucess_check.children(".con").html("该订单已经提交过催发货");
                     sucess_check.show();
                }else{
                    submit_error.show();
                }
            }
        });
});
//输入校验
//输入电话		
$('#orderList').on('keyup','.urge_mobile', function(){
        mobile_test($(this));
});
$('#orderList').on('change','.urge_mobile', function(){
	mobile_test($(this));
});
$('#orderList').on('keyup','.urge_email', function(){
        email_test($(this));
});
$('#orderList').on('change','.urge_email', function(){
	email_test($(this));
});
//mobile_test('#orderList .urge_mobile');
function mobile_test(obj){
	if(!(/^1[34578]\d{9}$/.test(obj.val()))){
		mobile_phone_flag = 0;
		if(obj.val() == ''){
			obj.parent().parent().find('.error').hide();
			obj.parent().parent().find('.error:eq(0)').show();
		}else{
			obj.parent().parent().find('.error').hide();
			obj.parent().parent().find('.error:eq(1)').show();
		}
	}else{
		mobile_phone_flag = 1;
		obj.parent().parent().find('.error').hide();
	}
}
//校验方法
function email_test(obj){
	if(!(/^([a-zA-Z0-9_-])+(\.([a-zA-Z0-9_-])+)*@([a-zA-Z0-9_-])+(\.([a-zA-Z0-9_-])+)+$/.test(obj.val()))){
                email_flag = 0;
		if(obj.val() == ''){
			obj.parent().parent().find('.error').hide();
			obj.parent().parent().find('.error:eq(0)').show();
		}else{
			obj.parent().parent().find('.error').hide();
			obj.parent().parent().find('.error:eq(1)').show();
		}
	}else{
		email_flag = 1;
		obj.parent().parent().find('.error').hide();
	}
}
//客服机器人
$(".customer_service").click(function () {
    var shopId = $(this).attr("shop_id");
    var im_param = {
        shop_id: shopId
    };
    var sys_param = {
        entrance_code: 'pc_order_myorder',
        position_code: 'main'
    };
    showImDialog(sys_param, im_param);
});

//商品图片展示
$(".j_productImg").hover(function(){
    $(this).parent().addClass('on');
    var offsetR = $(this).position().left + 70;
    $(this).siblings('.introduce_detail').show().css("left" ,offsetR +'px');
},(function(){
    $(this).parent().removeClass('on');
    $(this).siblings('.introduce_detail').hide();
}));
//定金鼠标划过显示
$(".deposit_price").hover(function(){
    $(this).siblings('.price_show').css("display", "block");
}, function(){
    $(this).siblings('.price_show').css("display", "none");
});
//判断是否有订单信息，以便显示分页组件
function getTotalPageNum() {
    if ((totalPageIndex >= 1)) {
        $('#head_currentPageIndex').text(currentPageIndex);
        $("#headPaging").show();
        //判断是否显示下一页
        if ((currentPageIndex == totalPageIndex)) {
            $("#head_nextPageIndex").hide();
        } else if (currentPageIndex < totalPageIndex) {
            $("#head_nextPageIndex").show();
        }
        //判断是否显示上一页
        if (currentPageIndex > 1) {
            $("#head_prePageIndex").show();
        } else if (currentPageIndex == 1) {
            $("#head_prePageIndex").hide();
        }
    } else if (totalPageIndex == 0) {
        $("#headPaging").hide();
    }
}
//回写订单数量
var totalPageIndex = parseInt($('#J-totalPageIndex').val());//总页码
var currentPageIndex=parseInt($('#J-currentPageIndex').val());//当前页码
getTotalPageNum();
//初始化合并支付
checkUnionSelect();//unionpay
//回写订单数量
getOrderCountAndWriteSpan();
//取消弹框选项选择
cancelInit();




