
function getAjax() {/***    获取Ajax对象      **/
    if (XMLHttpRequest) {
        return new XMLHttpRequest();
    } else if (ActiveXObject) {
        return new ActiveXObject("Microsoft.XMLHTTP");
    } else {
        return -1;
    }
}
function getCode(x,goal) {/** 获取验证码**/
    var xhr=getAjax();
    xhr.open("post","/user/check");
    xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xhr.send("PhoneNum="+x+"&goal="+goal);
}

function check1(goal) {  /***** 发送验证码 ********/
    var num=document.getElementById("PhoneNum").value;
    getCode(num,goal);
    var checkbtn=document.getElementById("checkbtn");
    checkbtn.disabled=true;
    var time=60;//设置倒计时秒数
    var timer=setInterval(fun1,1000);

    function  fun1(){
        time--;
        if(time>0){
            checkbtn.innerHTML=time+"s后重新发送";
        }else {
            checkbtn.innerHTML="重新发送验证码";
            checkbtn.disabled=false;
            clearTimeout(timer);
            time=60;//设置重新循环的条件！
        }
    }
}
function checkNum() {/****   检查手机号格式是否正确**/
    var phone=document.getElementById("PhoneNum").value;
    var checkbtn=document.getElementById("checkbtn");
    var checkinfo=document.getElementById("checkinfo");
    if(!(/^1(3|4|5|6|7|8|9)\d{9}$/.test(phone))){
        checkinfo.innerHTML="请输入正确的手机号";
        checkbtn.disabled=true;
    }else {
        checkinfo.innerHTML="";
        checkbtn.disabled=false;
    }
}

function addCart() {
    var xhr=new XMLHttpRequest();
    var add=document.getElementById("cartAdd");
    var bookId=document.getElementById("BookId").value;
    xhr.open("post","/cart/addCart");
    xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xhr.send("BookId="+bookId);
    xhr.onreadystatechange=function () {
        if(xhr.status==200 && xhr.readyState==4){
            if(xhr.responseText=="true"){
                document.getElementById("block").innerHTML="添加成功";
                add.disabled=true;
            }else {
                document.getElementById("block").innerHTML="添加失败";
            }
        }
    };

}