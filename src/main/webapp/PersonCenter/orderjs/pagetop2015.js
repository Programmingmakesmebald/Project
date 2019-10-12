
//--------------------header---------
//操作条菜单
function showgaoji(aid,did){
    var obj = document.getElementById(aid);
    var divotherChannel=document.getElementById(did);
    if(aid!="znx_channel"){
        obj.className="menu_btn hover";
        divotherChannel.style.width="";
        var obj_width = obj.clientWidth;
        //divotherChannel.style.zIndex = 1000 ;
        divotherChannel.style.display = "block";
        var div_width = divotherChannel.clientWidth;
        if(obj_width > div_width){div_width = obj_width;}
        divotherChannel.style.width = div_width+"px";
    }else{
        obj.className="head_znx_a hover";
        divotherChannel.style.display = "block";
    }
}

function hideotherchannel(aid,did){
    var divotherChannel=document.getElementById(did);
    var mydd=document.getElementById(aid); 
    if(divotherChannel.style.display!="none"){
        if(aid!="znx_channel"){
            divotherChannel.style.display="none";
            mydd.className="menu_btn";  
        }else{
            mydd.className="head_znx_a";
            divotherChannel.style.display="none";
        }
    }
}
