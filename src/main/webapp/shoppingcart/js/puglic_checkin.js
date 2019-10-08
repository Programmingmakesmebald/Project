/***
 * 积分签到弹层初始化使用说明
 * 1.在需要使用积分签到页面，添加以下html
 * 	<!-- 积分签到弹层 -->
	<div id="J_checkInOuterPan" style="display: none;"></div>
 * 2. 在需要使用积分签到页面，引入以下js
 *   <script src="static/js/public/puglic_checkin.js?20170928" type="text/javascript" ></script>
 * 3.在需要使用积分签到页面，js的$(document).ready方法中添加
 *   //积分签到弹层初始化
 *   	//使用myhome平台进行登录验证
 *   	initCheckinPan(parentDomId, curDomId, sourceId);
	     	@param parentDomId： 积分签到按钮所在父节点id
	     	@param curDomId： 积分签到按钮id
	     	@param sourceId： 平台来源 
	     	@demo 	 如：initCheckinPan('J_muneAndContentWrap', 'J_checkInBtn' ,6);
	     //使用登录弹出进行登录验证
	     initCheckinPanWithWindow(parentDomId, curDomId, sourceId)
	     	@param parentDomId： 积分签到按钮所在父节点id
	     	@param curDomId： 积分签到按钮id
	     	@param sourceId： 平台来源 
	     	@demo 	 如：initCheckinPanWithWindow('J_muneAndContentWrap', 'J_checkInBtn' ,6);
 * */
var page_checkin = {
		link: {
			'loginJs': 'http://static.ddimg.cn/js/login/LoginWindow.js',//登录弹出js
			'isCanCheckin': 'http://myhome.dangdang.com/isCanCheckin',//判断是否显示签到按钮
			'chekcinApi': 'http://myhome.dangdang.com/checkin' //获取签到弹出
		},
		checkInPanHtml: '<div class="mask j_checkin_mask j_checkinPanWrapMask" style="background-color: black;position: fixed;width: 100%;height: 100%;left: 0;top: 0;z-index:99997;opacity: 0.1;" ></div><div id="J_checkinPanWrap" style="width: 622px; height: 592px; position: absolute; left: 50%; top: 50%; margin-left: -311px; margin-top: -160px;z-index:99998;"><iframe id="J_checkinPanIframe" name="J_checkinPanIframe" src="" scrolling="no"  frameborder="0" scrolling="no" allowtransparency="true" style="background-color:transparent;width: 622px; height: 592px;"></iframe><div class="j_close_checkin_pan_wrap" style="width: 40px;height: 40px;position: absolute;right: 0;top: 0;z-index: 99999;cursor:pointer;"></div><div class="j_close_checkin_pan_wrap" style="width: 40px;height: 40px;position: absolute;left: 470px;top: 0;z-index: 99999;cursor:pointer"></div></div>'//签到弹层html
};
/**
 * 积分签到弹层初始化
 * 使用myhome平台进行登录验证
 * @param parentDomId： 积分签到按钮所在父节点id
 * @param curDomId： 积分签到按钮id
 * @param sourceId： 平台来源 
 * @demo 	 如：initCheckinPanWithLogin('J_muneAndContentWrap', 'J_checkInBtn' ,6);
 * */
function initCheckinPan(parentDomId, curDomId, sourceId){
    //进行签到并打开签到进度弹窗
    if($('#' + parentDomId) && $('#' + parentDomId).length>0){
    	$('#' + parentDomId).on('click', '#' + curDomId, function(){    		
    		$.ajax({
				url: "/isLogin",
				//dataType: "json",
				success: function(msg){
					
					var loginUrl = myhomeConf.loginReturnUrl.homepage;
					if(sourceId==5){
						loginUrl = myhomeConf.loginReturnUrl.myPoint;
					}
					if(utilJS.isJson(msg)){
						var data = JSON.parse(msg);
						if(data &&  data.status==110 ){
							//判断是否登录，未登录进行登录
							utilJS.Ajax.checkLoginStatus(msg, loginUrl);							
						}else{
							//打开签到面板
							printCheckInPanFun(sourceId);
						}
					}else{
						//打开签到面板
						printCheckInPanFun(sourceId);
					}
				}
    		});
    	});
    }
    
    //关闭弹层
    $('#J_checkInOuterPan').on('click', '.j_close_checkin_pan_wrap', function(){
    	closePointCheckin();
    });	
}
/**
 * 积分签到弹层初始化
 * 使用登录弹出进行登录验证
 * @param parentDomId： 积分签到按钮所在父节点id
 * @param curDomId： 积分签到按钮id
 * @param sourceId： 平台来源 
 * @demo 	 如：initCheckinPanWithLogin('J_muneAndContentWrap', 'J_checkInBtn' ,6);
 * */
function initCheckinPanWithWindow(parentDomId, curDomId, sourceId){
	/*LoginWindow */
    //用于兼容 跨域异步引入js中使用document.write方法
	document_write = document.write;
	document.write = function(subdoc) {
        return $("head").append(subdoc);
    };
    if (!window['showMsgBox']) {
        $.getScript(page_checkin.link.loginJs, function(){
        	document.write = document_write;
        });
    }
    
    /**
     * 点击签到按钮
	 *    未登录：弹出登录弹框
	 *    已登录：进行签到并打开签到进度弹窗
     */
    if($('#' + parentDomId).length>0){
    	$('#' + parentDomId).on('click', '#' + curDomId, function(){
        	//showMsgBox('', '', 'http://myhome_yhy.dangdang.com/checkin');
    		showMsgBox('', '', '', function() {
        		printCheckInPanFun(sourceId);
           });
    	});
    }
    
    //关闭弹层
    $('#J_checkInOuterPan').on('click', '.j_close_checkin_pan_wrap', function(){
    	closePointCheckin();
    });	
}
//关闭签到弹层 
function closePointCheckin(){
	$('#J_checkinPanIframe').attr('src','');
	$('#J_checkInOuterPan').hide();
}

//打开签到面板
function printCheckInPanFun(sourceId) {	
	//打印签到弹层内容
	if ($("#J_checkinPanIframe").length==0) {
        $("#J_checkInOuterPan").html(page_checkin.checkInPanHtml);
    } 
	
	$('#J_checkinPanIframe').attr('src', page_checkin.link.chekcinApi + '?sourceId='+ sourceId +'&t=' + Math.random());
	$('#J_checkInOuterPan').show();
}

/**
 * 控制积分签到按钮显示，及控制显示信息
 * 根据获得的活动信息，判断积分签到按钮是否需要显示
 * 根据签到进度显示提示文案。
 * */
function printCheckInBtnFun (sourceId){	
	$.ajax({
    	url: page_checkin.link.isCanCheckin,
        data: {
        	sourceId: sourceId
        },
        cache: false,
        async: false,
        jsonp: "jsoncallback",
        dataType: "jsonp",
        success: function (data) {
        	if(data.returnval && data.returnval.status=='0'){
        		//根据签到进度信息，显示提示文案
        		var checkinText, checkinSubText;
        		var progressDetail = data.returnval.progressDetail.data;
        		if(data.returnval.progressDetail.status=='0'){
        			//签到标题信息
        			checkinText = '&nbsp;签到领积分';
        			/*
        			if(progressDetail.hasCheckedIn == true){
        				checkinText = '已签到';
        			}
        			*/
        			//签到按钮副标题
        			if(progressDetail.hasExtraBonus == true){        				
        				if(progressDetail.checkinDays==0){
        					checkinSubText = '连续签到' + progressDetail.checkinCycle + '天可获额外奖励';
        				}else if(progressDetail.checkinCycle == progressDetail.checkinDays){
            				checkinSubText = '连续签到' + progressDetail.checkinCycle + '天已获得额外奖励';
            			}else{
            				checkinSubText = '再连续签到'+ (progressDetail.checkinCycle - progressDetail.checkinDays)  +'天可获额外奖励';
            			}
        			}else{
        				if(progressDetail.checkinDays==0){
        					checkinSubText = '每天点一点都有积分领';
        				}else{
            				checkinSubText = '已连续签到' + progressDetail.checkinDays + '天';
            			}
        			}
        			
        			$('.j_checkIn_btn').html(checkinText);
        			$('.j_checkIn_subText').text(checkinSubText);
        		}
        		//$('.j_checkIn_btn_wrap').show();
        	}
        }
    });
}