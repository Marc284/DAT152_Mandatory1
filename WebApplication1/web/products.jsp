<%-- 
    Document   : products
    Created on : Sep 9, 2018, 8:02:03 PM
    Author     : george
--%>

<%@page import="java.util.List"%>
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

    <h2>White Coffee Cup (TM)</h2>
    <p>Name: White Coffee Cup</p>
    <p>Description: This is a great cup!</p>

    <h2>Black Coffee Cup (TM)</h2>
    <p>Name: Black Coffee Cup</p>
    <p>Description: This is a great cup!</p>
    <br />
    
    <form method="post" action="addProduct.jsp">
	<h3>Enter Username to Add in List</h3>
	<input type="text" name="user"/>
	<input type="submit" value="Add User"/>
    </form>
    
    <%
	List<String> users = (List<String>)session.getAttribute("users");
	
	for(int i=0; null!=users && i < users.size(); i++) {
		out.println("<br/>" + users.get(i));
	}
    %>

    <a href='index.jsp'>Home</a>
    <a href='cart.jsp'>Cart</a>

</body>
</html>