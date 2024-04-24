 <%@ page import="com.spring.entity.Notes"%>
 <%@ page import="java.util.List"%>
<%@page isELIgnored="false"%>

<html>
<head>
<%@ include file="/WEB-INF/component/all_css.jsp" %>
</head>
<body>
<%@ include file="/WEB-INF/component/navbar.jsp" %>
<% response.setHeader("cache-control","No-cache");
   response.setHeader("cache-control","No-store");%>

   <% List<Notes> list=(List<Notes>)request.getAttribute("list"); %>
<div class="container-fluid p-4">
<h3 class="text-center">View All Notes</h3>
<h4 style="color:green" class="text-center">${dlts}</h4>
<h4 style="color:green" class="text-center">${update}</h4>

<div class="row">
<div class="col-md-10 offset-md-1">

  <% for (Notes note : list) { %>
<div class="card p-2">
<div class="card-body">
<div class="text-center"><i class="fa-solid fa-book-open-reader fa-7x"></i></div>
</div>
 <p><%= note.getTitle() %></p>
 <p><%= note.getDescription() %></p>
 <p>Publish Date:<%= note.getDate() %></p>
<div class="text-center">
<a href="editNotes?id=<%=note.getId()%>" class="btn btn-primary btn-sm">Edit</a>
<a href="deleteNotes?id=<%=note.getId()%>" class="btn btn-danger btn-sm">Delete</a>
</div>
</div>
   <% } %>
</div>
</div>
</div>

</body>
</html>