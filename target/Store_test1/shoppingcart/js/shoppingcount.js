function Allcount() {    /*** 至少选择一件商品购买**/
    var s=document.getElementsByName("book");
    var booklist=[];
    var flag=false;
    var k=0;
    for(var i=0;i<s.length;i++){
        if(s[i].checked){
            flag=true;
            booklist[k]=s[i].value;
            k++;
        }
    }
    if(!flag){
        alert("您还没有选择要买的东西哦");
    }else {
        selectbook();
        window.location.href="/cart/CreateOrderByCart";

    }
    // var xhr=new XMLHttpRequest();
    // xhr.open("post","");
}



function singleBuy(i) {
    var s=document.getElementById("book"+i);
    s.checked=true;
    var s=document.getElementsByName("book");
    var count=0;
    var k=0;
    var booklist=[];
    for(var i=0;i<s.length;i++){
        if(s[i].checked){
            count++;
            booklist[k]=s[i].value;
            k++;
        }
    }
    var xhr=new XMLHttpRequest();
    xhr.open("post","/cart/CountPrice");
    xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xhr.send("BookId="+booklist);
    xhr.onreadystatechange=function () {
        if (xhr.readyState==4 && xhr.status==200)
        {
            document.getElementById("payAmount").innerHTML=xhr.responseText;
            window.location.href="/cart/CreateOrderByCart";
        }
    };
    document.getElementById("countBook").innerHTML=count;


}
function selectbook() {   /**    选中商品计数  以及 总价      **/
    var s=document.getElementsByName("book");
    var count=0;
    var k=0;
    var booklist=[];
    for(var i=0;i<s.length;i++){
        if(s[i].checked){
            count++;
            booklist[k]=s[i].value;
            k++;
        }
    }
    var xhr=new XMLHttpRequest();
    xhr.open("post","/cart/CountPrice");
    xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xhr.send("BookId="+booklist);
    xhr.onreadystatechange=function () {
        if (xhr.readyState==4 && xhr.status==200)
        {
            document.getElementById("payAmount").innerHTML=xhr.responseText;
        }
    };
    document.getElementById("countBook").innerHTML=count;
}
function selectAll() {    /** 全选所有购物车商品**/
    var s=document.getElementsByName("book");
    for(var i=0;i<s.length;i++){
        s[i].checked=true;
    }
    selectbook();
}

function selectNotAll() {   /** 全不选**/
    var s=document.getElementsByName("book");
    for(var i=0;i<s.length;i++){
        s[i].checked=false;
    }
    selectbook();
}
function $() {        /*** 进入页面执行计数方法**/
    selectbook();
}



function deleteShoppingCart(BookId) {
    var xhr=new XMLHttpRequest();
    xhr.open("post","/cart/deleteShopping");
    xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xhr.send("BookId="+BookId);
    xhr.onreadystatechange=function () {
        if(xhr.readyState==4&&xhr.status==200){
            if(xhr.responseText=="true"){
                var div=document.getElementById("booksDiv"+BookId);
                div.parentNode.removeChild(div);
                selectbook();
            }else {
                alert("error!");
            }
        }
    }
}

