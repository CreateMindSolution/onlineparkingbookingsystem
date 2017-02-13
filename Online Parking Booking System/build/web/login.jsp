<%--
    Document   : login
    Created on : Sep 25, 2016, 3:33:06 PM
    Author     : Yashfaa
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="main.UserDAO"%>
<%@page import="main.UserRegistration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (request.getParameter("login") != null) {

        String uName = request.getParameter("uname");
        String pwd = request.getParameter("pass");

        if (uName != null || uName != "" && pwd != null || pwd != "") {

            UserRegistration user = new UserRegistration();
            user.setuName(uName);
            user.setPwd(pwd);

            String sql = "SELECT *FROM users WHERE userName = ? and password = ?";
            session = request.getSession();
            ResultSet rs = UserDAO.loginUser(user, sql);
            if (rs.next()) {
                session.setAttribute("email", rs.getString(10));
                session.setAttribute("userName", rs.getString(1) + " " + rs.getString(2));
                response.sendRedirect("viewParking.jsp");

            } else {
                session.setAttribute("msg", "Error! All fields are required.");
                response.sendRedirect("login.jsp");
            }

        }
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css" type="text/css">        
        <title>Login</title>
    </head>
    <jsp:include page="header.jsp"></jsp:include>
    <body style="margin: 0px">   
<div id="master">        
    <center>
        <div id="box_log">
            <div>
                <label id="lab_log">Sign in to continue</label>
            </div><br />
            <form action="" method="post">              
                <table id="table_log" border="0">
                    <tr>
                        <td class="td_alpha"><label class="lab">User Name</label></td>
                        <td class="td_bravo"><input type="text" name="uname" class="log" /></td>
                    </tr>
                    <tr>
                        <td class="td_alpha"><label class="lab">Password</label></td>
                        <td class="td_bravo"><input type="password" name="pass" class="log" /></td>
                    </tr>                        
                    <tr>
                        <td colspan="2">
                            <div align="center">
                                <input type="reset" value="Reset" name="reset" class="button_log" />
                                <input type="submit" value="Login" name="login" class="button_log" />                                
                            </div>
                        </td>
                    </tr> 
                    <tr>
                            <td colspan="2" id="msg">${msg}</td>
                    </tr>
                    <tr>
                        <td colspan="2">Don't have an account? <a href="userRegistration.jsp">Sign Up</a></td>
                    </tr>                    
                </table>
            </form>
        </div>
    </center>
    </div>
</body>
</html>
