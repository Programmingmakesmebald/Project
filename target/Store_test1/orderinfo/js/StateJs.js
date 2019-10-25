function getGoods(BookId,state,i) {
    var statu = confirm("Are you sure ?");

    if(!statu){
        return false;
    }else {
        // $.ajax({
        //     type:"POST",
        //     url:"/book/changeState",
        //     data:{
        //         "BookId":BookId,
        //         "state":state
        //     },
        //     success:function (result) {
        //         if(result){
        //             //成功
        //             $("#div"+i).remove();
        //         }else {
        //             alert("LOST!");
        //             //失败
        //         }
        //     }
        // });
        var xhr=new XMLHttpRequest();
        xhr.open("post","/order/ChangeOrderStateByBookId");
        xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        xhr.send("BookId="+BookId+"&state="+state);
        xhr.onreadystatechange=function (){
            if(xhr.readyState==4&&xhr.status==200){
                if(xhr.responseText=="true"){
                    var div=document.getElementById("div"+i);
                    div.parentNode.removeChild(div);
                }else {
                    alert("LOST!");
                }
            }
        }
    }

}