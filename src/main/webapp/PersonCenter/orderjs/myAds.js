var adPageVar = {
		adPageSize: 10, //24小时特惠广告每页显示记录数
                cpc1PageSize:10,//根据浏览推荐广告每页显示记录数
		productUrl: 'http://product.dangdang.com/', //单品页url
		selfUrl: 'http://myhome.dangdang.com',//本项目url
                //reviewUrl:'http://comm.dangdang.com/comment/review_list.php?pid='//评论url
                reviewUrl:'http://product.dangdang.com/#.html?point=comment_point',
                loginUrl:'https://login.dangdang.com/Signin.aspx?ReturnUrl='
}
$(document).ready(function(){
	//初始化数据
        getHistoryInfo();//浏览推荐
	//gethotSaleInfo();//推广商品
	//gethotSaleIn24hInfo();//24小时特惠
	//推广商品
	$('#cpc_tab').on('mouseover', function(){
                gethotSaleInfo();
                //toolLip("J-cpc0List");
		$('.ads_tab a').removeClass('current');
		$(this).addClass('current');
		$('#cpc_1').hide();
		$('#fp').hide();
		$('#cpc_0').show();
	});
	//浏览器推荐
	$('#reco_tab_history').on('mouseover', function(){
		$('.ads_tab a').removeClass('current');
		$(this).addClass('current');
		$('#cpc_0').hide();
		$('#fp').hide();
		$('#cpc_1').show();
	});
	$('#J-cpc1Pre').on('click', function(){
		showAdPre('J-cpc1List', 'J-cpc1Pre', 'J-cpc1Next');
	});
	$('#J-cpc1Next').on('click', function(){
		showAdNext('J-cpc1List', 'J-cpc1Pre', 'J-cpc1Next');
	});
	//24小时特惠
	$('#fp_title').on('mouseover', function(){
                gethotSaleIn24hInfo();
                //toolLip("J-fpList");
		$('.ads_tab a').removeClass('current');
		$(this).addClass('current');
		$('#cpc_0').hide();
		$('#cpc_1').hide();
		$('#fp').show();
	});
	$('#J-fpPre').on('click', function(){
		showAdPre('J-fpList', 'J-fpPre', 'J-fpNext');
	});
	$('#J-fpNext').on('click', function(){
		showAdNext('J-fpList', 'J-fpPre', 'J-fpNext');
	});	  
        
	//推荐埋点
	CC.myhome();
});
//推广商品
function gethotSaleInfo(){	
	var $myLeftMenu = $('#J-cpc0List');
	var tpl_set = document.getElementById('J-cpc0Temp').innerHTML;
	var noDataHtml = document.getElementById('J-noDataTemp').innerHTML;
	var noDataInfo = {"tipInfo": "\u6682\u65f6\u6ca1\u6709\u70ed\u5356\u5546\u54c1\u63a8\u8350"};//暂时没有推广商品推荐
	var seqs='',ad_ids='',extra_orgs='',pos='',sflags='',one_node="";
	var ip='', permanent_id='', ab_version='',style='',rdm='';
	
	utilJS.Ajax.ajaxJsonpGetDataCacheAndAsync(adPageVar.selfUrl + '/hotSaleInfo', '', function(data){		
		if(data!=''){
			var info = data;
                        if (info.status==110) {
                           window.location.href = adPageVar.loginUrl + adPageVar.selfUrl;
                           return;
                        }
			//没有数据
			if(info.data.length==0){
				info.tipObj = noDataInfo;
			}else{
				for(var i in info.data){
					//获取产品图片路径
					info.data[i].img = utilJS.bussness.getProductImg(info.data[i].pid, 'l', info.data[i].img);
                                        //评论url
                                        info.data[i].review_url = adPageVar.reviewUrl.replace("#",info.data[i].pid);                                        
					//发送曝光度统计 参数拼接
					pos += (info.data[i].pos + ',');
                    seqs += (info.data[i].pos_num + ',');
                    ad_ids += (info.data[i].ad_id + ',');
                    extra_orgs += (info.data[i].extra_org + ',');
                    sflags += (info.data[i].sflag + ',');
                    ip = info.data[i].ip;
                    permanent_id = info.data[i].permanent_id;
				}
				ab_version = info.ab_version;
				style = info.style;
				rdm = info.through_id;
			}
	        var html = juicer(tpl_set).render(info);
	        $myLeftMenu.html(html);
	        
	        if(info.data.length>0){
				var elem = $('#cpc_0')[0];
				var lazyShowLogUrl = $('#J_exposureDegreeUrl').val();
				//var lazyShowLogUrl='http://per.dangdang.com/';
				//页面滚动时，推广商品进入可视范围内，发送曝光度请求，只发送一次
				utilJS.LAZY.lazy(elem, loadJS,'J_cpc0_per', lazyShowLogUrl + 'logurl.htm?tp=2&seq=' + seqs
						+'&pos=' + pos + '&ad_id=' + ad_ids + '&extra=' + ''//extra
						+'&extra_org=' + extra_orgs + '&sflag=' + sflags 
						+'&ip=' + ip + '&permanent_id=' + permanent_id
						+'&rdm=' + rdm + '&style=' + style +'&ab=' + ab_version
						+'&showdiv=' + 'cpc_0' 
						+'&t=' + new Date().getTime());
			}
		}else{
			data = noDataInfo;
			$myLeftMenu.html(juicer(noDataHtml).render(data));
		}			
    });
}
function loadJS(id, src){
    var head = document.getElementsByTagName('HEAD')[0],
    	script = document.createElement('SCRIPT');
    script.src = src;
    script.id = id;
    script.async = true;
    head.appendChild(script);
}
//浏览推荐
function getHistoryInfo(){	
	var $myLeftMenu = $('#J-cpc1List');
	var tpl_set = document.getElementById('J-cpc1Temp').innerHTML;
	var noDataHtml = document.getElementById('J-noDataTemp').innerHTML;
	var noDataInfo = {"tipInfo": "\u6682\u65f6\u6ca1\u6709\u6839\u636e\u6d4f\u89c8\u63a8\u8350\u5546\u54c1"};//暂时没有根据浏览推荐商品
	var compiled_set = juicer(tpl_set);
	utilJS.Ajax.ajaxJsonpGetData(adPageVar.selfUrl + '/historyInfo', '', function(data){	
		if(data!=''){
			var info = data;		
			if(data.hasOwnProperty("request_id")){
				$("#cpc_1").attr("request_id", data.request_id);
			}
			
			//没有数据
			if(info.items.length < 10){
				$('#J-cpc1Pre').hide();
				$('#J-cpc1Next').hide();
				info.tipObj = noDataInfo;
			}else{
                                var totalCount = Math.floor(info.total_count/10);
                                info.items.length = totalCount*10;                            
				//只有一页数据时，不显示翻页按钮
				if(info.items.length == 10){
					$('#J-cpc1Pre').hide();
					$('#J-cpc1Next').hide();
				}
				for(var i in info.items){
					//处理产品单品页路径
					info.items[i].url = adPageVar.productUrl + info.items[i].product_id + '.html#ddclick_reco_recobar_1';
					//处理产品图片路径
                    info.items[i].img = utilJS.bussness.getProductImgNew(info.items[i].product_id, '1', 'l', info.items[i].image_version);
					//处理产品价格
					info.items[i].sale_price = (info.items[i].sale_price/100).toFixed(2);
                                        //评论url
                                        info.items[i].review_url = adPageVar.reviewUrl.replace("#",info.items[i].product_id);
                                        //作者
                                        if(info.items[i].author_name != ""){
                                            info.items[i].author_name = '<p class="author">作者:'+info.items[i].author_name+'</p>';                                        
                                        }else{
                                            info.items[i].author_name = '';
                                        }
                                        
				}
			}
	        var html = compiled_set.render(info);
	        $myLeftMenu.html(html);	   
                toolLip("J-cpc1List");
		}else{
			$('#J-cpc1Pre').hide();
			$('#J-cpc1Next').hide();
			data = noDataInfo;
			$myLeftMenu.html(juicer(noDataHtml).render(data));
		}		
    });
}
//24小时特惠
function gethotSaleIn24hInfo(){	
	var $myLeftMenu = $('#J-fpList');
	var tpl_set = document.getElementById('J-fpTemp').innerHTML;
	var noDataHtml = document.getElementById('J-noDataTemp').innerHTML;
	var noDataInfo = {"tipInfo": "\u6682\u65f6\u6ca1\u6709\u7279\u60e0\u5546\u54c1"};//暂时没有特惠商品
	var compiled_set = juicer(tpl_set);
	utilJS.Ajax.ajaxJsonpGetDataCacheAndAsync(adPageVar.selfUrl + '/saleIn24h', '', function(data){
		if(data!=''){
			var info = data;
                        if (info.status==110) {
                           window.location.href = adPageVar.loginUrl + adPageVar.selfUrl;
                           return;
                        }
			//没有数据
			if(info.data.length == 0){
				$('#J-fpPre').hide();
				$('#J-fpNext').hide();
				info.tipObj = noDataInfo;
			}else{
				//只有一页数据时，不显示翻页按钮
				if(info.data.length <= 10){
					$('#J-fpPre').hide();
					$('#J-fpNext').hide();
				}
				for(var i in info.data){
					//处理产品单品页路径
					info.data[i].url = info.data[i].url + '#ddclick_area_flash_products';
                                        //评论url
                                        info.data[i].review_url = adPageVar.reviewUrl.replace("#",info.data[i].product_id);                                        
                                        
				}
			}			
	        var html = compiled_set.render(info);
	        $myLeftMenu.html(html);	        
		}else{
			$('#J-fpPre').hide();
			$('#J-fpNext').hide();
			data = noDataInfo;
			$myLeftMenu.html(juicer(noDataHtml).render(data));
		}
    });
}
//广告查看上一页
function showAdPre(listWrap, preId, nextId){
	var $listItems = $('#' + listWrap + ' li');
	var curPage = $('#' + listWrap).attr('data-pageNum');//当前页码
    var pageCount = $listItems.length;//总条数
    if(listWrap == "J-cpc1List"){
        var pageSize = adPageVar.cpc1PageSize;
    }
    if(listWrap == "J-fpList"){
        var pageSize = adPageVar.adPageSize;
    }    
    var totalPage = Math.ceil(pageCount/pageSize);//总页码
	if(totalPage != 1){
        curPage--;
        if(curPage<1){
            $('#' + preId).addClass('unable');
            curPage = 1;
        }else{
            if(curPage==1){
            	$('#' + preId).addClass('unable');
            }else{
            	$('#' + preId).removeClass('unable');
            }
            if(curPage < totalPage){
            	$('#' + nextId).removeClass('unable');
        	}
            for(var i=1; i<=pageSize; i++){
                var prev = parseInt(pageSize * curPage - i);            
                var next = parseInt(pageSize * (curPage + 1) - i);
            	$listItems.eq(prev).css({'display': 'block'});
                if(next > (pageCount - 1)){
                    continue;
                }
                $listItems.eq(next).css({'display': 'none'});
            }
        }
        $('#' + listWrap).attr('data-pageNum', curPage);
    }
}
//广告查看下一页
function showAdNext(listWrap, preId, nextId){
	var $listItems = $('#' + listWrap + ' li');
	var curPage = $('#' + listWrap).attr('data-pageNum');//当前页码
    var pageCount = $listItems.length;//总条数
    if(listWrap == "J-cpc1List"){
        var pageSize = adPageVar.cpc1PageSize;
    }
    if(listWrap == "J-fpList"){
        var pageSize = adPageVar.adPageSize;
    }       
    var totalPage = Math.ceil(pageCount/pageSize);//总页码
    
	if(totalPage != 1){
        curPage++;
        if(curPage > totalPage){
        	$('#' + nextId).addClass('unable');
        	curPage = totalPage;
        }else{        	
            if(curPage == totalPage){
            	$('#' + nextId).addClass('unable');
            }else{
            	$('#' + nextId).removeClass('unable');
            }
            if(curPage > 1){
        		$('#' + preId).removeClass('unable');
        	}            
            for(var i=1; i<=pageSize; i++){       
                var prev = pageSize* (curPage - 1)-i;
                var next = pageSize * curPage - i;
                $listItems.eq(prev).css({'display': 'none'});
                if(next > (pageCount-1)){
                    continue;
                }
                $listItems.eq(next).css({'display': 'block'});
            }
        }
        $('#' + listWrap).attr('data-pageNum', curPage);
    }
}
//鼠标浮到图片或文字上出现遮照，显示商品全称
function toolLip(id){
        $("#"+id+" li").each(function(){
            $(this).find("a:eq(0)").bind("mouseover",function(){
                $(this).find(".remind_all").show();
            });
            $(this).find("a:eq(0)").bind("mouseout",function(){
                $(this).find(".remind_all").hide();
            }); 
            $(this).find("a:eq(2)").bind("mouseover",function(){
                $(this).parents("li").find(".remind_all").show();
            });
            $(this).find("a:eq(2)").bind("mouseout",function(){
                $(this).parents("li").find(".remind_all").hide();
            });               
        })  
}
