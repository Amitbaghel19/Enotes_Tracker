<%@page isELIgnored="false"%>
<html>
<head>
<%@ include file="/WEB-INF/component/all_css.jsp" %>

</head>
<body style="background-color:#f0f0f0">

<% response.setHeader("cache-control","No-cache");
response.setHeader("cache-control","No-store");
%>
<%@ include file="/WEB-INF/component/navbar.jsp" %>
<div class="container mt-5">
<div class="row">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-header text-center">
<h1>Add Notes</h1>
<h4 style="color:green" class="text-center">${nts}</h4>

</div>
<div class="card-body">
<form action="saveNotes" method="post">
<div class="mb-3">
<label>Enter title</label>
<input type="text" name="title" class="form-control">
</div>
<div class="mb-3">
<label>Enter description</label>
<textarea rows="4" col="" class="form-control" name="description"></textarea>
</div>
<button class=" btn btn-primary mt-4">save</button>
</form>
</div>
</div>
</div>
</div>
</div>
</body>
</html>
