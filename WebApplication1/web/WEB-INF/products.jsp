<%-- 
    Document   : products
    Created on : Sep 9, 2018, 8:02:03 PM
    Author     : george
--%>

<%@page import="java.util.List"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>Products</title>
</head>
   
<body>
    <p>
        <jsp:include page="chooseLanguage.jsp" />
    </p>
    <fmt:bundle basename="com.store.MessagesBundle">
    <h1>
        <fmt:message key="Products" />
    </h1>
    <br />
    
        <h2>
            <fmt:message key="WhiteCoffeName"/>
        </h2>
        <p>
            <fmt:message key="Name"  />
            <fmt:message key="WhiteCoffeName"  />
        </p>
        <p>
            <fmt:message key="WhiteCoffeDescription"  />
        </p>
        
        <form method="post" action="AddToCart.java">
<!--	<h3>Enter Username to Add in List</h3>
	<input type="text" name="user"/>-->
	<input id="whiteCoffee" type="submit" value="Add Product"/>
    </form>
        
        <h2>
            <fmt:message key="BlackCoffeName"/>
        </h2>
        <p>
            <fmt:message key="Name"  />
            <fmt:message key="BlackCoffeName"  />
        </p>
        <p>
            <fmt:message key="BlackCoffeDescription"  />
        </p>
        <form method="post" action="AddToCartServlet">
<!--	<h3>Enter Username to Add in List</h3>
	<input type="text" name="user"/>-->
        
	<input name="BlackCoffeeName" type="submit" value="Add Product"/>
    </form>
        <br/>
            
    </fmt:bundle>
    
    <%
	List<String> users = (List<String>)session.getAttribute("users");
	
	for(int i=0; null!=users && i < users.size(); i++) {
		out.println("<br/>" + users.get(i));
	}
    %>

    <a href='HomeServlet'>Home</a>
    <a href='CartServlet'>Cart</a>

</body>
</html>