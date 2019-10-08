function getshoppingcount() {/** 获取当前购物车中商品的数量**/
    var xhr=new XMLHttpRequest();
    xhr.open("post","/cart/CountShopping");
    xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xhr.send();
    xhr.onreadystatechange=function () {
        if(xhr.readyState==4 &&xhr.status==200){
            console.debug(xhr.responseText);
            document.getElementById("shoppingcount").innerHTML=xhr.responseText;
        }
    }
}

function $() {
    getshoppingcount();
}