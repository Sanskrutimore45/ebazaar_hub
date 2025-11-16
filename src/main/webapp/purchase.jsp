<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Purchase Successful</title>
 
</head>
<body>
    <h1>Purchase Successful!</h1>
    <p>Thank you for shopping with us. Here are the items you purchased:</p>

    <%
        // You can directly use "session" — JSP provides it automatically.
        ArrayList<String> purchasedItems = (ArrayList<String>) session.getAttribute("purchasedItems");

        if (purchasedItems != null && !purchasedItems.isEmpty()) {
    %>
        <table>
            <tr>
                <th>Item Name</th>
            </tr>
            <%
                for (String item : purchasedItems) {
            %>
            <tr>
                <td><%= item %></td>
            </tr>
            <% } %>
        </table>
    <%
        } else {
    %>
        <p>No items were found in your purchase.</p>
    <%
        }
    %>

    <p><a href="index.jsp"> Continue Shopping</a></p>
   
</body>
</html>
