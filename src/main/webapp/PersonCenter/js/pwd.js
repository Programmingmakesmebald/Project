
function pwdBlur(){
	var password=document.getElementById("LPassword").value;
	if(password==""||password==null){
		var mychar="未输入现在的密码";
		alert(mychar);
		return false;
	}
	return true;
}

function newPwdBlur(){
	var password=document.getElementById("NewLPassword").value;
	if(password==""||password==null){
		var mychar="新密码未输入";
		alert(mychar);
		return false;
	}
	return true;
}
//验证确认密码
//密码获取焦点

function repwdBlur(){
	var oldpassword=document.getElementById("LPassword").value;
	var password=document.getElementById("NewLPassword").value;
	var repassword=document.getElementById("ReNewLPassword").value;
	if(password==oldpassword){
		var mychar="新旧密码一致";
		alert(mychar);
		return false;
	}
	if(repassword==""|| repassword==null){
		var mychar="未输入确认密码";
		alert(mychar);
		return false;
	}
	if(password!=repassword){
		var mychar="两次密码不一致";
		alert(mychar);
		return false;
	}
	var mychar="修改成功，请重新登录";
		alert(mychar);
	return true;
}
function checkSubmit(){
	if(pwdBlur()){
		if(newPwdBlur()){
			if(repwdBlur()){
				return true;
			}
			else{
				return false;
			}
		}
		else{
			return false;
		}
	}
	else{
		return false;
	}
	return  true;
}
