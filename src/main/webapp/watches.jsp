<%@ page language="java" session="true" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <title>Watches - E-Bazaar</title>
</head>
<body>
<h2>Watches for Sale</h2>
<h3>Visitor Count: <%= application.getAttribute("visitorCount") %></h3>

<form action="AddToCartServlet" method="post">
    <input type="checkbox" name="product" value="Apple Watch Series 9"> Apple Watch Series 9<br>
    <input type="checkbox" name="product" value="Samsung Galaxy Watch 6"> Samsung Galaxy Watch 6<br>
    <input type="checkbox" name="product" value="Fossil Gen 6"> Fossil Gen 6<br>
    <input type="checkbox" name="product" value="Noise ColorFit Pro 5"> Noise ColorFit Pro 5<br>
    <input type="checkbox" name="product" value="Boat Storm Call 3"> Boat Storm Call 3<br><br>

    <input type="submit" value="Add to Cart">
</form>

<br>
<a href="index.jsp">Home</a> | 
<a href="cart.jsp">View Cart</a>

</body>
</html>
