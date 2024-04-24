<%@page isELIgnored="false"%>
<html>
<head>
<%@ include file="/WEB-INF/component/all_css.jsp" %>
</head>
<body style="background-color:#f0f0f0">
<%@ include file="/WEB-INF/component/navbar.jsp" %>
<div class="container mt-5">
<div class="row">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-header text-center">
<h1>Register page</h1>
</div>
<h4 style="color:green" class="text-center">${reg}</h4>

<div class="card-body">
<form action="registerUser" method="post">
<div class="mb-3">
<label>Enter Full Name</label>
<input type="text" name="name" class="form-control" required>
</div>
<div class="mb-3">
<label>Enter Qualification</label>
<input type="text" name="qualification" class="form-control" required>
</div>
<div class="mb-3">
<label>Enter Email</label>
<input type="email" name="email" class="form-control" required>
</div>
<div class="mb-3">
<label>Enter Password</label>
<input type="password" name="password" class="form-control" required>
</div>
<button class=" btn btn-primary col-md-12">Register</button>
</form>
</div>
</div>
</div>
</div>
</div>

</body>
</html>
