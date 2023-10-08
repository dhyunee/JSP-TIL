<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 반응형 -->
<meta name="viewport" content="width=device-width",initial-scale="1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<title>Songb's JSP Project</title>
</head>
<body>
	<nav nav class="navbar navbar-default">
		<div class ="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
    		 aria-expanded="false">
    			<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp">SONGB's JSP</a>
		</div>
		<div class ="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li>
					<a href="main.jsp">Main</a>
				</li>
				<li>
					<a href="board.jsp">게시판</a>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button"
						aria-haspopup="true"
						aria-expanded="false">이동<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="login.jsp">로그인</a></li>
						<li><a href="signup.jsp">회원가입</a></li>
					</ul>
				</li>		
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="col=lg-4"></div>
		<div class="col=lg-4">
			<div class="jumbotron" style="padding-top:20px;">
				<form method="post" action="loginAction.jsp">
					<h3 style="text-align:center;">LOGIN</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="userId" maxlength="20">
						<input type="password" class="form-control" placeholder="패스워드" name="userPw" maxlength="20">
					</div>
					<input type="submit" class="btn btn-primary form-control" value="로그인"> 
				</form>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</body>
</html> 