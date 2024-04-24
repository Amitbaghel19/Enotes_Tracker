<%@page isELIgnored="false"%>
<html>
<head>
<%@ include file="/WEB-INF/component/all_css.jsp" %>

</head>
<body>
<% response.setHeader("cache-control","No-cache");
response.setHeader("cache-control","No-store");

%>
<%@ include file="/WEB-INF/component/navbar.jsp" %>
<div class="container-fluid">
<img src="https://images.pexels.com/photos/4559555/pexels-photo-4559555.jpeg" height="700px" width="100%" />
</div>
</body>
</html>
