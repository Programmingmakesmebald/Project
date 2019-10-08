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
		<script src="../PersonCenter/js/pwd.js"></script>
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
	</body>
</html>