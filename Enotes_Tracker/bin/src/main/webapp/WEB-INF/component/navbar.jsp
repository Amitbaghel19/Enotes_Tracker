<%@page isELIgnored="false"%>
<%@ page import="com.spring.entity.User"%>
<% User userObj = (User)session.getAttribute("userObj"); %>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><i class="fa-solid fa-book-open "></i> Enotes</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">

      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home"><i class="fa-solid fa-house"></i> Home</a>
        </li>
            <% if(userObj != null){ %>
        <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath}/user/addNotes">Add notes</a>
        </li>
         <li class="nav-item">
                  <a class="nav-link" href="${pageContext.request.contextPath}/user/viewNotes">View notes</a>
                </li>
                    <% } %>

      </ul>
      <form class="d-flex">
     <% if(userObj == null) { %>
         <a href="login" class="btn btn-light me-2" type="submit">Login</a>
         <a href="register" class="btn btn-light" type="submit">Register</a>
     <% } else { %>
              <a href="#" class="btn btn-light me-2" type="submit"><i class="fa-solid fa-user"></i>${userObj.name}</a>
               <a href="${pageContext.request.contextPath}/user/logout" class="btn btn-light" type="submit">logout</a>

     <% } %>

      </form>
    </div>
  </div>
</nav>
