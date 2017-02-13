<%-- 
    Document   : reserve
    Created on : Nov 1, 2016, 12:50:14 PM
    Author     : Yashfaa
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String parkingZone = (String) session.getAttribute("zone_1");
    String areaName = (String) session.getAttribute("area_1");
    String sdate = (String) session.getAttribute("date1");
    String stime = (String) session.getAttribute("time1");
    String edate = (String) session.getAttribute("date2");
    String etime = (String) session.getAttribute("time2");   
    String value = request.getParameter("value");
    session.setAttribute("value", value);
    String fare = session.getAttribute("fare").toString();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css" type="text/css">
        <title>Reserve Detail</title>
    </head>
    <jsp:include page="header.jsp"></jsp:include>
    
    <body>
        <div class="reseve">
            <form action="EmailSender" method="post">
                <table>
                    <tr>
                        <td>
                            <label id="lab">Parking Zone:</label>
                        </td>
                        <td class="romeo">
                            <%=parkingZone%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label id="lab">Parking Area:</label>
                        </td>
                        <td class="romeo">
                            <%=areaName%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label id="lab">Start Time:</label>
                        </td>
                        <td class="romeo">
                            <%=sdate%> <%=stime%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label id="lab">End Time:</label>
                        </td>
                        <td class="romeo">
                            <%=edate%> <%=etime%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label id="lab">Parking Space:</label>
                        </td>
                        <td class="romeo">
                            <%=value%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label id="lab">Fare:</label>
                        </td>
                        <td class="romeo">
                            <b>Rs. </b><%=fare%>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div align="right"><input type="submit" name="confirm" value="Confirm Parking" id="btn" /></div>
                        </td>
                    </tr>
                </table> 
            </form>
        </div>
    <center>
        <h3>
            <%=request.getAttribute("Message")%></h3>
    </center>
</body>
</html>
