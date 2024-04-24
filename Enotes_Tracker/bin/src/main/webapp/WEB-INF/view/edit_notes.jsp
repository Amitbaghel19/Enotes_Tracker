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
<h1>Edit Notes</h1>
</div>
<div class="card-body">
<form>

<div class="mb-3">
<label>Enter title</label>
<input type="text" name="fullName" class="form-control">
</div>

<div class="mb-3">
<label>Enter description</label>
<textarea rows="4" col="" class="form-control"></textarea>
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
