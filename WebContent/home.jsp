<%
// Check user credentials
UserBean user = (UserBean) request.getSession(false).getAttribute("user");
if (user == null)
{	
    response.sendRedirect("./login.jsp");
    return;
}
%>

<%
 Locale locale = request.getLocale();
 String language = locale.getLanguage();
 String country = locale.getCountry();
%>

<%@ page language="java" import="java.util.*, model.UserBean" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Protected Page</title>
</head>

<%@ include file="Header.html" %>

<body>
<h1>Welcome to the Protected Page</h1>
<h2>Benvenuto <%=user.getUsername() %>

	<% if( user.isAdmin() ) { %> 
	 Amministratore
	<% } %>

</h2>

<form action="logout" method="get" > 
     <input type="submit" value="Logout"/>
</form> 
</body>
</html>