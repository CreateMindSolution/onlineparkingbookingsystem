<%--
    Document   : login
    Created on : Sep 25, 2016, 3:33:06 PM
    Author     : Yashfaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log out</title>
    </head>
    <body>
        <%
            session.invalidate();
        %>
        <jsp:forward page="index.jsp"></jsp:forward>
    </body>
</html>
