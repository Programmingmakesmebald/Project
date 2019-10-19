<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>修改密码--xun书网</title>
		<link href="../PersonCenter/img/icon.png" rel="icon" type="image/x-ico">
		<link href="../PersonCenter/css/style_log.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" type="text/css" href="../PersonCenter/css/pwdstyle.css">
		<link rel="stylesheet" type="text/css" href="../PersonCenter/css/userpanel.css">
		<link rel="stylesheet" type="text/css" href="../PersonCenter/css/jquery.ui.all.css">

	</head>
	<body class="login" mycollectionplug="bind">
		<div class="login_m">
			<div class="login_logo"></div>
			<div class="login_boder">
				<div class="login_padding" id="login_model">
					<form action="/user/alterPwd" method="post" onsubmit="return checkSubmit()">
						<h2>现在的密码</h2>
						<label>
							<input type="password" name="LPassword" id="LPassword" class="txt_input">
						</label>
						<h2>新密码</h2>
						<label>
							<input type="password" name="NewLPassword" id="NewLPassword" class="txt_input">
						</label>
						<h2>确认密码</h2>
						<label>
							<input type="password" id="ReNewLPassword" class="txt_input">
						</label>
						<div class="rem_sub">
							<label>
								<input type="submit" name="button" id="button" value="确认" style="opacity: 0.7;">
							</label>
						</div>
					</form>
				</div>
			</div>
		</div>
		<script charset="UTF-8" type="application/javascript">

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

		</script>
	</body>
</html>