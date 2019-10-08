function getGoods(userid,i) {
    $.ajax({
        type:"POST",
        url:"/book/changeState",
        data:{
            "userid":userid
        },
        success:function (result) {
            if(result.success){
                //成功

            }else {
                //失败
            }
        }
    })
}