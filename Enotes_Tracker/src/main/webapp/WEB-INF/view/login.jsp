<%@page isELIgnored="false"%>
<html>
<head>
<%@ include file="/WEB-INF/component/all_css.jsp" %>
</head>
<body>
<%@ include file="/WEB-INF/component/navbar.jsp" %>
<div class="container mt-5">
<div class="row">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-header text-center">
<h1>Login page</h1>
</div>
<h4 style="color:red" class="text-center">${msg}</h4>
<div class="card-body">
<form action="loginUser" method="post">

<div class="mb-3">
<label>Enter Email</label>
<input type="email" name="email" class="form-control" required>
</div>
<div class="mb-3">
<label>Enter Password</label>
<input type="password" name="password" class="form-control" required>
</div>
<button class=" btn btn-primary col-md-12">Login</button>
</form>
</div>

<div class="card-footer">dont have an account <a href="register" class="text-decoration-none" > create one </a></div>
</div>
</div>
</div>
</div>
</body>
</html>
