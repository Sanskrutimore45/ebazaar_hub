<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" session="true" %>
<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    java.util.ArrayList<String> cart = (java.util.ArrayList<String>) session.getAttribute("cart");
    if (cart == null) cart = new java.util.ArrayList<>();
%>

<html>
<head><title>Your Cart</title></head>
<body>
<h2>Your Cart</h2>
<h3>Visitor Count: <%= application.getAttribute("visitorCount") %></h3>

<form action="RemoveFromCartServlet" method="post">
<% if (cart.isEmpty()) { %>
    <p>No items in cart.</p>
<% } else { 
   for (String item : cart) { %>
     <input type="checkbox" name="remove" value="<%= item %>"> <%= item %><br>
<% } %>
<br><input type="submit" value="Remove from Cart">
<% } %>
</form>

<form action="PurchaseServlet" method="post">
    <input type="submit" value="Purchase All">
</form>

<br>
<a href="index.jsp">Home</a>
</body>
</html>
