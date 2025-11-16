<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<html>
<head><title>Home - EBazaar</title></head>
<body>
<h2>Welcome, <%= session.getAttribute("username") %>!</h2>
<h3>Visitor Count: <%= application.getAttribute("visitorCount") %></h3>

<ul>
  <li><a href="mobiles.jsp">Mobiles</a></li>
  <li><a href="laptops.jsp">Laptops</a></li>
  <li><a href="watches.jsp">Watches</a></li>
</ul>

<a href="cart.jsp">View Cart</a>
</body>
</html>