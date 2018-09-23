<%-- 
    Document   : index
    Created on : Sep 9, 2018, 7:32:45 PM
    Author     : george
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import = "java.io.*,java.util.Locale" %>
<%@ page import = "javax.servlet.*,javax.servlet.http.* "%>
<%@ page import = "java.util.ResourceBundle" %>
<%@ page import = "java.util.EventListener" %>
<%@ page import = "javax.swing.JButton" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Store</title>
    </head>
    
    <body>
        <p>
            <jsp:include page="WEB-INF/chooseLanguage.jsp" />
        </p>
        <fmt:bundle basename="com.store.MessagesBundle">
        <h1>
            <fmt:message key="Welcome"/>
        </h1>
        <p>
            <fmt:message key="Products_line"  />
            <a href='ProductServlet'>
            <fmt:message key="Products"  /></a>
        </p>
            
        </fmt:bundle>
    </body>
</html>
