<%-- 
    Document   : header
    Created on : Jan 16, 2017, 11:14:19 PM
    Author     : Yashfaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css" type="text/css">
        <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

    </head>   
    <div id="header">
        <div id="logo">
            <h1>Online Parking Booking System</h1>
        </div>            
    </div>
    <div id="nav">
        <ul>
            <li>
                <a class="active" href="index.jsp" class="w3-large"><i class="fa fa-home"></i> home</a>
            </li>
            <li>
                <a href="userRegistration.jsp">sign up</a>
            </li>
            <li>
                <a href="feedback.jsp">contact us</a>
            </li>
            <li class="right">
                <%
                    String userName = (String) session.getAttribute("userName");
                    if (userName != null) {
                        out.print("Welcome! " + userName);
                %>            
                <a href="logout.jsp">log out</a>
            </li>
            <li class="right">
                <%
                } else {
                    out.print("Please Login!");
                %>

                <a href="login.jsp">log in</a>
                <%
                    }
                %>
            </li>
        </ul>
    </div>
</html>
