<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>Mobiles</title></head>
<body>
<h2>Mobiles for Sale</h2>
<h3>Visitor Count: <%= application.getAttribute("visitorCount") %></h3>

<form action="AddToCartServlet" method="post">
  <input type="checkbox" name="product" value="iPhone 15"> iPhone 15<br>
  <input type="checkbox" name="product" value="Samsung Galaxy S24"> Samsung Galaxy S24<br>
  <input type="checkbox" name="product" value="OnePlus 12"> OnePlus 12<br><br>
  <input type="submit" value="Add to Cart">
</form>

<br>
<a href="index.jsp">Home</a> | 
<a href="cart.jsp">View Cart</a>
</body>
</html>