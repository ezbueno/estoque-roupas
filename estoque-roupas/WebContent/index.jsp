<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="resources/css/login.css">
</head>
<body>
<div class="container">
   	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<div class="panel panel-login">
				<div class="panel-heading">
					<h3>Login</h3>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-12">
							<form id="login-form" action="LoginServlet" method="post" role="form" style="display: block;">
								<div class="form-group">
									<input type="text" name="login" id="login" tabindex="1" class="form-control" placeholder="Usuário" value="">
								</div>
								<div class="form-group">
									<input type="password" name="senha" id="senha" tabindex="2" class="form-control" placeholder="Senha">
								</div>
								<div class="form-group">
									<div class="row">
										<div class="col-sm-6 col-sm-offset-3">
											<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Acessar">
										</div>
									</div>
								</div>
							</form>						
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	<div class="footer">
  		<p>Usuário: admin | Senha: admin</p>
	</div>	
</body>
</html>