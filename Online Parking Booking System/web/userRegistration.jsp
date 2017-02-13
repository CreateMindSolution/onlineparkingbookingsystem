<%-- 
    Document   : userRegistration
    Created on : Aug 10, 2016, 12:28:42 AM
    Author     : Yashfaa
--%>

<%@page import="main.UserDAO"%>
<%@page import="main.UserRegistration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if (request.getParameter("create") != null) {

        String fName = request.getParameter("firstName");
        String lName = request.getParameter("lastName");
        String uName = request.getParameter("userName");
        String pwd = request.getParameter("password");
        String bday = request.getParameter("bday");
        String bmonth = request.getParameter("bmonth");
        String byear = request.getParameter("byear");
        String gender = request.getParameter("gender");
        String mobile = request.getParameter("mobile");
        String email = request.getParameter("email");

        UserRegistration user = new UserRegistration();
        user.setfName(fName);
        user.setlName(lName);
        user.setuName(uName);
        user.setPwd(pwd);
        user.setBday(Integer.parseInt(bday));
        user.setBmonth(bmonth);
        user.setByear(byear);
        user.setGender(gender);
        user.setMobile(mobile);
        user.setEmail(email);

        String sql = "INSERT INTO users VALUES(?,?,?,?,?,?,?,?,?,?)";

        int i = UserDAO.registerUser(user, sql);

        if (i != 0) {
            request.setAttribute("msg", "Registration Successful...");
            response.sendRedirect("login.jsp");
        } else {
            response.sendRedirect("userRegistration.jsp");
        }
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css" type="text/css">       
        <title>User Registration</title>
    </head>
    <jsp:include page="header.jsp"></jsp:include>
        <body>
            <br /><br />
            <div class="reg_box"><br />
                <center><label class="lab_reg">Create your Account</label></center><br/>
                <form action="" method="POST">                
                    <table>
                        <tbody>
                            <tr>
                                <td>
                                    <label id="lab">Name</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="tab_div">
                                        <input type="text" name="firstName" id="reg1" placeholder="First Name" required="" />
                                        <input type="text" name="lastName" id="reg1" placeholder="Last Name" required="" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td id="td">
                                    <label id="lab">Choose your username</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div>
                                        <input type="text" name="userName" id="reg2" required="" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td  id="td">
                                    <label id="lab">Create a password</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div>
                                        <input type="password" name="password" id="reg2" required="" />
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td  id="td">
                                    <label id="lab">Birthday</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div>
                                        <select name="bday" style="width: 30%">
                                            <option>Day</option>
                                        <%
                                            for (int i = 1; i <= 31; i++) {
                                        %>
                                        <option>
                                            <%=i%>
                                        </option>
                                        <%}%>
                                    </select>
                                    <select name="bmonth" style="width: 32%">
                                        <option>Month</option>
                                        <option>Jan</option>
                                        <option>Feb</option>
                                        <option>Mar</option>
                                        <option>Apr</option>
                                        <option>May</option>
                                        <option>Jun</option>
                                        <option>Jul</option>
                                        <option>Aug</option>
                                        <option>Sep</option>
                                        <option>Oct</option>
                                        <option>Nov</option>
                                        <option>Dec</option>
                                    </select>
                                    <select name="byear" style="width: 34%">
                                        <option>Year</option>
                                        <%
                                            for (int i = 2000; i >= 1900; i--) {
                                        %>
                                        <option>
                                            <%=i%>
                                        </option>
                                        <%}%>
                                    </select>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td  id="td">
                                <label id="lab">Gender</label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div>
                                    <select name="gender" id="gender">
                                        <option>Female</option>
                                        <option  selected>Male</option>                                        
                                    </select>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td  id="td">
                                <label id="lab">Mobile</label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div>
                                    <input type="text" name="mobile" id="reg2" placeholder="+923001234567" required="" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td  id="td">
                                <label id="lab">Email</label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div>
                                    <input type="text" name="email" id="reg2" placeholder="example@gmail.com" required="" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td  id="td">
                                <div align="center">
                                    <input type="submit" value="Create" name="create" id="btn" />
                                    <input type="reset" value="Reset" name="button" id="btn" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Already have account! <a href="login.jsp" >Login Here</a>
                            </td>
                        </tr>
                    </tbody>
                </table>            
            </form>                           
        </div>
    </body>
</html>