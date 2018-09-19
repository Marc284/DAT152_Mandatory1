<%-- 
    Document   : cart
    Created on : Sep 9, 2018, 8:02:29 PM
    Author     : george
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>Cart</title>
</head>
   
<body>
    <p>
        <jsp:include page="chooseLanguage.jsp" />
    </p>
    <fmt:bundle basename="com.store.MessagesBundle">
    <h1>
        <fmt:message key="Cart" />
    </h1>
    <br />

<table style="width:100%; border: 1px solid black;">
  <tr style="border: 1px solid black;">
    <th>Name</th>
    <th>Description</th> 
    <th>Price</th>
    <th>Quantity</th>
    <th>Total</th>
  </tr>
  <tr style="border: 1px solid black;">
  </tr>
  <tr style="border: 1px solid black;">
  </tr>
  </fmt:bundle>
</table>



<a href='index.jsp'>Home</a>
<a href='products.jsp'>Products</a>

</body>
</html>