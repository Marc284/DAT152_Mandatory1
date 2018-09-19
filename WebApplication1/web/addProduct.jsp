<%-- 
    Document   : addProduct
    Created on : Sep 9, 2018, 9:04:52 PM
    Author     : george
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%
	String username = request.getParameter("user");
	List users = (List)session.getAttribute("users");

	if(null == users) {
		users = new ArrayList();
	}
	users.add(username);
	session.setAttribute("users", users);
	response.sendRedirect("products.jsp");
%>
