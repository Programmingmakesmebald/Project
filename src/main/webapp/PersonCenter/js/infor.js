function userNameBlur(){
	var snumber=document.getElementById("snumber").value;
	var snumberid=document.getElementById("snumberid");
 
	if(snumber==""|| snumber==null){
		snumberid.className="error_prompt";
		snumberid.innerHTML="用户名不能为空";
		return false;
	}
	snumberid.className="ok_prompt";
	snumberid.innerHTML="";
	return true;
}
//验证号码格式
function telBlur(){
	var telphoneid=document.getElementById("telphoneid");
	var telphone=document.getElementById("telphone").value;
	var reg=/[0-9]{11}$/;
	if(telphone==""|| telphone==null){
		telphoneid.className="error_prompt";
		telphoneid.innerHTML="手机号码不能为空";
		return false;
	}
	if(reg.test(telphone)==false){
		telphoneid.className="error.prompt";
		telphoneid.innerHTML="手机号码输入不正确";
		return false;
	}
	telphoneid.className="ok_prompt";
	telphoneid.innerHTML="";
	return true;
}

function schoolBlur(){
	var school=document.getElementById("school").value;
	var schoolid=document.getElementById("schoolid");

	if(school==""|| school==null){
		schoolid.className="error_prompt";
		schoolid.innerHTML="学校不能为空";
		return false;
	}
	schoolid.className="ok_prompt";
	schoolid.innerHTML="";
	return true;
}

function checkSubmit(){
	userNameBlur();
	telBlur();
	schoolBlur();
	return  userNameBlur()&&telBlur()&&schoolBlur();
}
