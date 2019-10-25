var myorderInfo = {
    searchType: 1,  //1: 订单状态筛选 时间段筛选  2：搜索查询
    statusNum: 0, //默认全部订单
    statusTime: 0 //默认为30天
};
//初始化订单列表
$("#J_loadingOrder").show();
$.ajax({
    type: 'GET',
    url: '/myOrder/list',
    data: {
        'searchType': myorderInfo.searchType,
        'statusCondition': myorderInfo.statusNum,
        'timeCondition': myorderInfo.statusTime,
        'page_current': 1
    },
    success: function (data) {
        utilJS.Ajax.checkLoginStatus(data,myhomeConf.loginReturnUrl.myOrder);
        //我的订单信息隐藏与显示
        $("#J_loadingOrder").hide();
        $('#J_order_list').html(data).show();
    }
});
//初始化
$(document).ready(function () {
//搜索框默认提示语初始化
    $('#J_orderSearchInput').placeholder({
        word: '商品名称/订单号/收货人姓名',
        color: '#999',
        evtType: 'focus',
        zIndex: 0,
        diffPaddingLeft: 0
    });
    //设置头部下方的广告
    DD_ADSMART.fetchCPT(40880001, 1, 2, false, '', 1);
    //初始化确认付款面板时间控件
    initLaydate();
});
//搜索订单
$('#J_orderSearchBut').click(function(){
    var keywords = $('#J_orderSearchInput').val();
    searchOrderList(keywords,1);
});
$('#J_orderSearchInput').keypress(function(e) {
    var ev = window.event || e;
    if(ev.keyCode == 13){
        var keywords = $('#J_orderSearchInput').val();
        searchOrderList(keywords,1);
    }
});
function searchOrderList(keywords,pageCurrent){
    myorderInfo.searchType = 2;
    myorderInfo.statusNum = 0;
    //设置订单状态为全部订单
    $('#J_orderMenuBorder').animate({left: 0}, 150);
    $("#J-orderTimeIndex").val(0);
    $(".t_menu").removeAttr('default');
    //下单时间为没有选中项
    $(".time_circle li").removeClass("time_sample");
    $(".time_show li span").removeClass("give_color");
    if(keywords != ''){
        $("#J_loadingOrder").show();
        $('#J_order_list').hide();
        $.ajax({
            type: 'GET',
            url: '/myOrder/list',
            data: {
                'keyword' : keywords,
                'searchType': myorderInfo.searchType,
                'statusCondition': myorderInfo.statusNum,
                'timeCondition': myorderInfo.statusTime,
                'pageCurrent': pageCurrent
            },
            success: function (data) {
                utilJS.Ajax.checkLoginStatus(data,myhomeConf.loginReturnUrl.myOrder);
                //我的订单信息隐藏与显示
                $("#J_loadingOrder").hide();
                $('#J_order_list').html(data).show();
            }
        });
    }
}
//订单状态查询显示效果
$(".j_menu").click(function(){
    var positionLeft = $(this).position().left;
    $('#J_orderMenuBorder').animate({left: positionLeft}, 150);
    var statusCondition = parseInt($(this).attr('statusCondition'));
    myorderInfo.statusNum = statusCondition;
    if(statusCondition > 1){
        myorderInfo.statusTime = 1;
    }else{
        myorderInfo.statusTime = 0;
    }
    myorderInfo.searchType = 1;
    $("#J_loadingOrder").show();
    $('#J_order_list').hide();
    //订单状态查询数据
    $.ajax({
        type: 'GET',
        url: '/myOrder/list',
        data: {
            'searchType': myorderInfo.searchType,
            'statusCondition': myorderInfo.statusNum,
            'timeCondition': myorderInfo.statusTime,
            'pageCurrent': 1
        },
        success: function (data) {
            utilJS.Ajax.checkLoginStatus(data,myhomeConf.loginReturnUrl.myOrder);
            //清空搜索框内容
            $('#J_orderSearchInput').val('');
            //我的订单信息隐藏与显示
            $("#J_loadingOrder").hide();
            $('#J_order_list').html(data).show();
            //禁止点击时间
            if(statusCondition == 0 ){
                $(".t_menu").removeAttr('default');
                $(".t_menu").removeClass('time_sample');
                $(".t_menu:eq(0)").addClass('time_sample');
            }else if( statusCondition > 1){
                $(".t_menu").removeAttr('default');
                $(".t_menu").removeClass('time_sample');
                $(".t_menu:eq(0)").attr('default','1');
                $(".t_menu:eq(1)").addClass('time_sample');
                $(".t_menu:eq(2)").attr('default','1');
                $(".t_menu:eq(3)").attr('default','1');
                $(".t_menu:eq(4)").attr('default','1');
            }else{
                $(".t_menu").removeAttr('default');
                $(".t_menu").removeClass('time_sample');
                $(".t_menu:eq(0)").addClass('time_sample');
                $(".t_menu:eq(1)").attr('default','1');
                $(".t_menu:eq(2)").attr('default','1');
                $(".t_menu:eq(3)").attr('default','1');
                $(".t_menu:eq(4)").attr('default','1');
            }
        }
    });
});
//订单时间查询
$(".t_menu").click(function(){
    if($(this).attr('default') != undefined){
        return false;
    }
    $(".time_show>ul>li>span").removeClass('give_color');
    $(".time_show>ul>li>span:eq("+$(this).index()+")").addClass('give_color');
    $(this).siblings().removeClass('time_sample');
    $(this).addClass('time_sample');
    var timeCondition = $(this).attr('timeCondition');
    myorderInfo.searchType = 1;
    myorderInfo.statusNum = 0;
    myorderInfo.statusTime = timeCondition;
    $("#J_loadingOrder").show();
    $('#J_order_list').hide();
    //订单状态查询数据
    $.ajax({
        type: 'GET',
        url: '/myOrder/list',
        data: {
            'searchType': myorderInfo.searchType,
            'statusCondition': myorderInfo.statusNum,
            'timeCondition': myorderInfo.statusTime,
            'pageCurrent': 1
        },
        success: function (data) {
            utilJS.Ajax.checkLoginStatus(data,myhomeConf.loginReturnUrl.myOrder);
            //清空搜索框内容
            $('#J_orderSearchInput').val('');
            //我的订单信息隐藏与显示
            $("#J_loadingOrder").hide();
            $('#J_order_list').html(data).show();
            $('#J_orderSearchInput').val('');

        }
    });
}).hover(function(){
    if($(this).attr('default') != undefined){
        $(this).addClass('default');
    }
},function(){
    if($(this).attr('default') != undefined){
        $(this).removeClass('default');
    }
});


//****我的订单删除操作，begin，@author:cuiqiaoyu date:20151224
var deleteorderElement = {
    //重刷页面
    refreshPage: function () {
        localReloadPage();
    },
///*********随机数*************** */
    getRamdom: function () {
        return Math.floor(Math.random() * (1000 + 1));
    },
//元素移动
    OrderAnimation: function ()
    {
        var PX = 'px';
        function createAnimElem(orderElems, offsetInfo) {
            var orderWidth = 0;
            var orderHeight = 0;
            var animElem = jQuery('<div id="J_order_list"></div>');
            var tableElem = jQuery('<div class="order_remind">');

            for (var i = 0; i < orderElems.length; i++)
            {
                orderWidth = Number(orderElems[i].width());
                orderHeight = Number(orderHeight) + Number(orderElems[i].height());
                tableElem.append(orderElems[i]);
            }

            animElem.append(tableElem).appendTo(document.body);

            // 设置新容器和节点的样式，以保持还在原来位置
            animElem.add(tableElem).css({
                width: orderWidth + PX,
                height: orderHeight + PX
            });

            animElem.css({
                position: 'absolute',
                top: offsetInfo.top + PX,
                left: offsetInfo.left + PX,
                overflow: 'hidden',
                margin: 'auto'
            });

            return animElem;
        }

        /**
         * @description 获取动画结束时的样式
         * @param endPointElem {NodeList} 动画终点的参照元素
         * @return {Object}
         */
        function getAnimEndStyle(endPointElem) {
            var scrollTop = jQuery(document).scrollTop();
            var endOffsetInfo = endPointElem.offset();
            var endOffsetTop = endOffsetInfo.top;

            return {
                width: 0,
                height: 0,
                top: ((scrollTop > endOffsetTop ? (scrollTop - 30) : endOffsetTop) + Number(endPointElem.height() / 2)) + PX,
                left: Number(endOffsetInfo.left + Number(endPointElem.width() / 2)) + PX
            };
        }

        return {
            /**
             * @description 激活动画
             * @param cfg {Object} 配置项：
             *  {
             *      el: {NodeList} 目标订单元素
             *      msg: {String} 可选，动画结束后的提示信息
             *      endPoint: {NodeList} 可选，用作动画结束点的参照元素
             *  }
             * @return void
             * @public
             */
            start: function (cfg) {
                var orderElem = cfg.el;
                var endPointElem = cfg.endPoint;
                var offsetInfo = cfg.offsetInfo;
                var animElem;
                var animEffect;
                var endStyle;

                if (endPointElem) {
                    animElem = createAnimElem(orderElem, offsetInfo);
                    animEffect = '';
                    endStyle = getAnimEndStyle(endPointElem);
                } else {
                    animEffect = 'easeOut';
                    animElem = orderElem;
                    endStyle = {opacity: 0};
                }

                animElem.animate(endStyle, 500, animEffect, function () {
                    animElem.remove();                //将元素从DOM中删除
                    var totalPageIndex =parseInt($('#J-totalPageIndex').val());;
                    var currentPageIndex = parseInt($("#J-currentPageIndex").val());

                    if (currentPageIndex < totalPageIndex) {//如果还有下一页订单，则刷新当前页

                        deleteorderElement.refreshPage();

                    }

                });
            }//start结束
        };

    },
    //关闭弹框
    closeWindow: function () {
        jQuery("#mainWin").hide();
        jQuery("#deleteSuccesswin").hide();
        jQuery("#deleteWin").hide();
    },
    //删除订单
    deleteOrder: function (orderIds) { // 待后面更新补充，@author:cuiqiaoyu  alter date:20151223
        $('#J_deleteOrderId').val(orderIds);
        if (orderIds && orderIds.length > 0) {
            jQuery("#mainWin").css({"display": "block"});
            jQuery("#deleteSuccesswin").css({"display": "block","margin-top":"-150px"});
            jQuery("#deleteWin").css({"display": "block"});

        } else {
            alert("no delete order!");
        }

    },
    //确认删除订单
    confirmDeleteOrder: function () {      //待更新，@author:cuiqiaoyu,date:20151224
        var orderId = $('#J_deleteOrderId').val();
        obj_id = "orderdeletelink_" + orderId;
        //调用后台删除处理
        var params = "&orderId=" + orderId;
        utilJS.Ajax.ajaxData('/myOrder/delete ', 'POST', params, function (data) { //更新前端展示效果
            if ((data != "")) {
                utilJS.Ajax.checkLoginStatus(data,myhomeConf.loginReturnUrl.myOrder);
                var data = JSON.parse(data);
                if( (data["code"] == '0')){
                    return_value = true;
                    var target = jQuery("#" + obj_id);
                    if (target.length > 0){
                        deleteorderElement.closeWindow();  //关闭弹出框
                        //console.log($deldiv);
                        var $deldiv = target.closest(".order_remind");//获取删除订单所处的div节点


                        var els = new Array();
                        var offsetInfo = $deldiv.offset();
                        var divbody = $("#divbody");
                        els.push($deldiv);
                        var animation = new deleteorderElement.OrderAnimation();
                        animation.start({el: els, endPoint: jQuery("#mydeleteorders"), offsetInfo: offsetInfo, tbody: divbody});
                    }
                }
            } else {
                return_value = false;
                //关闭当前弹框，显示失败弹框
                deleteorderElement.closeWindow();  //关闭弹出框
                $("#J-text1").text("\u5220\u9664\u8ba2\u5355\u5931\u8d25");//删除订单失败
                $("#J-text2").text("\u7f51\u7edc\u7e41\u5fd9\uff0c\u5220\u9664\u8ba2\u5355\u5931\u8d25\uff0c\u8bf7\u60a8\u7a0d\u540e\u91cd\u8bd5");
                errorFun.openErrorWindow();
            }
        });
        //  return return_value;
    }
}

//我的订单取消begin****************************************/

var cancelOrder = {
    surveyOpenFlag: 0,//是否正在调用调查问卷面板：0 未存在调用中，1调用中
    closeWindow: function () {//关闭取消弹框，3个选项
        $("#mainWin").hide();
        $("#cancelOrder_1").hide();

    },
    openModifyWindow: function () {//显示支付方式修改成功后弹框
        //更新弹框中的文字
        $("#J-succContext").text("\u652f\u4ed8\u65b9\u5f0f\u4fee\u6539\u6210\u529f");
        successFun.openSuccessWindow();
    },
    openAddShoppingWindow: function () {//显示加入购物车成功后弹框
        //更新弹框中的文字
        $("#J-succContext").text("\u60a8\u7684\u8ba2\u5355\u5df2\u53d6\u6d88\uff0c\u8ba2\u5355\u5185\u5546\u54c1\u5df2\u52a0\u5165\u8d2d\u7269\u8f66");
        successFun.openSuccessWindow();
    },
    openCancelForerverWindow: function () {//显示残忍取消订单成功后弹框
        //更新弹框中的文字
        $("#J-succContext").text("\u6b8b\u5fcd\u53d6\u6d88\u8ba2\u5355\u6210\u529f");
        successFun.openSuccessWindow();

    },
    //强拆单取消成功提示
    openqcOrderCancelWindow: function () {//显示残忍取消订单成功后弹框
        //更新弹框中的文字
        $("#J-succContext").text("\u53d6\u6d88\u8ba2\u5355\u6210\u529f");
        successFun.openSuccessWindow();

    },
    openSuccessCancelCheckWindow: function () {//显示取消审核面板
        $("#mainWin").css({"display": "block"});
        $("#cancelOrder2").css({"display": "block","margin-top":"-150px"});
        $("#cancelOrder_checkWindow").css({"display": "block"});
    },
    closeSuccessCancelCheckWindow: function () {//关闭取消审核面板
        $("#mainWin").hide();
        $("#cancelOrder2").hide();
        $("#cancelOrder_checkWindow").hide();
        localReloadPage();
    },
    //打开取消审核原因面板
    openCheckCancelWindow: function () {
        $('#J-cancelReason_1')[0].checked = true;
        //初始化其它选项的默认值
        $("#J-cancelOtherDetailReason").val("\u8bf7\u586b\u5199\u539f\u56e0\u0037\u0030\u5b57\u4ee5\u5185");
        //打开招商的取消面板
        $("#mainWin").css({"display": "block"});
        $("#cancelOrder2").css({"display": "block","margin-top":"-205px"});
        $("#J-checkCancelReasonWindow").css({"display": "block"});

    },
    //关闭取消审核原因面板
    closeCheckCancelWindow: function () {
        $("#mainWin").hide();
        $("#cancelOrder2").hide();
        $("#J-checkCancelReasonWindow").hide();

    },
    openAlreadyCheckedCancel: function () {//提示已经生成审核面板
        $("#mainWin").css({"display": "block"});
        $("#cancelOrder2").css({"display": "block","margin-top":"-150px"});
        $("#successWindow2").css({"display": "block"});
    },
    closeAlreadyCheckedCancel: function () {//关闭已经生成审核面板，不用刷新页面
        $("#mainWin").hide();
        $("#cancelOrder2").hide();
        $("#successWindow2").hide();
    },
    txtLengthChange: function (target, length) {//设定最长显示字符
        var value = $(target).val();
        if (value.length > length) {
            var str = $(target).val().substring(0, length);
            $(target).val(str);
        }

    },
    //打开调查反馈面板
    openFeedBackWindow: function (orderId) {
        //调接口取得url值,
        var params = "&orderId=" + orderId;
        utilJS.Ajax.ajaxData('/myOrder/getSurveyUrl', 'POST', params, function (data) {
            if (data != "") {
                utilJS.Ajax.checkLoginStatus(data,myhomeConf.loginReturnUrl.myOrder);
                url = data;
                cancelOrder.surveyOpenFlag = 1;//调用中
                $("#J-surver_iframe").attr("src", url);
                //在页面url页面加载完之后，调用 iFrameHeight 方法显示该调查文件面板
                $("#mainWin").css({"display": "block"});
                $("#J-surveyQuestionWindow").css({"display": "block"});
                //超过10秒钟未显示调查问卷直接隐藏调查问卷显示
                cancelOrder.hideSurveyPan();
            } else {
                //调用调查反馈接口失败，显示取消成功面板
                cancelOrder.openCancelForerverWindow();
            }
        });
    },
    cancelSubmitFail:function(){
        cancelOrder.closeCheckCancelWindow();//关闭取消原因审核面板
        //更新弹框中的文字
        $("#J-text1").text("\u53d6\u6d88\u8ba2\u5355\u5931\u8d25");//取消订单失败
        //$("#J-text2").text("\u8ba2\u5355\u672a\u53d6\u6d88\u6210\u529f\uff0c\u5546\u54c1\u5230\u8d27\u540e\u60a8\u53ef\u9009\u62e9\u4e0d\u7b7e\u6536");
       //当前订单状态不支持取消，商品到货后您可以选择不签收
       $("#J-text2").text("\u5f53\u524d\u8ba2\u5355\u72b6\u6001\u4e0d\u652f\u6301\u53d6\u6d88\uff0c\u5546\u54c1\u5230\u8d27\u540e\u60a8\u53ef\u4ee5\u9009\u62e9\u4e0d\u7b7e\u6536");
        errorFun.openErrorWindow();
    },
      cancelSubmitFail2:function(){
        cancelOrder.closeCheckCancelWindow();//关闭取消原因审核面板
        //更新弹框中的文字
        $("#J-text1").text("\u53d6\u6d88\u8ba2\u5355\u5931\u8d25");//取消订单失败
        //订单未取消成功，请您再次尝试或商品到货后选择不签收
        $("#J-text2").text("\u8ba2\u5355\u672a\u53d6\u6d88\u6210\u529f\uff0c\u8bf7\u60a8\u518d\u6b21\u5c1d\u8bd5\u6216\u5546\u54c1\u5230\u8d27\u540e\u9009\u62e9\u4e0d\u7b7e\u6536");
        errorFun.openErrorWindow();
    },
    //状态100或200订单取消原因调用接口
    cancelSubmit: function (orderId, cancelReason) {
        var params = "&orderId=" + orderId + "&cancelReason=" + cancelReason;
        // console.log("cancelSubmit..params"+params);
        utilJS.Ajax.ajaxData('/myOrder/cancel', 'POST', params, function (data) {
            //console.log("cancelSubmit..data"+data);
            if ((data != "")) {
                utilJS.Ajax.checkLoginStatus(data,myhomeConf.loginReturnUrl.myOrder);
                var data = JSON.parse(data);
                if ((data["code"] == '0') && data["subCode"] == '9000') {
                    cancelOrder.closeCheckCancelWindow();//关闭取消原因审核面板
                    //显示审核面板
                    cancelOrder.openSuccessCancelCheckWindow();
                } else if (data["code"] == '2' && (data["subCode"] == '1000' ||
                 data["subCode"] == '1995' || data["subCode"] == '2001' || data["subCode"] == '2002' || 
             data["subCode"] == '2003' || data["subCode"] == '1994')){//不允许取消
                    cancelOrder.cancelSubmitFail();
                }else if ( (data["code"] == '1' && (data["subCode"] == '1994' || data["subCode"] == '1999'))){//取消失败
                    cancelOrder.cancelSubmitFail2();
                }
            }else{//失败操作
                cancelOrder.cancelSubmitFail();
            }
        });

    },
    //点击提交取消原因按钮
    submitCancelOrder: function () {
        var orderId = $('#J_cancelOrderId').val();
        var cancelReason = "";
        var elementchecked = $('input:radio[name="cancelDetailReason"]:checked');
        if ($(elementchecked).attr("id") == "J-otherReasonCancel") {
            cancelReason = $("#J-cancelOtherDetailReason").val();
        } else {
            cancelReason = $(elementchecked).next("span").text();
        }

        clickNum = 3;
        cancelOrder.cancelSubmit(orderId, cancelReason);
    },
    //不取消订单，只修改支付方式
    modifyPaymentMethod: function (orderId){
        var params = "&orderId=" + orderId;
        //支持网上支付修改为货到付款时
        utilJS.Ajax.ajaxData('/myOrder/modifyPayType', 'POST', params, function (data) {
            if ((data != "") ) {
                utilJS.Ajax.checkLoginStatus(data,myhomeConf.loginReturnUrl.myOrder);
                var data = JSON.parse(data);
                if( data["code"] == 0){
                    // 关闭当前弹框
                    cancelOrder.closeWindow();
                    //弹出支付方式修改成功弹框
                    cancelOrder.openModifyWindow();
                }
            } else {
                cancelOrder.closeWindow();
                //更新弹框中的文字
                $("#J-text1").text("\u652f\u4ed8\u65b9\u5f0f\u4fee\u6539\u5931\u8d25");//支付方式修改失败
                $("#J-text2").text("\u652f\u4ed8\u65b9\u5f0f\u4fee\u6539\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5");
                errorFun.openErrorWindow();
            }
        });


    },
    cancel_addShoppingCartFail:function(){
        cancelOrder.closeWindow();
        //更新弹框中的文字
        $("#J-text1").text("\u53d6\u6d88\u8ba2\u5355");//取消订单失败
        //$("#J-text1").text("\u53d6\u6d88\u8ba2\u5355\u5931\u8d25");//取消订单失败
//        $("#J-text2").text("\u8ba2\u5355\u672a\u53d6\u6d88\u6210\u529f\uff0c\u5546\u54c1\u5230\u8d27\u540e\u60a8\u53ef\u9009\u62e9\u4e0d\u7b7e\u6536");
       //当前订单状态不支持取消，商品到货后您可以选择不签收
       $("#J-text2").text("\u5f53\u524d\u8ba2\u5355\u72b6\u6001\u4e0d\u652f\u6301\u53d6\u6d88\uff0c\u5546\u54c1\u5230\u8d27\u540e\u60a8\u53ef\u4ee5\u9009\u62e9\u4e0d\u7b7e\u6536");
        errorFun.openErrorWindow();
    },
      cancel_addShoppingCartFail2:function(){
        cancelOrder.closeWindow();
        //更新弹框中的文字
        $("#J-text1").text("\u53d6\u6d88\u8ba2\u5355");//取消订单失败
        // $("#J-text1").text("\u53d6\u6d88\u8ba2\u5355\u5931\u8d25");//取消订单失败
        //订单未取消成功，请您再次尝试或商品到货后选择不签收
        $("#J-text2").text("\u8ba2\u5355\u672a\u53d6\u6d88\u6210\u529f\uff0c\u8bf7\u60a8\u518d\u6b21\u5c1d\u8bd5\u6216\u5546\u54c1\u5230\u8d27\u540e\u9009\u62e9\u4e0d\u7b7e\u6536");
        errorFun.openErrorWindow();
    },
    //取消订单并加入购物车
    cancel_addShoppingCart: function (orderId) {
        //不同订单下的商品id不同
        var strName = "#J-cancelOrderProductIds" + orderId;
        var productsId = $(strName).val();
        var params = "&orderId=" + orderId;
        utilJS.Ajax.ajaxData('/myOrder/cancel', 'POST', params, function (data) {//url待补充
            if ((data != "")) {
                utilJS.Ajax.checkLoginStatus(data,myhomeConf.loginReturnUrl.myOrder);
                var data = JSON.parse(data);
                if ((data["code"] == '0') && data["subCode"] == '0') {
                    // 关闭当前弹框
                    cancelOrder.closeWindow();
                    //显示调查反馈取消原因面板
                    cancelOrder.openFeedBackWindow(orderId);
                    AddToShoppingCart(productsId);
                } else if (data["code"] == '2' && (data["subCode"] == '1000' ||
                 data["subCode"] == '1995' || data["subCode"] == '2001' || data["subCode"] == '2002' || 
             data["subCode"] == '2003'  || data["subCode"] == '1994')){//不允许取消
                     cancelOrder.cancel_addShoppingCartFail();
                }else if ((data["code"] == '1' && (data["subCode"] == '1994' || data["subCode"] == '1999'))){//取消失败
                    cancelOrder.cancel_addShoppingCartFail2();
                }
            }else{
                //失败弹框
                cancelOrder.cancel_addShoppingCartFail();
            }
        });
    },
    //残忍取消订单
    cancleComplete: function (orderId) {
        var params = "&orderId=" + orderId;
        utilJS.Ajax.ajaxData('/myOrder/cancel', 'POST', params, function (data) {
            if (data != "") {
                utilJS.Ajax.checkLoginStatus(data,myhomeConf.loginReturnUrl.myOrder);
                var data = JSON.parse(data);
                // console.log("cancelCompleteokokok::::"+data["code"]+"..."+data["subCode"]);
                if ((data["code"] == '0') && data["subCode"] == '0') {
                    // 关闭当前弹框
                    cancelOrder.closeWindow();
                    //显示调查反馈取消原因面板
                    cancelOrder.openFeedBackWindow(orderId);
                } else if (data["code"] == '2' && (data["subCode"] == '1000' ||
                 data["subCode"] == '1995' || data["subCode"] == '2001' || data["subCode"] == '2002' || 
             data["subCode"] == '2003'  || data["subCode"] == '1994')){//不允许取消
                    cancelOrder.cancel_addShoppingCartFail();
                }else if ((data["code"] == '1' && (data["subCode"] == '1994' || data["subCode"] == '1999'))){//取消失败
                   cancelOrder.cancel_addShoppingCartFail2();
                }
            }else{
                //失败弹框
                cancelOrder.cancel_addShoppingCartFail2();
            }
        });
    },
///////////////////////////////////////////////////////////////////////////////

    //点击确认取消订单
    cancelOrderOpeate: function () {//待补充，@author:cuiqiaoyu,alter date:20160108
        var orderId = $('#J_cancelOrderId').val();
        //判断点击的是哪一个选项,并显示对应弹框
////测试数据，begin
//orderId="";//测试支付方式修改订单号
//orderId="1411433030";//测试取消加入购物车,残忍取消订单订单号
////测试数据,end

        clickNum = parseInt(clickNum);
        switch (clickNum) {
            case 1:
                cancelOrder.modifyPaymentMethod(orderId);         //弹出支付方式修改面板
                break;
            case 2:
                cancelOrder.cancel_addShoppingCart(orderId);         //取消加入购物车
                break;
            case 3:
                case 4:
                    case 5:
                cancelOrder.cancleComplete(orderId);         //残忍取消订单
                break;
        }
    },
    //
    //点击取消
    cancel_order: function (orderIds, flag, isDisplayCancelReason, presaleType) {
        // TODO,测试，设置常量 begin,20130306
        if (orderIds && orderIds.length > 0) {
            $('#J_cancelOrderId').val(orderIds);
            if (isDisplayCancelReason==='Y') {
                var ischeck = 0;
                //调接口判断是否显示取消审核原因面板
                var params = "&orderId=" + orderIds;
//                utilJS.Ajax.ajaxGetData('/myOrder/getCanCancel', params, function (data) {
//                    utilJS.Ajax.checkLoginStatus(data,myhomeConf.loginReturnUrl.myOrder);
//                    ischeck = data;
//                });
                     utilJS.Ajax.ajaxGetData('/myOrder/getCancelQueryStatus', params, function (data) {
                                        utilJS.Ajax.checkLoginStatus(data,myhomeConf.loginReturnUrl.myOrder);
                                        ischeck = data;
                                    });
                if (ischeck==1) {//已经生成，则提示已生成
                    cancelOrder.openAlreadyCheckedCancel();
                }else{//未生成，则显示取消原因审核面板
                    cancelOrder.openCheckCancelWindow();
                }

            } else if (isDisplayCancelReason==='N') {
                if(presaleType != '0'){//预售订单
                    $('.j-isPreSale').text('取消订单，定金不退');
                }else{
                    $('.j-isPreSale').text('取消订单');
                }

                //判断显示哪个取消面板
                //$("span[id^= J-cancelSpan_0]").hide();
                $("a[id^= J-cancelSpan_0]").removeClass('on');
                $("div[id^= J-cancel_href0]").hide();
                if (flag == 1) { //显示1,2,3选项面板
                    $("#mainWin").css({"display": "block"});
                    $("#cancelOrder_1").css({"display": "block","margin-top":"-150px"});
                     $("#J-cancel_href01").show();
                     $("#J-cancel_href02").show();
                     $("#J-cancel_href03").show();
                    //$("#J-cancel-select-btn > a").show();
//                    $("#J-cancel-select-btn .item_info").show();
                    //设置默认选中项，并标记clickNum
                    $("#J-cancelSpan_02, #J-cancelSpan_03, #J-cancelSpan_04, #J-cancelSpan_05").removeClass('on');
                    $("#J-cancelSpan_01").addClass('on');
                    clickNum=$("#J-cancel_href01").attr("idx");
                } else if (flag == 2) { //显示1,3选项面板
                    $("#mainWin").css({"display": "block"});
                    $("#cancelOrder_1").css({"display": "block","margin-top":"-150px"});
                    $("#J-cancel_href01").show();
                    $("#J-cancel_href03").show();
                    $("#J-cancelSpan_02, #J-cancelSpan_03,#J-cancelSpan_04, #J-cancelSpan_05").removeClass('on');
                    $("#J-cancelSpan_01").addClass('on');
                    clickNum=$("#J-cancel_href01").attr("idx");
                } else if (flag == 3) { //显示2,3选项面板
                    $("#mainWin").css({"display": "block"});
                    $("#cancelOrder_1").css({"display": "block","margin-top":"-150px"});
                    $("#J-cancel_href02").show();
                    $("#J-cancel_href03").show();
                    //$("#J-cancelSpan_02").show();
                    $("#J-cancelSpan_01, #J-cancelSpan_03,#J-cancelSpan_04, #J-cancelSpan_05").removeClass('on');
                    $("#J-cancelSpan_02").addClass('on');
                    clickNum=$("#J-cancel_href02").attr("idx");
                } else if (flag == 4) {//显示3面板
                    $("#mainWin").css({"display": "block"});
                    $("#cancelOrder_1").css({"display": "block","margin-top":"-150px"});
                    $("#J-cancel_href03").show();
                    //$("#J-cancelSpan_03").show();
                    $("#J-cancelSpan_01, #J-cancelSpan_02,#J-cancelSpan_04, #J-cancelSpan_05").removeClass('on');
                    $("#J-cancelSpan_03").addClass('on');
                    clickNum=$("#J-cancel_href03").attr("idx");
                }else if (flag == 6) {//取消关联订单，显示4，2面板
                    $("#mainWin").css({"display": "block"});
                    $("#cancelOrder_1").css({"display": "block","margin-top":"-150px"});
                    $("#J-cancel_href02").show();
                    $("#J-cancel_href04").show();
                    $("#J-cancelSpan_01, #J-cancelSpan_02,#J-cancelSpan_03,#J-cancelSpan_05").removeClass('on');
                    $("#J-cancelSpan_04").addClass('on');
                    clickNum=$("#J-cancel_href04").attr("idx");
                }else if (flag == 5) {//取消骗运费订单，显示5，2面板
                    $("#mainWin").css({"display": "block"});
                    $("#cancelOrder_1").css({"display": "block","margin-top":"-150px"});
                    $("#J-cancel_href02").show();
                    $("#J-cancel_href05").show();
                    $("#J-cancelSpan_01, #J-cancelSpan_02,#J-cancelSpan_03,#J-cancelSpan_04").removeClass('on');
                    $("#J-cancelSpan_05").addClass('on');
                    clickNum=$("#J-cancel_href05").attr("idx");
                }else if (flag == 7) {//取消骗运费订单，显示5，2面板
                    $("#mainWin").css({"display": "block"});
                    $("#cancelOrder_1").css({"display": "block","margin-top":"-150px"});
                    $("#J-cancel_href05").show();
                    $("#J-cancelSpan_01, #J-cancelSpan_02,#J-cancelSpan_03,#J-cancelSpan_04").removeClass('on');
                    $("#J-cancelSpan_05").addClass('on');
                    clickNum=$("#J-cancel_href05").attr("idx");
                }else if (flag == 8) {//取消骗运费订单，显示5，2面板
                    $("#mainWin").css({"display": "block"});
                    $("#cancelOrder_1").css({"display": "block","margin-top":"-150px"});
                    $("#J-cancel_href04").show();
                    $("#J-cancelSpan_01, #J-cancelSpan_02,#J-cancelSpan_03,#J-cancelSpan_05").removeClass('on');
                    $("#J-cancelSpan_04").addClass('on');
                    clickNum=$("#J-cancel_href04").attr("idx");
                }
                //设置默认选中项，并标记clickNum
                // $("#J-cancel-select-btn > a:visible").first().find("span[id^= J-cancelSpan_0]").css({"display": "block"});
                // clickNum=$("#J-cancel-select-btn > a:visible").first().attr("idx");

                // console.log("cancel_order....clickNum"+clickNum);
            }else if (isDisplayCancelReason==='T') {
                cancelOrder.cancleComplete(orderIds);
            }
        } else {
            alert("wrong orderID"); //待补充
        }
    },
    //发票下载
    download_invoice: function (invoices) {

        if (invoices && invoices.length > 0) {

            var invoiceArray = invoices.split(",");
            for (var i = 0; i < invoiceArray.length; i++){
                var dowloadHtml = this.get_download_invoice_url(i+1,invoiceArray[i]);
                $("#download01").append(dowloadHtml);
            }

            $("#mainWin").css({"display": "block"});
            $("#downloadInvoice").css({"display": "block","margin-top":"-150px"});
            $("#download01").show();

        } else {
            alert("wrong invoices"); //待补充
        }
    },
    get_download_invoice_url:function(num,url){
        return "<p>第 "+num+" 张：<a href="+url+" target=\"_blank\">点击下载</a></p>";
    },
    //访问中超过十秒钟，为显示调查问卷，直接放弃调查问卷显示
    hideSurveyPan: function(){
        setTimeout(function(){
            //10秒钟内，还在加载中未被正常加载出来
            if(cancelOrder.surveyOpenFlag===1){
                cancelOrder.surveyOpenFlag = 0;
                //隐藏调查问卷面板
                $("#mainWin").hide();
                $("#J-surveyQuestionWindow").hide();
                //提示取消成功
                cancelOrder.openCancelForerverWindow();
            }
        },10 * 1000);
    },
    initClearText:function(){
//        console.log("initClearText");
        //清空用户输入时，招商面板中初始文字,只在用户第一次输入时清空文本内容
        if( $("#J-cancelOtherDetailReason").val()=="\u8bf7\u586b\u5199\u539f\u56e0\u0037\u0030\u5b57\u4ee5\u5185"){
            $("#J-cancelOtherDetailReason").val("");
        }


    },
    //支付后点击取消强拆订单弹层
    qcorderCancel:function(orderId,flag, isDisplayCancelReason, presaleType){
        $("#mainWin").show();
        $('#J_qccancelOrderId').val(orderId);
        $("#qcorderCancel").css({"display": "block"});
    },
    closeqcWindow: function () {//关闭取消弹框，
        $("#mainWin").hide();
        $("#qcorderCancel").hide();

    },
    //点击继续取消订单
    cancelQcOrderOpeate: function (){
        var orderId = $('#J_qccancelOrderId').val();
        var params = "&orderId=" + orderId;
        utilJS.Ajax.ajaxData('/myOrder/cancel', 'POST', params, function (data){
            if(data != ""){
                utilJS.Ajax.checkLoginStatus(data,myhomeConf.loginReturnUrl.myOrder);
                var data = JSON.parse(data);
                if((data["code"] == '0')&& data["subCode"] == '0') {
                    // 关闭当前弹框
                    cancelOrder.closeqcWindow();
                    cancelOrder.openqcOrderCancelWindow();
                }else if (data["code"] == '2' && (data["subCode"] == '1000' ||
                 data["subCode"] == '1995' || data["subCode"] == '2001' || data["subCode"] == '2002' || 
             data["subCode"] == '2003'  || data["subCode"] == '1994')){//不允许取消
                   //失败弹框
                    cancelOrder.closeqcWindow();
                    cancelOrder.cancel_addShoppingCartFail();
                }else if ( (data["code"] == '1' && (data["subCode"] == '1994' || data["subCode"] == '1999'))){//取消失败
                    cancelOrder.closeqcWindow();
                    cancelOrder.cancel_addShoppingCartFail2();
                }
            }else{
                //失败弹框
                cancelOrder.closeqcWindow();
                cancelOrder.cancel_addShoppingCartFail();
            }
        });
    }
};

var cancelDownloadInvoice = {

    closeWindow: function () {//关闭取消弹框，3个选项
        $("#download01").html("");
        $("#mainWin").hide();
        $("#downloadInvoice").hide();

    }
};
function  cancelInit(){
    // alter date:20160304
    $("#J-cancel-select-btn [id^=J-cancelSpan_]").click(function () {//判断点击的是取消面板的哪一个选项
        //clickNum = parseInt($(this).attr("idx"));
        //去掉所有选项的样式，为选中项增加样式
        //$("#J-cancel-select-btn > a").find("span[id^= J-cancelSpan_0]").hide();
        //$(this).find("span[id^= J-cancelSpan_0]").css({"display": "block"});
        clickNum = parseInt($(this).parent().attr("idx"));
        //去掉所有选项的样式，为选中项增加样式
        $("#J-cancel-select-btn [id^=J-cancelSpan_]").removeClass('on');
        $(this).addClass('on');
    });

};
//我的订单取消end******************************************/

//成功弹框处理，供所有弹框处理成功使用
var successFun = {
    closeSuccessWindow: function () { //关闭成功弹框
        $("#mainWin").hide();
        $("#cancelOrder2").hide();
        $("#successWindow").hide();
        localReloadPage();
    },
    openSuccessWindow: function () { //显示成功弹框
        $("#mainWin").css({"display": "block"});
        $("#cancelOrder2").css({"display": "block","margin-top":"-150px"});
        $("#successWindow").css({"display": "block"});
    }
};

/********** 支付 合并支付 开始***********/
var payObj = {
    enablePayCount : 0,//可支付订单个数
    overseaSelfCount : 0,//可海外购订单个数
    lang_zh :{
        //网络繁忙，请稍后重试！
        1001: '\u7f51\u7edc\u7e41\u5fd9\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5\uff01',
        //您的订单已支付，请您在支付时核对订单金额并支付。
        //1002: '\u60a8\u7684\u8ba2\u5355\u5df2\u652f\u4ed8\u3002', //您的订单已支付。
        1002: '\u60a8\u7684\u8ba2\u5355\u5df2\u652f\u4ed8\uff0c\u8bf7\u60a8\u5728\u652f\u4ed8\u65f6\u6838\u5bf9\u8ba2\u5355\u91d1\u989d\u5e76\u652f\u4ed8\u3002',
        //您的订单已被取消，请重新下单。
        //1003: '\u60a8\u7684\u8ba2\u5355\u5df2\u88ab\u53d6\u6d88\uff0c\u8bf7\u91cd\u65b0\u4e0b\u5355\u3002',
        //您的订单已被取消，请您在支付时核对订单金额并支付。
        1003: '\u60a8\u7684\u8ba2\u5355\u5df2\u88ab\u53d6\u6d88\uff0c\u8bf7\u60a8\u5728\u652f\u4ed8\u65f6\u6838\u5bf9\u8ba2\u5355\u91d1\u989d\u5e76\u652f\u4ed8\u3002',
        //部分订单已被取消或已支付，对这部分订单将不进行支付
        1004: '\u90e8\u5206\u8ba2\u5355\u5df2\u88ab\u53d6\u6d88\u6216\u5df2\u652f\u4ed8\uff0c\u5bf9\u8fd9\u90e8\u5206\u8ba2\u5355\u5c06\u4e0d\u8fdb\u884c\u652f\u4ed8',
        //同时下单的关联订单需要一并支付，是否继续
        1005: '\u540c\u65f6\u4e0b\u5355\u7684\u5173\u8054\u8ba2\u5355\u9700\u8981\u4e00\u5e76\u652f\u4ed8\uff0c\u662f\u5426\u7ee7\u7eed',
        //多个海外购订单收货人和身份证信息需要一致才能合并支付！
        1006: '\u591a\u4e2a\u6d77\u5916\u8d2d\u8ba2\u5355\u6536\u8d27\u4eba\u548c\u8eab\u4efd\u8bc1\u4fe1\u606f\u9700\u8981\u4e00\u81f4\u624d\u80fd\u5408\u5e76\u652f\u4ed8\uff01'
    },
    showTipDia:function(hasEnablePay, tipIconClass, tipInfo){// 显示支付提示框
        $('#J_enablePay').val(hasEnablePay);//是否可以继续支付
        $('#J_payTipImg').removeClass().addClass(tipIconClass);
        $('#J_payTipInfo').text(tipInfo);
        $('#J_payPan').show();
    },
    closeTipDia: function(){
        $('#J_payPan').hide();
        var hasEnablePay = $('#J_enablePay').val();
        if(hasEnablePay=='true'){
            $('#J_enablePay').val('false');
            //alert('aa');
            $('#J_submitPay').click();
        }
        //TODO 是否保留在当前页
        localReloadPage();
    }
};
//********unionPay_start********
function checkUnionSelect() {
    $('#unionselect')[0].checked = false;
    //$("#unionselect").prop("checked", false);
    //初始化全选按钮 可选状态
    isSelectAll();
    //选中或取消某一个
    selPayItemHandel();
}
//可以全选，设置按钮点击事件
function selectAllCheckbox() {
    $("#unionselect").attr("disabled", false);
    $("#unionselect").click(function () {
        var isChecked = $(this)[0].checked ;
        //var isChecked = $(this).prop("checked");
        //$('#unionselect')[0].checked = false;
        $("input:enabled[name='payCheckbox']").each(function(){
            $(this)[0].checked = isChecked;
        });
        //$("input:enabled[name='payCheckbox']").prop("checked", isChecked);
        $("input:enabled[name='payCheckbox']").attr("checked", isChecked);
        if ($("input[name='payCheckbox'][checked]").length > 0) {
            $("#combine_pay").css("background-color", "red");
        } else {
            unSelPayItem();
        }
    });
}
/**
 * 判断可选按钮是否可用
 * 返回： fla： true： 可用，false：不可选
 * 注：（1）有可支付订单；（2）且所有可支付订单都是“非海外购自营” 或者都是海外购自营，可全选按钮可用
 * */
function isSelectAll(){
    var $canPayOrder = $("input[type=checkbox][name=payCheckbox][disabled!=disabled]");
    //console.log($canPayOrder.length);
    var enablePay = 0;//是否可支付
    var overseaSelf = 0;//是否是海外购
    $canPayOrder.each(function(i,n){
        enablePay = $(this).attr('data-enablePay');
        overseaSelf = $(this).attr('data-overseaSelf');
        if(enablePay == 1){
            payObj.enablePayCount += 1;
        }
        if(overseaSelf == 1){
            payObj.overseaSelfCount += 1;
        }
    });
    //（1）有可支付订单；（2）且所有可支付订单都是“非海外购自营” 或者都是海外购自营，可全选按钮可用
    if(payObj.enablePayCount>0 && (payObj.enablePayCount==payObj.overseaSelfCount || payObj.overseaSelfCount==0)){
        selectAllCheckbox();
    }else{
        $("#unionselect").attr("disabled", true);
    }
}
/**
 * 选中或取消某个支付项
 * 1）判断当前已被选中项个数，
 * 		2）一个都未选中，
 * 			a 则所有可支付的订单 复选按钮都可用，
 * 			b 设置全选按钮是否可用
 * 			c 全选按钮为“未选择”状态
 * 		3)选中至少一个，即选中个数（大于等于）1
 * 			a 判断是否有与该选中项，支付类型不一致的（支付类型： 海外购自营 非海外购自营），有则其他支付类型不一致的选项不可选
 * 			b 如果可勾选的每一项，都被选中，这全选按钮为选中；有一项未被选中，则可选按钮未被选中。
 * */
function selPayItemHandel(){
    $("input[type=checkbox][name=payCheckbox][disabled!=disabled]").bind("click", function () {
        if ($(this).attr("checked")) {
            $(this).removeAttr("checked");
        } else {
            $(this).attr("checked", true);
        }
        var checked_num = $("input[name=payCheckbox][checked]").length;//已经选中的订单数量,只有disabled为false时才可选

        if(checked_num==0){
            unSelPayItem();
        }else{
            //当前被选中或被取消的订单的 订单类型，和其类型相同的订单可以并合并支付，其他类型不可合并支付，
            var curItemOverseaSel = $(this).attr("data-overseaSelf");
            $("input[type=checkbox][data-enablePay=1][data-overseaSelf="+ curItemOverseaSel +"]").attr("disabled", false);
            $("input[type=checkbox][data-enablePay=1][data-overseaSelf!="+ curItemOverseaSel +"]").attr("disabled", true);

            //全选按钮可用
            selectAllCheckbox();

            var list_check_num = $("input[type=checkbox][data-enablePay=1][disabled!=disabled]").length;//列表中合合并支付条件的数量
            if (checked_num == list_check_num) {
                $('#unionselect')[0].checked = true;
                //$("#unionselect").prop("checked", true);
            } else {
                $('#unionselect')[0].checked = false;
                //$("#unionselect").prop("checked", false);
            }
            $("#combine_pay").css("background-color", "red");
        }
    });
}
/**
 * 判断当前已被选中项个数，一个都未选中是:
 * 			a 则所有可支付的订单 复选按钮都可用，
 * 			b 设置全选按钮是否可用
 * 			c 全选按钮为“未选择”状态
 * */
function unSelPayItem(){
    //所有可支付订单 可选
    $("input[type=checkbox][data-enablePay=1]").attr("disabled", false);
    if(payObj.enablePayCount>0 && (payObj.enablePayCount==payObj.overseaSelfCount || payObj.overseaSelfCount==0)){
        selectAllCheckbox();
    }else{
        $("#unionselect").attr("disabled", true);
    }
    $("#unionselect").attr("checked", false);
    $("#combine_pay").css("background-color", "#d2d2d2");
}
//********unionPay_end********


//单个订单支付
function paySingleOrder(orderId, shopId, orderType, shopType,parentId,$paymentProviderId){
    var orderInfo = orderId +',' + shopId +',' + orderType +',' + shopType + ',' +parentId + ',' + $paymentProviderId +';';
    checkAndPayOrders(orderInfo);
}
//合并订单支付
function payMultiOrder(){
    if ($("input[name='payCheckbox']:checked").length > 0) {
        var orders = "";
        $.each($("input[name='payCheckbox']:checked"), function () {
            orders += $(this).attr("data-orders");
            orders += ";";
        });
        checkAndPayOrders(orders);
    } else {
        return false;
    }
}
//拆单订单支付
//orderId,shopId,orderType,shopTypel;orderId,shopId,orderType,shopType;
function payForceOrder(payOrders){
    payOrders = payOrders + ';';
    checkAndPayOrders(payOrders);
}
//订单支付验证与支付
function checkAndPayOrders(orderInfo){
    //var params = '&orderIds=' + orderIds;
    //var params = '&orderIds=' + 1400000002;
    //表单中清空上次支付信息 TODO 需要测试
    $('#J_payForm')[0].reset();
    var params = '&order_info=' + orderInfo;
    utilJS.Ajax.ajaxData('/myOrder/getPaymentAmountNewNew', 'POST', params, function (data) {
        utilJS.Ajax.checkLoginStatus(data,myhomeConf.loginReturnUrl.myOrder);
        var data = JSON.parse(data);
        var hasEnablePay = false;//有可支付订单
        var hasFailOrders = false;//有不可支付订单（包括取消或已支付）
        var enablePay = '';
        if((data != '')){
            enablePay = data["enablePay"];
            if(enablePay != '' && enablePay['payStatus']=='0'){//有待支付订单
//                $('#J_custid').val(enablePay['custid']);
//                $('#J_inputCharset').val(enablePay['input_charset']);
//                $('#J_orderInfo').val(enablePay['order_info']);
//                $('#J_parentId').val(enablePay['parent_id']);
//                $('#J_partnerId').val(enablePay['partner_id']);
//                $('#J_payFrom').val(enablePay['pay_from']);
//                $('#J_payId').val(enablePay['pay_id']);
//                $('#J_sign').val(enablePay['sign']);
                $('#J_partner').val(enablePay['partner']);
                $('#J_requestTime').val(enablePay['requestTime']);
                $('#J_sign').val(enablePay['sign']);
                $('#J_data').val(JSON.stringify(enablePay['data']));
                hasEnablePay = true;
            }
            //有需要合并支付的订单，页面提示顾客“同时下单的关联订单需要一并支付，是否继续”
            if(enablePay["isMergePay"] == 1){
                 payObj.showTipDia(hasEnablePay, 'success_save_pic yellow_icon', payObj.lang_zh['1005']);
            }else if(data["cancelOrder"] != '' && data["disablePay"] != ''){//有已取消订单 且 有已支付订单
                payObj.showTipDia(hasEnablePay, 'success_save_pic yellow_icon', payObj.lang_zh['1004']);
            }else if(data["cancelOrder"] != ''){//有已取消订单
                payObj.showTipDia(hasEnablePay, 'success_save_pic yellow_icon', payObj.lang_zh['1003']);
            }else if(data["disablePay"] != ''){////有已支付订单
                payObj.showTipDia(hasEnablePay, 'success_save_pic yellow_icon', payObj.lang_zh['1002']);
            }else if(data["overSeasResver2"] == 1){//多个海外购订单收货人和身份证信息需要一致才能合并支付！
                payObj.showTipDia(hasEnablePay, 'success_save_pic yellow_icon', payObj.lang_zh['1006']);
            }else { //无任何不可支付信息，直接提交支付
                if(hasEnablePay){
                    //alert('can pay');//TODO
                    $('#J_submitPay').click();
                }else{
                    payObj.showTipDia(hasEnablePay, 'success_save_pic yellow_icon', payObj.lang_zh['1001']);
                }
            }
        }else{//接口异常 系统异常
            payObj.showTipDia('success_save_pic wrong_icon1', payObj.lang_zh['1001']);
        }//end (data!='')
    });
}
/********** 支付 合并支付 结束***********/

//我的订单付款确认******************************************************/
var confimTransferCheck = {
    closeWindow: function () { //关闭付款确认弹框
        //清空输入框中的内容
        $("#confirmOrderTrade input").val("");
        $("#J-xl").text("");
        //清空所有检验输入框高亮、错误、成功标识
        $("td[idx^= J-confirm]").find("input").removeClass('tel_check_number');
        $("td[idx^= J-confirm]").find('.wl_select_icon2').hide();//隐藏正确提示
        $("td[idx^= J-confirm]").find('.wrong_remind_info').hide();//隐藏错误提示
        $("#mainWin").hide();
        $("#confirmOrderTrade").hide();
        $("#confirmtradeMoney").hide();
    },
    confirmSuccess: function () {//显示付款成功弹框

        //更新弹框中的文字
        $("#J-successWindow").text("\u4ed8\u6b3e\u6210\u529f");
        $("#J-succContext").text("\u60a8\u7684\u4ed8\u6b3e\u786e\u8ba4\u4fe1\u606f\u63d0\u4ea4\u6210\u529f\uff01\u5f53\u5f53\u4f1a\u6838\u5bf9\u60a8\u63d0\u4ea4\u7684\u6c47\u6b3e\u4fe1\u606f\uff0c\u5ba1\u6838\u901a\u8fc7\u540e\u60a8\u7684\u8ba2\u5355\u4f1a\u7ee7\u7eed\u6267\u884c");
        successFun.openSuccessWindow();

    },
    success: function (target) {
        var objParent = $(target).parent('td');
        $(objParent).find('.wrong_remind_info').css({"display": "none"});
        $(objParent).find('.wl_select_icon2').css({"display": "block"});
        $(target).removeClass("tel_check_number");

        return true;
    },
    fail: function (target) {
        var objParent = $(target).parent('td');
        $(objParent).find('.wl_select_icon2').css({"display": "none"});
        $(objParent).find('.wrong_remind_info').css({"display": "block"});
        $(target).addClass("tel_check_number");
        return false;
    },
    checkEmpty: function (target) {
        var value = $(target).val();
        if (value.length != 0)
        {
            return confimTransferCheck.success(target);
        } else {
            return confimTransferCheck.fail(target);
        }
    },
    txtLengthChange: function (target, length) {//设定最长显示字符
        var value = $(target).val();
        if (value.length > length) {
            $(target).attr("value", $(target).val().substring(0, length));
        }
        return true;
    },
    checkDate: function () {
        var dateTime = ($("#J-xl").text());
        if (dateTime.length != 0) {

            $("#J-tradeDate").find('.wl_select_icon2').attr("style", "");//显示正确提示
            $("#J-tradeDate").find('.wrong_remind_info').hide();//隐藏错误提示
            $('#J-xl').removeClass("tel_check_number");

            return true;
        }else{

            $("#J-tradeDate").find('.wl_select_icon2').hide();//隐藏正确提示
            $("#J-tradeDate").find('.wrong_remind_info').css({"display": "block"});//显示错误提示
            $('#J-xl').addClass("tel_check_number");
            return false;
        }

    },
    checkMoney: function (obj) {//对汇款金额检验
        var target = $(obj);
        var reg = new RegExp('^\\d{1,12}(\\.\\d{1,2})?$');
        var value = target.val();
        if (reg.exec(value)) {
            return confimTransferCheck.success(target);

        } else {
            return confimTransferCheck.fail(target);

        }

    },
    clearText: function (obj) {//清空文本框默认值
        var target = $(obj);
        $(target).val("").focus();
    },
    submit: function () {//点击付款确认
        var checkUserNamelength = false;
        var checkUserName = false;
        var checkuserNumlength = false;
        var checkuserNum = false;
        var checkBankNamelength = false;
        var checkBankName = false;
        //验证汇款日期是否为空
        var checkDate = false;
        checkDate = confimTransferCheck.checkDate();

        checkUserName = confimTransferCheck.checkEmpty("#userName");

        if (checkUserName) {
            checkUserNamelength = confimTransferCheck.txtLengthChange("#userName", 50);
        }

        checkuserNum = confimTransferCheck.checkEmpty("#tradeNum");

        if (checkuserNum) {
            checkuserNumlength = confimTransferCheck.txtLengthChange("#tradeNum", 100);
        }

        checkBankName = confimTransferCheck.checkEmpty("#bankName");

        if (checkBankName) {
            checkBankNamelength = confimTransferCheck.txtLengthChange("#bankName", 100);
        }
        var checkMoney = confimTransferCheck.checkMoney("#tradeMoney");
        var checkComd = confimTransferCheck.txtLengthChange("#tradeRemarks", 50);
        if (checkMoney && checkComd && checkUserNamelength
            && checkuserNumlength && checkBankNamelength && checkUserName
            && checkuserNum && checkBankName) {
            var transferDate = $("#J-xl").text();
            var transferSerialNumber = $("#tradeNum").val();
            var transferMethod = $("#tradeWay").val();
            var transferBankName = $("#bankName").val();
            var transferAmount = $("#tradeMoney").val();
            var memo = $("#tradeRemarks").val();
            var transferUserName = $("#userName").val();
            //获取付款确认订单号
            var orderId = $('#J_confirmtradeOrderId').val();
            var params = "&orderId=" + orderId + "&remitMan=" + transferUserName + "&remitDate=" + transferDate + "&remitTransId="
                + transferSerialNumber + "&transType=" + transferMethod + "&bankName=" + transferBankName
                + "&remitAmount=" + transferAmount + "&remitMark=" + memo;

            utilJS.Ajax.ajaxData('/myOrder/confirmPayment', 'POST', params, function (data) {
                if (data != "") {
                    utilJS.Ajax.checkLoginStatus(data,myhomeConf.loginReturnUrl.myOrder);
                    var data = JSON.parse(data);
                    if ((data["code"] == '0')) {
                        // 关闭当前弹框 ,显示付款成功弹框
                        confimTransferCheck.closeWindow();
                        confimTransferCheck.confirmSuccess();
                        return false;
                    }
                }
                confimTransferCheck.closeWindow();
                $("#J-text1").text("\u4ed8\u6b3e\u786e\u8ba4\u5931\u8d25");//付款确认失败
                $("#J-text2").text("\u7f51\u7edc\u7e41\u5fd9\uff0c\u4ed8\u6b3e\u786e\u8ba4\u5931\u8d25\uff0c\u8bf7\u60a8\u7a0d\u540e\u91cd\u8bd5");
                errorFun.openErrorWindow();
            });
        }
    },
    //点击付款确认
    confirmtrade: function (orderId) {
        //保存付款确认订单号
        $('#J_confirmtradeOrderId').val(orderId);

        $("#mainWin").css({"display": "block"});
        $("#confirmOrderTrade").css({"display": "block","margin-top":"-272px"});
        $("#confirmtradeMoney").css({"display": "block"});
    }
};
//我的订单付款确认end**************************************/

//我的订单收货确认 begin******************************************/
var confirmReceiveOrder = {
    closeWindow: function () {//关闭收货确认弹框
        $("#mainWin").hide();
        $("#deleteSuccesswin").hide();
        $("#confirmRecev").hide();

    },
    openConfirmWindow: function () {//显示收货确认成功后弹框
        //更新弹框中的文字
        $("#J-succContext").text("\u6536\u8d27\u786e\u8ba4\u6210\u529f");
        successFun.openSuccessWindow();
    },
    closeConfirmReceiveErrorWindow: function () { //关闭确认收货失败弹框
        $("#mainWin").hide();
        $("#cancelOrder2").hide();
        $("#confirmReceiveError").hide();
    },
    openConfirmReceiveErrorWindow: function () { //显示确认收货失败弹框
        $("#mainWin").css({"display": "block"});
        $("#cancelOrder2").css({"display": "block","margin-top":"-150px"});
        $("#confirmReceiveError").css({"display": "block"});
    },
    //点击确认收货
    confirmOrder: function (orderId,isSplitPackage,packageNum) {
        if (orderId && orderId.length > 0) {
            $("#mainWin").css({"display": "block"});
            $("#deleteSuccesswin").css({"display": "block","margin-top":"-150px"});
            if(isSplitPackage == 1){
                    var content_info = "\u8bf7\u786e\u8ba4"+packageNum+"\u5305\u4ef6\u5747\u5df2\u6536\u5230\u5b9e\u7269";
                　 $("#is_split_package").text(content_info);
            }else{//请确认您已经收到货物
                  $("#is_split_package").text("\u8bf7\u786e\u8ba4\u60a8\u5df2\u7ecf\u6536\u5230\u8d27\u7269");
            }
            $("#confirmRecev").css({"display": "block"});
            //保存订单号
            $('#J_confirmReceiveOrderId').val(orderId);
        } else {
            alert("wrong orderID");
        }


    },
    confirmOrderOK: function () {
        //获取订单号
        var orderId = $('#J_confirmReceiveOrderId').val();
        var params = "&orderId=" + orderId;
        utilJS.Ajax.ajaxGetData('/myOrder/confirmOrder', params, function (data) {
            if(data != ""){
                utilJS.Ajax.checkLoginStatus(data,myhomeConf.loginReturnUrl.myOrder);
                var data = JSON.parse(data);
                if(data["code"] == '0') {
                    // 关闭当前弹框
                    confirmReceiveOrder.closeWindow();
                    //显示确认收货成功弹框
                    confirmReceiveOrder.openConfirmWindow();
                    return false;
                }
            }
            confirmReceiveOrder.closeWindow();
            $("#J-text1").text("\u786e\u8ba4\u6536\u8d27\u5931\u8d25");//确认收货失败
            $("#J-text2").text("\u7f51\u7edc\u7e41\u5fd9\uff0c\u786e\u8ba4\u6536\u8d27\u5931\u8d25\uff0c\u8bf7\u60a8\u7a0d\u540e\u91cd\u8bd5");
            errorFun.openErrorWindow();
        });
    }
};
// 我的订单收货确认 end******************************************/
//初始化确认付款面板时间控件
function initLaydate(){
    laydate({elem: '#J-xl', callbackFun: checkDataIsEmpty});
    laydate.skin("dahong");
    function checkDataIsEmpty() {//用于在关闭日期控件时判断日期是否为空
        var jtime = $('#J-xl').text();
        if(jtime.length != 0) {
            $("#J-tradeDate").find('.wl_select_icon2').attr("style", "");//显示正确提示
            $("#J-tradeDate").find('.wrong_remind_info').hide();//隐藏错误提示
            $('#J-xl').removeClass("tel_check_number");
        } else {
            $("#J-tradeDate").find('.wl_select_icon2').hide();//隐藏正确提示
            $("#J-tradeDate").find('.wrong_remind_info').css({"display": "block"});//显示错误提示
            $('#J-xl').addClass("tel_check_number");
        }
    }
}
//登录验证，未登录时直接跳转到登录页
function checkLoginStatus(data){
    if(data && data.error_code==1001){
        window.location.href = $('#J_myorderLoginReturn').val();
        return false;
    }
    return true;
}
//失败弹框处理,供所有弹框处理失败使用
var errorFun = {
    closeErrorWindow: function () { //关闭取消订单失败弹框
        $("#mainWin").hide();
        $("#cancelOrder2").hide();
        $("#errorWindow").hide();
        localReloadPage();
    },
    openErrorWindow: function () { //显示取消订单失败弹框
        $("#mainWin").css({"display": "block"});
        $("#cancelOrder2").css({"display": "block", "margin-top":"-150px"});
        $("#errorWindow").css({"display": "block"});
    }
};
//add by cuiqiaoyu 20160329 实现页面局部刷新
function localReloadPage(){
    var obj = '#contentPaging .paging  ul li';
    var currentPageIndex=parseInt($('#J-currentPageIndex').val());//当前页码
    var totalPageIndex = parseInt($('#J-totalPageIndex').val());//总页码
    showPagingList(currentPageIndex, obj, currentPageIndex);//刷新content页面
}
//回写头部的订单数量 add data20160330
function getOrderCountAndWriteSpan(){
    var params = "&ajaxparam=" + 1;
    utilJS.Ajax.ajaxData('/myOrder/getOrderCount ', 'POST', params, function (data) {
        if ((data != "") ) {
            utilJS.Ajax.checkLoginStatus(data,myhomeConf.loginReturnUrl.myOrder);
            var data = JSON.parse(data);
            //回写订单数量
            $("#J-waitForPaid").text(data['waitForPaidCount']);
            $("#J-waitForShipped").text(data['waitForShippedCount']);
            $("#J-waitForReceived").text(data['waitForReceivedCount']+data['waitForShippedCount']);
            $("#J-waitForEvaluated").text(data['waitForEvaluatedCount']);
        }
    });
}
//我的订单-分页显示,begin,点击上一页 @author cuiqiaoyu
function getPrePagingInfo() {
    var page_current = parseInt(currentPageIndex);
    page_current--;
    var obj = '#contentPaging .paging  ul li';
    showPagingList(currentPageIndex, obj, page_current);//修改当前页码样式，并取分页数据
}
//点击下一页
function getNexPagingInfo() {
    var page_current = parseInt(currentPageIndex);
    page_current++;
    var obj = '#contentPaging .paging  ul li';
    showPagingList(currentPageIndex, obj, page_current);//修改当前页码样式，并取分页数据
}
//点击页码
function getNumPagingInfo(obj) {
    var page_current = parseInt(currentPageIndex);
    var clickIndex = 1;
    if ($(obj).is('a')) {
        clickIndex = parseInt($(obj).text());//取a标签中的页码
    } else if ($(obj).is('input')) {
        clickIndex = parseInt($(obj).val()); //取输入框中的页码
    }
    if (clickIndex == currentPageIndex) {//点击页码为当前页时
        //alert(clickIndex + "..." + currentIndex);
        return;
    }
    page_current = parseInt(clickIndex);
    var obj2 = '#contentPaging .paging  ul li';
    showPagingList(currentPageIndex, obj2, page_current);
}
//文本框中输入页码
function getInputPagingInfo(obj) {
    var num = $(obj).parent().find('.number').val();
    var inputlabel = $(obj).parent().find('.number');
    //判断输入是否为合法整数
    var partten = /^\d+$/g;
    if (partten.test(num)) {
        num = parseInt(num);
        if ((num >= 1) && (num <= totalPageIndex)) {
            getNumPagingInfo(inputlabel);
        } else {
            return;
        }
    } else {
        return;
    }
}
//显示分页数据,更新当前页码效果显示
function showPagingList(currentIndex, obj, page_current) {
    $('#contentPaging.paging ul li').each(function () {
        if ($(obj).find('a').text() == currentIndex) {
            $(obj).find("a").removeClass('current');
        } else if ($(obj).find('a').text() == page_current) {
            $(obj).find("a").addClass('current');
        }
    });
    //将参数转化后，调用订单查询函数
    loadOrderList(page_current);
}
//订单状态筛选  时间段筛选  或者搜索查询
function loadOrderList(pageCurrent){
    //搜索查询
    if(myorderInfo.searchType == 2){
        var keywords = $('#J_orderSearchInput').val();
        searchOrderList(keywords,pageCurrent);
    }else { //订单状态筛选  时间段筛选
        $("#J_loadingOrder").show();
        $('#J_order_list').hide();
        $.ajax({
            type: 'GET',
            url: '/myOrder/list',
            data: {
                'searchType': myorderInfo.searchType,
                'statusCondition': myorderInfo.statusNum,
                'timeCondition': myorderInfo.statusTime,
                'pageCurrent': pageCurrent
            },
            success: function (data) {
                utilJS.Ajax.checkLoginStatus(data,myhomeConf.loginReturnUrl.myOrder);
                //清空搜索框内容
                $('#J_orderSearchInput').val('');
                //我的订单信息隐藏与显示
                $("#J_loadingOrder").hide();
                $('#J_order_list').html(data).show();
                $('#J_orderSearchInput').val('');
            }
        });
    }
}

function effectCustCard(orderId){
    var params = "&orderId=" + orderId;
    utilJS.Ajax.ajaxData('/myOrder/getEffectCustCard', 'POST', params, function (data) {
        if(data != ""){
            utilJS.Ajax.checkLoginStatus(data,myhomeConf.loginReturnUrl.myOrder);
            data = JSON.parse(data);
            var str = data["status"];
            if(str.toLowerCase(data["status"]) == 'success'){
                if(data["data"] ==true){
                    $("#J-gitCardWindow").show();
                    $("#mainWin").css({"display": "block"});
                    $("#J-gitCardWindowtext").text("\u751f\u6548\u793c\u54c1\u5361\u6210\u529f");//生效礼品卡成功
                }else{
                    $("#J-gitCardWindow").show();
                    $(".tip_con span").removeClass("access");
                    $("#mainWin").css({"display": "block"});
                    $("#J-gitCardWindowtext").text("\u751f\u6548\u793c\u54c1\u5361\u5931\u8d25");//生效礼品卡失败
                }
            }else{
                $("#J-gitCardWindow").show();
                $(".tip_con span").removeClass("access");
                $("#mainWin").css({"display": "block"});
                $("#J-gitCardWindowtext").text("\u7f51\u7edc\u95ee\u9898\uff0c\u751f\u6548\u793c\u54c1\u5361\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5");//网络问题，生效礼品卡失败，请稍后重试
            }
        }else{
            $("#J-gitCardWindow").show();
            $(".tip_con span").removeClass("access");
            $("#mainWin").css({"display": "block"});
            $("#J-gitCardWindowtext").text("\u7f51\u7edc\u95ee\u9898\uff0c\u751f\u6548\u793c\u54c1\u5361\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5");//网络问题，生效礼品卡失败，请稍后重试
        }
    })
}
var successFunc = {
    closeGitCartWindow: function () { //关闭成功弹框
        $("#mainWin").hide();
        $("#J-gitCardWindow").hide();
        localReloadPage();
    },
    closeWindow:function(){
        $("#mainWin").hide();
        $("#J-gitCardWindow").hide();
    }
};
