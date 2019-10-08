var utilJS ={
		getCookie_one : function (name,type){
			var cookies=document.cookie.split(";")  ;
			var temp ;
			var find_name;
			if(type=="dangdang" || type=="ddoy" || type=="login"){
				if(type == "dangdang"){find_name = "dangdang.com=";}
				if(type == "ddoy"){find_name = "ddoy=";}
				if(type == "login"){find_name = "login.dangdang.com=";}
				var dangdangcookie="";
			    for(i=0;i<cookies.length;i++){
			        if(cookies[i].indexOf(find_name)>-1){
			            dangdangcookie=cookies[i].split("&");
			            for(x=0;x<dangdangcookie.length;x++){
			                 temp = dangdangcookie[x].split("=")  ;
			                 if(utilJS.String.header_trim(temp[0])==name){
			                     return unescape(temp[1]);
			                 }
			            }
			        }
			     }
			}else if(type=="login_comm"){
			     for(j=0;j<cookies.length;j++){
			          if(cookies[j].indexOf("login.dangdang.com=")>0){
			              dangdangcookie=cookies[j].split(".ASPXAUTH=");
			              return dangdangcookie[1];
			          }
			      }
			}else if(type=="dang"){
			     for(j=0;j<cookies.length;j++){
			         if(cookies[j].indexOf("dangdang.com=")==1){
			             if(name=="customerid"){
			            	 dangdangcookie=cookies[j].split("customerid=");
			             }
			             if(name=="email"){
			            	 dangdangcookie=cookies[j].split("email=");
			             } 
			             temp = dangdangcookie[1].split("&");
			             return temp[0];
			          }
			      }
			  }else{
			       for(i=0;i<cookies.length;i++){
			        if(cookies[i].indexOf("dangdang.com=")<0){
			            temp = cookies[i].split("=")  ;
			             if(utilJS.String.header_trim(temp[0])==name){
			                 return unescape(temp[1]);
			             }
			        }
			      }
			  }
			  return "";
		},
		String:{
			header_trim : function (str){
				 return str.replace(/(\s*$)|(^\s*)/g, '');
			}
		},
		//是否为json串
		isJson:function(str){
			if (typeof str == 'string') {
				try {
					JSON.parse(str);
					return true;
				} catch(e) {
					//console.log(e);
					return false;
				}
			}
			//console.log('It is not a string!')
		},
		Ajax:{
			ajaxGetData: function(url, params, callback, errorcallback){
				$.ajax({
			        type: 'GET',
			        url: url,
			        data: params + '&t=' + new Date().getTime(),
			        async: false,
			        data_type: 'json',
			        success: function (result) {
			        	if(callback){
			        		callback(result);
			        	}			            
			        },
			        error: function(XMLHttpRequest, textStatus, errorThrown) {
                                    if(errorcallback){
                                        var $return = {
                                            "status" : XMLHttpRequest.status,
                                            "readyState" : XMLHttpRequest.readyState,
                                            "textStatus" : textStatus
                                        };
                                        errorcallback($return);
                                    }
                                }
			    });
			},
			ajaxData: function(url,type, params, callback){
				$.ajax({
					type: type,
					url: url,
					data: params + '&t=' + new Date().getTime(),
					async: false,
					data_type: 'json',
					success: function (result) {
						if(callback){
							callback(result);
						}
					},
					error: function(){
					}
				});
			},
			ajaxGetDataCacheAndAsync: function(url, params, callback){
				$.ajax({
			        type: 'GET',
			        url: url,
			        data: params,
			        async: true,
			        data_type: 'json',
			        success: function (result) {
			        	if(callback){
			        		callback(result);
			        	}			            
			        },
			        error: function(){
			        }
			    });
			},
			//跨区读取 不缓存
			ajaxJsonpGetData: function(url, params, callback){
				$.ajax({
			    	url: url,
			        data: params + '&t=' + new Date().getTime(),
			        async: false,
			        jsonp: "jsoncallback",
			        dataType: "jsonp",
			        success: function (data) {
			        	if(callback){
			        		callback(data.returnval);
			        	}
			        },
			        error: function(e, errorType){
			        	//console.log(e);
			        	//console.log(errorType);
			        }
			    });
			},
			//跨区读取 缓存
			ajaxJsonpGetDataCacheAndAsync: function(url, params, callback){
				$.ajax({
			    	url: url,
			        data: params,
			        cache: false,
			        async: false,
			        jsonp: "jsoncallback",
			        dataType: "jsonp",
			        success: function (data) {
			        	if(callback){
			        		callback(data.returnval);
			        	}
			        },
			        error: function(e, errorType){
			        	//console.log(e);
			        	//console.log(errorType);
			        }
			    });
			},
			//判断登录
			checkLoginStatus:function(data,url){
				if(utilJS.isJson(data)){
					data = JSON.parse(data);
					if(data &&  data.status==110 ){
						if(data.url){
							window.location.href = data.url;
						}else{
							window.location.href = url;
						}
						return false;
					}
				}
			}

		},
		bussness: {
			getProductImg: function (pid,size,img_num){
			    img_num=((typeof img_num=='undefined')||img_num<1)?'1':img_num;
			    if(img_num>1000){
			        var img_version = parseInt(img_num%1000);
			        img_num = parseInt(img_num/1000);
			        size=(typeof size=='undefined'?'l':size);return 'http://img3x'+pid%10+'.ddimg.cn/'+pid%99+'/'+pid%37+'/'+pid+'-'+img_num+'_'+size+'_'+img_version+'.jpg'
			    }else{
			        size=(typeof size=='undefined'?'l':size);return 'http://img3x'+pid%10+'.ddimg.cn/'+pid%99+'/'+pid%37+'/'+pid+'-'+img_num+'_'+size+'.jpg'
			    }
			},
                        getProductImgNew: function (pid,img_num,size,version){
                            var img_url = 'http://img3x'+pid%10+'.ddimg.cn/'+pid%99+'/'+pid%37+'/'+pid+'-'+img_num+'_'+size+'_'+version+'.jpg';
                            return img_url;
                        }
//                        getFavoriteProductImg:function(product_id,)
		},
		LAZY: {
			appear: function(elem){
				var initTop = 0;
				var elemOffset = utilJS.LAZY.offset(elem);
				return ((utilJS.LAZY.width(window) + utilJS.LAZY.scrollLeft()) > elemOffset.left) && (utilJS.LAZY.height(window) + utilJS.LAZY.scrollTop() - initTop > elemOffset.top);
			},
			width: function(elem){
		    	return elem==window?document.compatMode=='CSS1Compat'&&document.documentElement["clientWidth"]||document.body["clientWidth"]:elem==document?Math.max(document.documentElement["clientWidth"],document.body["scrollWidth"],document.documentElement["scrollWidth"],document.body["offsetWidth"],document.documentElement["offsetWidth"]):(elem.offsetWidth-elem.style.paddingRight-elem.style.paddingLeft-elem.style.borderRight-elem.style.borderLeft);
			},
			height: function(elem){
				return elem==window?document.compatMode=='CSS1Compat'&&document.documentElement["clientHeight"]||document.body["clientHeight"]:elem==document?Math.max(document.documentElement["clientHeight"],document.body["scrollHeight"],document.documentElement["scrollHeight"],document.body["offsetHeight"],document.documentElement["offsetHeight"]):(elem.offsetHeight-elem.style.paddingTop-elem.style.paddingBottom-elem.style.borderTop-elem.style.borderBottom);
			},
			offset: function(elem){
				if(!elem) return {top: 0, left: 0};
				if(elem.getBoundingClientRect){
					var box = elem.getBoundingClientRect(),
						doc = elem.ownerDocument,
						body = doc.body,
						docElem = doc.documentElement,
		                clientTop = docElem.clientTop||body.clientTop||0,
		                clientLeft = docElem.clientLeft||body.clientLeft||0,
		                top = box.top + (self.pageYOffset||utilJS.LAZY.box&&docElem.scrollTop||body.scrollTop) - clientTop,
		                left = box.left + (self.pageXOffset||utilJS.LAZY.box&&docElem.scrollLeft||body.scrollLeft) - clientLeft;
					
					return {top: top, left: left};
				}else{
		             return {top: 0, left: 0};
				}
		  	},
		  	scrollLeft: function(){
				return window['pageXOffset']||utilJS.LAZY.box&&document.documentElement.scrollLeft||document.body.scrollLeft;
			},
			scrollTop: function(){
				return window['pageYOffset']||utilJS.LAZY.box&&document.documentElement.scrollTop||document.body.scrollTop;
			},
			lazy: function(elem, callback, loadId){
				var args = Array.prototype.slice.call(arguments, 2);
				function a(){//同一个文件只加载一次
					if(utilJS.LAZY.appear(elem)){
						if($('#' + loadId).length==0){
							callback.apply(utilJS.LAZY, args);
						}
					}
				}
				a();
				$(window).on('scroll',function(){if(utilJS.LAZY.appear(elem)){a()}});
		    }
		}		
};