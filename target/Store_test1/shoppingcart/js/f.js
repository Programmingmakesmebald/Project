(function (window, $) {
    /**
     * 时间格式化
     * @param x Date 时间
     * @param y 样式
     * @returns {XML|string|void}
     */
    function date2str(x, y) {
        var z = {
            y: x.getFullYear(),
            M: x.getMonth() + 1,
            d: x.getDate(),
            h: x.getHours(),
            m: x.getMinutes(),
            s: x.getSeconds(),
            S: x.getTime()
        };
        return y.replace(/(y+|M+|d+|h+|m+|s+|S+)/g, function (v) {
            return ((v.length > 1 ? "0" : "") + eval('z.' + v.slice(-1))).slice(-(v.length > 2 ? v.length : 2))
        });
    }

    /**
     * 生产唯一id
     */
    var uuid = (function () {
        var random = Math.random().toString().substring(2, 20);
        return date2str(new Date(), "yyyyMMddhhmmssSSS").concat("_").concat(random, "E");
    });

    /**
     * 获取cookie
     **/
    function getCookie(name) {
        var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
        if (arr = document.cookie.match(reg))
            return unescape(arr[2]);
        else
            return null;
    }

    var config = {server: "http://recosys.dangdang.com/realdata/collect.jpg", intervalTime: 400, state: 'dev'};
    var MODULE = {
        cart_alsobuy: "cart_alsobuy",//购物车买了还买模块
        cart_foru: "cart_foru",//购物车为你推荐模块
        cart_free_delivery: "cart_free_delivery"//免运费凑单
    };
    var perm_id = getCookie("__permanent_id");//用户标识
    var main_pid = 0; //主商品id，购物车主商品为0
    // 运行周期
    var reco_timer = {
        alsobuy_timer: null,
        foru_timer: null,
        free_delivery_timer: null
    };
    // 各模块li表
    var reco_list = {
        alsobuy_list: null,
        foru_list: null,
        free_delivery_list: null
    };
    // 运行标记
    var reco_flag = {
        alsobuy_flag: false,
        foru_flag: false,
        free_delivery_flag: false
    };

    /**
     * 发送点击信息
     * @param strvalue
     */
    function report_click(strvalue) {
        strvalue = config.server + '?' + strvalue + '&type=1&random_id=' + Math.random();
        $(document.body).append("<img style=\"display: none;\" src=\"" + strvalue + "\"/>");
    }

    /**
     * 发送曝光数据
     * @param li 数据
     */
    function report(li) {
        var position = $(li).attr("position");
        var traced = $(li).attr("traced");
        if (position != null && traced != 1) {
            var src = config.server + "?" + position + "&type=0&random_id=" + Math.random();
            $(document.body).append("<img style=\"display: none;\" src=\"" + src + "\"/>");
            $(li).attr("traced", 1)
        }
    }

    function report_list(li_list) {
        for (var i = 0; i < li_list.length; i++) {
            var position = $(li_list[i]).attr("position");
            var traced = $(li_list[i]).attr("traced");
            if (position != null && traced != 1) {
                var src = config.server + "?" + position + "&type=0&random_id=" + Math.random();
                $(document.body).append("<img style=\"display: none;\" src=\"" + src + "\"/>");
                $(li_list[i]).attr("traced", 1); //曝光标记
            }
        }
    }


    /**
     * 监测是否进入可视区
     * @param page 翻页
     * @param clientHeight
     * @param scrollTop
     */
    function trace(li_list, clientHeight, scrollTop) {
        if (li_list != null && li_list.length > 0) {
            for (var i = 0; i < li_list.length; i++) {
                var offsetTop = $(li_list[i]).offset().top;
                var height = $(li_list[i]).height();
                if (offsetTop < scrollTop) {
                    //已经滚动到可视取上方
                    if ((offsetTop + height) > scrollTop && (offsetTop + height) < (clientHeight + scrollTop)) {
                        //露出尾部
                        report(li_list[i]);
                    } else if ((offsetTop + height) < scrollTop) {
                        //上方不可见位置
                    }
                } else if (offsetTop < clientHeight + scrollTop) {
                    //进入可视区
                    report(li_list[i]);
                } else {
                    //在可视区下方
                }
            }
        }
    }


    /*reco分页事件*/
    function reco_trace_page(div_found, page_num, size) {
        var li_list = get_reco_visible_list(div_found, page_num, size);
        if (li_list.length > 0) {
            report_list(li_list);
        }
    }


    /*获取reco可见模块*/
    function get_reco_visible_list(div_found, page_num, size) {
        var ul_list = $(div_found).find("ul.show_box");
        for (var i = 0; i < ul_list.length; i++) {
            var display = $(ul_list[i]).css('display');
            if (display != 'none') {
                return $(ul_list[i]).find("li");
            }
        }
    }


    /*
     *reco模块监控
     */
    function test_recoData(timer, reco_struct, moudle_name) {
        var reco_div = $(reco_struct.reco_div_id);
        reco_list[reco_struct.list] = $(reco_div).find(reco_struct.reco_list_id).find(reco_struct.li_element);
        var prelist = null;
        var lastlist = null;
        if (reco_struct.pagesize != 0){
            if (reco_list[reco_struct.list].length > reco_struct.pagesize) {
                prelist = reco_list[reco_struct.list].slice(0, reco_struct.pagesize);
                lastlist = reco_list[reco_struct.list].slice(reco_list[reco_struct.list].length - reco_struct.pagesize);
                reco_list[reco_struct.list] = reco_list[reco_struct.list].slice(reco_struct.pagesize, reco_list[reco_struct.list].length - reco_struct.pagesize);
            }
        }
        if (reco_list[reco_struct.list].length > 0) {
            clearInterval(timer);
            if (reco_flag[reco_struct.flag] == true){
                return;
            }
            reco_flag[reco_struct.flag] = true;
            var i = 0;
            for (i = 0; i < reco_list[reco_struct.list].length; i++) {
                //获取点击url,用以获取recopid
                if (reco_struct.a_class == ""){
                    var url = $(reco_list[reco_struct.list][i]).attr("href");
                }
                else{
                    var url = $(reco_list[reco_struct.list][i]).find(reco_struct.a_class).attr("href");
                    if (url == null) {
                        url = $(reco_list[reco_struct.list][i]).find("a").attr("href");
                    }
                }
                //检测是否为空
                var img = $(reco_list[reco_struct.list][i]).find(reco_struct.img);//产品图片
                if (img.length == 0) {
                    //遇到没有图片的商品就直接跳过
                    break;
                }
                //获取写在li上的requestid,关联选购requestid为空,定位-1
                var request_id;
                if(reco_struct.request_element_name == ""){
                    request_id = "-1";
                }
                else{
                    request_id = $(reco_list[reco_struct.list][i]).attr(reco_struct.request_element_name);
                }
                if (request_id == null){
                    request_id = $($(reco_div).find(reco_struct.request_element_id)).attr(reco_struct.request_element_name);
                    if (request_id == null){
                        request_id = "-1";
                    }
                }
                //解析recopid,定义
                var reco_pid = /\d+/.exec(url)[0];
                if (url == 'javascript:void(0);' && reco_struct.flag == "relate_flag") {
                    reco_pid = main_pid;
                }
                var position = i + 1;
                var params = {
                    request_id: request_id,
                    perm_id: perm_id,
                    module: moudle_name,
                    main_pid: reco_struct.mainid,
                    reco_pid: reco_pid,
                    position: position,
                    state: config.state, // 状态
                    client: "PC"
                };
                var paramsstr = $.param(params);
                $(reco_list[reco_struct.list][i]).attr("position", paramsstr);


                //添加点击事件:0为关联选购条件
                if (reco_struct.a_depth == 1){
                    $(reco_list[reco_struct.list][i]).find("a").click(function () {
                        var position = $(this).parent().attr("position");
                        if (position == null) {
                            position = $($(this).parent()).parent().attr("position");
                        }
                        report_click(position);
                    });
                }
                else if(reco_struct.a_depth == 2){
                    $(reco_list[reco_struct.list][i]).find("a").click(function () {
                        if ($(this).attr("href") != "javascript:void(0)"){//去除勾选点击
                            var position = $($(this).parent()).parent().attr("position");
                            if (position == null) {
                                position = $(this).parent().attr("position");
                            }
                            report_click(position);
                        }
                    });
                }
                else if(reco_struct.a_depth == 0){
                    $(reco_list[reco_struct.list][i]).click(function () {
                        var position = $(this).attr("position");
                        report_click(position); //发送点击数据
                    });

                }
            }

            // 边沿
            if (reco_struct.pagesize != 0){
                if (prelist != null && lastlist != null && reco_list[reco_struct.list].length >= reco_struct.pagesize) {
                    for (var j = 0; j < prelist.length; j++) {
                        var index = reco_list[reco_struct.list].length - reco_struct.pagesize + j;
                        var p = $(reco_list[reco_struct.list][index]).attr("position");
                        $(prelist[j]).attr("position", p);
                        $(prelist[j]).find("a").click(function () {
                            var position = $($(this).parent()).parent().attr("position");
                            report_click(position);
                        })
                    }
                    for (var k = 0; k < lastlist.length; k++) {
                        var index = k;
                        var p = $(reco_list[reco_struct.list][index]).attr("position");
                        $(lastlist[k]).attr("position", p);
                        $(lastlist[k]).find("a").click(function () {
                            var position = $($(this).parent()).parent().attr("position");
                            report_click(position);
                        })
                    }
                }
            }

            reco_list[reco_struct.list].splice(i);//剪切数据，剪切掉空元素
            //添加分页事件
            //左翻页
            if(reco_struct.left_id != ""){
                var prev = $(reco_div).find(reco_struct.left_id).click(function () {
                    setTimeout(function () {
                        var nowpage = null;
                        if (reco_struct.nowpage == true){
                            nowpage = parseInt($(reco_div).find("#now_page").html());
                        }
                        reco_trace_page(reco_div, nowpage, reco_struct.pagesize);
                    }, 50);
                });
            }
            //右翻页
            if(reco_struct.right_id != ""){
                var next = $(reco_div).find(reco_struct.right_id).click(function () {
                    setTimeout(function () {
                        var nowpage = null;
                        if (reco_struct.nowpage == true){
                            nowpage = parseInt($(reco_div).find("#now_page").html());
                        }
                        reco_trace_page(reco_div, nowpage, reco_struct.pagesize);
                    }, 50);
                });
            }
            //圆点点击
            if(reco_struct.fanye_id != ""){
                var topage = $(reco_div).find(reco_struct.fanye_id).click(function () {
                    setTimeout(function () {
                        var nowpage = null;
                        reco_trace_page(reco_div, nowpage, reco_struct.pagesize);
                    }, 50);
                });
            }

            //第一页曝光
            var clientHeight = $(window).height();
            var scrollTop = $(document).scrollTop();
            var nowpage = null;
            if (reco_struct.nowpage == true){
                nowpage = 1;
            }
            var first_report_lists = get_reco_visible_list(reco_div, nowpage, reco_struct.pagesize);
            trace(first_report_lists, clientHeight, scrollTop);

            //添加滚动事件
            $(window).scroll(function () {
                var clientHeight = $(window).height();
                var scrollTop = $(document).scrollTop();
                var nowpage = null;
                if (reco_struct.nowpage == true){
                    nowpage = parseInt($(reco_div).find("#now_page").html());
                }
                var report_lists = get_reco_visible_list(reco_div, nowpage, reco_struct.pagesize);
                trace(report_lists, clientHeight, scrollTop);
            });
        }

    }


    /**
     * 当当购物车页
     */
    function cart_start() {
        //alert("当当购物车页");
        //为你推荐
        var foru_reco = {
            list: "foru_list", //list名称
            reco_div_id: "#J_weinituijian", //div层id
            reco_list_id: "ul.show_box", //li元素id
            li_element: "li", //查找元素
            mainid: main_pid,
            request_element_name: "request_id", //requsetid元素属性值
            request_element_id: "ul.show_box:first", //requsetid元素id
            a_class: "a.gpic", //链接id
            img: "a.gpic img", //图片id
            a_depth: 2, //链接离li深度
            right_id: "a.arrow.right", //右翻页id
            left_id: "a.arrow.left", //左翻页id
            fanye_id: "ul.ads_num li", //翻页按钮id
            flag: "foru_flag", //运行标志
            pagesize: 0, //是否翻页,剪切页面大小,购物车无用
            nowpage: false //是否有页码标识
        };
        reco_timer.foru_timer = setInterval(function () {
            test_recoData(reco_timer.foru_timer, foru_reco, MODULE.cart_foru);
        }, config.intervalTime);

        //买了还买
        var alsobuy_reco = {
            list: "alsobuy_list",
            reco_div_id: "#J_alsobuy",
            reco_list_id: "ul.show_box.line2",
            li_element: "li", //查找元素
            mainid: main_pid,
            request_element_name: "request_id",
            request_element_id: "ul.show_box.line2:first",
            a_class: "a.gpic",
            img: "a.gpic img",
            a_depth: 2,
            right_id: "a.arrow.right", //"div.left"
            left_id: "a.arrow.left", //"div.right"
            fanye_id: "ul.ads_num li", //"div.recommend_fanye",
            flag: "alsobuy_flag",
            pagesize: 0,
            nowpage: false
        };
        reco_timer.alsobuy_timer = setInterval(function () {
            test_recoData(reco_timer.alsobuy_timer, alsobuy_reco, MODULE.cart_alsobuy);
        }, config.intervalTime);

        //免运费凑单
        var free_delivery_reco = {
            list: "free_delivery_list",
            reco_div_id: "#J_cartContent div.shipping_add",
            reco_list_id: "ul.show_box",
            li_element: "li", //查找元素
            mainid: main_pid,
            request_element_name: "request_id",
            request_element_id: "request_id",
            a_class: "a.img",
            img: "a.img img",
            a_depth: 2,
            right_id: "a.arrow_shipping", //"div.left"
            left_id: "a.arrow_shipping.left", //"div.right"
            fanye_id: "ul.add_num li", //"div.recommend_fanye",
            flag: "free_delivery_flag",
            pagesize: 0,
            nowpage: false
        };

        //免运费tab点击
        free_delivery_click_flag = false;
        var free_delivery_click_timer = null;
        free_delivery_click_timer = setInterval(function () {
            var free_delivery_click = $("div#J_cartContent div.shopping_list span.shipping_tip a.more").click(function () {
                clearInterval(free_delivery_click_timer);
                if(free_delivery_click_flag == false){
                    free_delivery_click_flag = true;
                    reco_flag.free_delivery_flag = false;
                    clearInterval(reco_timer.free_delivery_timer);
                    reco_timer.free_delivery_timer = setInterval(function () {
                        test_recoData(reco_timer.free_delivery_timer, free_delivery_reco, MODULE.cart_free_delivery);
                    }, config.intervalTime);
                    free_delivery_click_flag = false;
                }
            });
        }, 2000);
        //免运费凑单百货tab点击
        free_delivery_mall_flag = false;
        var free_delivery_tab_timer = null;
        free_delivery_tab_timer = setInterval(function () {
            var free_delivery_click = $("div#J_cartContent div.shipping_add ul.add_tab a").click(function () {
                //clearInterval(free_delivery_tab_timer);
                if(free_delivery_mall_flag == false){
                    free_delivery_mall_flag = true;
                    reco_flag.free_delivery_flag = false;
                    clearInterval(reco_timer.free_delivery_timer);
                    reco_timer.free_delivery_timer = setInterval(function () {
                        test_recoData(reco_timer.free_delivery_timer, free_delivery_reco, MODULE.cart_free_delivery);
                    }, config.intervalTime);
                    free_delivery_mall_flag = false;
                }
            });
        }, 2000);


    }

    window.CC = {
        /**
         * 启动埋点监控
         */
        cart: function () {
            cart_start();
        }
    }
})(window, jQuery);