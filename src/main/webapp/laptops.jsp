<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page language="java" session="true" %>
<html>
<head>
    <title>Laptops - E-Bazaar</title>
</head>
<body>
<h2>Laptops for Sale</h2>
<h3>Visitor Count: <%= application.getAttribute("visitorCount") %></h3>

<form action="AddToCartServlet" method="post">
    <input type="checkbox" name="product" value="Dell Inspiron 15"> Dell Inspiron 15<br>
    <input type="checkbox" name="product" value="HP Pavilion x360"> HP Pavilion x360<br>
    <input type="checkbox" name="product" value="Apple MacBook Air M2"> Apple MacBook Air M2<br>
    <input type="checkbox" name="product" value="Lenovo ThinkPad E14"> Lenovo ThinkPad E14<br>
    <input type="checkbox" name="product" value="Asus ROG Strix G15"> Asus ROG Strix G15<br><br>

    <input type="submit" value="Add to Cart">
</form>

<br>
<a href="index.jsp">Home</a> | 
<a href="cart.jsp">View Cart</a>

</body>
</html>
