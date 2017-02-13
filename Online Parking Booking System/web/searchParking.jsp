<%--
    Document   : searchParking
    Created on : Oct 22, 2016, 11:49:42 PM
    Author     : Yashfaa
--%>

<%@page import="main.Reserve"%>
<%@page import="main.ReserveDAO"%>
<%@page import="DB.Database"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css" type="text/css">
        <title>View Parking</title>
    </head>
    <jsp:include page="header.jsp"></jsp:include>
        <body id="main_view">
            <form action="viewDetail.jsp" method="post">                
                <div id="serch_box">
                    <table style="width: 100%" border='1'>
                        <tr>
                            <td><label class='lab_srch'>Start Date*</label></td>
                        </tr>
                        <tr>
                            <td>
                                <div><input type="date" name="startDate" value="2016-10-15" class="srch" /></div>
                            </td>
                        </tr>
                        <tr>
                            <td><label class='lab_srch'>Start Time</label></td>
                        </tr>
                        <tr>
                            <td>
                                <div><input type="time" name="startTime" value="08:30" class="srch" /></div>
                            </td>
                        </tr>
                        <tr>
                            <td><label class='lab_srch'>End Date*</label></td>
                        </tr>
                        <tr>
                            <td>
                                <div><input type="date" name="endDate" value="2016-10-15" class="srch" /></div>
                            </td>
                        </tr>
                        <tr>
                            <td><label class='lab_srch'>End Time</label></td>
                        </tr>
                        <tr>
                            <td>
                                <div><input type="time" name="endTime" value="22:30" class="srch" /></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div align='right'><input type="submit" value="Search" name="search" id="button_srch" /></div>
                            </td>
                        </tr>
                    </table>
                </div>
            <%
                String zone_1 = (String) session.getAttribute("zone_1");
                String area_1 = (String) session.getAttribute("area_1");
            %>
            <div id="box_serch">
                <label class="lab_view"><%=zone_1%></label><br />
                <label style="font-size: 14px"><%=area_1%></label>
                <div><br />
                    <p style="text-align: justify">A very common parking place for the peoples, who want to visit these places.</p>
                    <ol>
                        <li>Fun Land</li><br>
                        <li>SindBad's <font size='2'>Wonderland</font></li><br>
                        <li>Khayam's Qila Banquet</li><br>
                        <li>Iqbal Stadium, Faisalabad.</li><br>
                        <li>Nusrat Fateh Ali Khan, Auditorium.</li>
                    </ol>
                </div>
            </div>            
        </form>
    </body>
</html>

