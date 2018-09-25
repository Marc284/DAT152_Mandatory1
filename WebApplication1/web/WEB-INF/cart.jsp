<%-- 
    Document   : cart
    Created on : Sep 9, 2018, 8:02:29 PM
    Author     : george
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
  <% if(request.getAttribute("name") != null && request.getAttribute("name").equals("BlackCoffeeName")) {
  JspWriter jout = out;
  jout.print("<tr style=\"border: 1px solid black;\">");
  jout.print("<td>"); %>
  <fmt:message key="BlackCoffeName"/>
  <%
       jout.print("</td>");
       jout.print("<td>");
       %>
       <fmt:message key="BlackCoffeDescription"/>
       <%
           jout.print("</td>");
  jout.print("</tr>");
  } %>
<!-- <tr style="border: 1px solid black;">
      <td>
          request.getAttribute("name")
      </td> 
  
    <td>fmt:message key="name"/></td>
</tr>
    
  <tr style="border: 1px solid black;">
  </tr>
  <tr style="border: 1px solid black;">
  </tr>-->
  </fmt:bundle>
</table>

<%
//    System.out.println("Info from servlet");
//    System.out.println(request.getAttribute("name"));
%>

<a href='HomeServlet'>Home</a>
<a href='ProductServlet'>Products</a>

</body>
</html>