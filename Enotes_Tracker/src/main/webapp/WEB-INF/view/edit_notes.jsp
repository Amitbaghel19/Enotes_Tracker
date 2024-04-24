<%@page isELIgnored="false"%>

<html>
<head>
<%@ include file="/WEB-INF/component/all_css.jsp" %>

</head>
<body style="background-color:#f0f0f0">
<%@ include file="/WEB-INF/component/navbar.jsp" %>
<% response.setHeader("cache-control","No-cache");
response.setHeader("cache-control","No-store");
%>
<div class="container mt-5">
<div class="row">
<div class="col-md-6 offset-md-3">
<div class="card">
<div class="card-header text-center">
<h1>Edit Notes</h1>
</div>
<div class="card-body">
<form action="updateNotes" method="post">

<div class="mb-3">
<label>Enter title</label>
<input type="text" name="title" class="form-control" value="${edit.title}">
</div>

<div class="mb-3">
<label>Enter description</label>
<textarea rows="4" col="" class="form-control" name="description">${edit.description}</textarea>
</div>
<input type="hidden" name="id" value="${edit.id}">
<button class=" btn btn-primary mt-4">update</button>
</form>
</div>
</div>
</div>
</div>
</div>

</body>
</html>
