var myhomeConf={
    "menuRoutes":{
            "myhome":{"c":"CHome","a":"myhome"},
            "myAds":{"c":"CHome","a":"myAds"},
            "profileleft":{"c":"CUserCenterComp","a":"userCenterCompany"}
    },
    "myhome":{
            "userInfo":{"c":"CHome","a":"myUserInfo"},
            "myorder":{"c":"CHome","a":"myOrderInfo"},
            "myfavorites":{"c":"CHome","a":"myFavoriteInfo"}
    },
    "loginReturnUrl":{
        "myOrder" : "https://login.dangdang.com/Signin.aspx?ReturnUrl=http://myhome.dangdang.com/myOrderab",
        "myFavorite" : "https://login.dangdang.com/Signin.aspx?ReturnUrl=http://myhome.dangdang.com/myFavorite",
        "myAuction" : "https://login.dangdang.com/Signin.aspx?ReturnUrl=http://myhome.dangdang.com/myAuction",
        "myMargin" : "https://login.dangdang.com/Signin.aspx?ReturnUrl=http://myhome.dangdang.com/myMargin",
        "homepage": "https://login.dangdang.com/Signin.aspx?ReturnUrl=http://myhome.dangdang.com/",
        "myPoint" : "https://login.dangdang.com/Signin.aspx?ReturnUrl=http://myhome.dangdang.com/myPoint" // Notice: 不要添加逗号 ie7 error
    }
};
var myFavoriteConf={
    "api":{
        "getCategory":"/getCategory",//加载商品分类信息
        "getCustomizeTag":"/getCustomizeTag",//加载用户自定义标签信息
        "myFavoriteInfo" : "/myFavoriteInfo",//加载收藏列表信息
        "cancleFavorite":"/deleteFavorites" ,//取消商品收藏
        "addTag":"/addTag", //添加用户自定义标签
        "addTagRelation":"/addTagRelation", //添加用户自定义标签关联关系
        "editTag":"/editTag", //编辑用户自定义标签
        "deleteTag":"/deleteTag", //删除用户自定义标签
        "searchByTagId":"/searchByTagId",//根据标签ID筛选商品
        "searchByCategoryId":"/searchByCategoryId" ,//根据分类ID筛选商品
        "searchByProductName":"/searchByProductName", //根据商品名称搜索商品
        "searchByCityId":"/searchByCityId", //根据商品名称搜索商品
        "getFavoriteCount":"/getFavoriteCount", //获取百货品的收藏人气
        "getPrice":"/getDigitPrice" //获取漫画、原创、听书的价格及评论数
    },
    "url":{
        "productComment" : "http://product.dangdang.com/%.html?point=comment_point",//单品评论区域位置
        "productUrl" : "http://product.dangdang.com/%.html",  //单品页
        "productStockNotice":"http://myhome.dangdang.com/productStockoutRegistration/show",//到货通知
        "oneKeyBuy":"http://checkoutb.dangdang.com/checkout.aspx?product_ids=%.1", //一键购买
        "userLogin":"https://login.dangdang.com/Signin.aspx?ReturnUrl=", //用户登录
        "eUrl":"http://e.dangdang.com/products/%.html",// 数字阅读单品页
        "eReaderUrl":"http://e.dangdang.com/pc/reader/index.html?id=%",//漫画在线阅读
        "eCommentUrl":"http://e.dangdang.com/products/%.html#barModule"//数字阅读单品页评论区
    },
    "city":{
        "list":{
            "0":"\u5168\u56fd","111":"\u5317\u4eac","112":"\u5929\u6d25","113":"\u6cb3\u5317","114":"\u5c71\u897f","115":"\u5185\u8499\u53e4","121":"\u8fbd\u5b81",
            "122":"\u5409\u6797","123":"\u9ed1\u9f99\u6c5f","131":"\u4e0a\u6d77","132":"\u6c5f\u82cf","133":"\u6d59\u6c5f","134":"\u5b89\u5fbd","135":"\u798f\u5efa",
            "136":"\u6c5f\u897f","137":"\u5c71\u4e1c","141":"\u6cb3\u5357","142":"\u6e56\u5317","143":"\u6e56\u5357","144":"\u5e7f\u4e1c","145":"\u5e7f\u897f",
            "146":"\u6d77\u5357","150":"\u91cd\u5e86","151":"\u56db\u5ddd","152":"\u8d35\u5dde","153":"\u4e91\u5357","154":"\u897f\u85cf","161":"\u9655\u897f",
            "162":"\u7518\u8083","163":"\u9752\u6d77","164":"\u5b81\u590f","165":"\u65b0\u7586","171":"\u53f0\u6e7e","172":"\u9999\u6e2f","173":"\u6fb3\u95e8"
        }
    },
    "customizeBook":{
        "productId":1415926071,//定制图书
        "babyinbook_switch":true//是否对指定商品id屏蔽加入购物车按钮的开关，true屏蔽，false不屏蔽
    }
};