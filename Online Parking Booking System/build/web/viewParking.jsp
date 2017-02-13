<%--
    Document   : viewParking
    Created on : Aug 11, 2016, 1:23:37 AM
    Author     : Yashfaa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    String zone_1 = "Parking Zone 1";
    String area_1 = "NFAK Auditorium,Faisalabad";

    String zone_2 = "Parking Zone 2";
    String area_2 = "Railway Station";
%>

<%
    if (request.getParameter("area1") != null) {
        session.setAttribute("zone_1", zone_1);
        session.setAttribute("area_1", area_1);
        response.sendRedirect("searchParking.jsp");
    }
%>

<%
    if (request.getParameter("area2") != null) {
        session.setAttribute("zone_2", zone_2);
        session.setAttribute("zone_2", zone_2);
        response.sendRedirect("searchParking_2.jsp");
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css" type="text/css">
        <title>View Parking</title>
    </head>
    <jsp:include page="header.jsp"></jsp:include>
    <body id="main_view">        
        <form action="" method="post">
            <div id="left_view">
                <table class="tab_view" border="1">
                    <tr>
                        <td>
                            <label class="lab_view">Parking Zone 1</label><br />
                            <font size='3'>Nusrat Fateh Ali Khan,</font><br />
                            <font size="4">Auditorium, <b>Faisalabad</b></font>
                        </td> 
                        <td rowspan="2">
                            <img src="Images/ap_parking.jpg" alt="Parking Area 1" class="image" />
                        </td>
                    </tr>
                    <tr>                        
                        <td rowspan="2">
                            <div class="para">
                                <p>A very common parking place for the peoples, who want to visit these places.</p>
                                <ol>
                                    <li>Fun Land.</li>
                                    <li>SindBad's <font size='2'>Wonderland.</font></li>
                                    <li>Khayyam's Qilla Banquet.</li>
                                    <li>Iqbal Stadium, Faisalabad.</li>
                                    <li>Nusrat Fateh Ali Khan, Auditorium.</li>
                                </ol>
                            </div>
                        </td> 
                    </tr>                    
                    <tr>
                        <td>
                            <div style="float: right; width: 100%;">
                                <input type="submit" name="area1" value="View Parking" class="button_view" />
                            </div>
                        </td>
                    </tr>
                </table>               
            </div>

            <div id="right_view">
                <table class="tab_view" border="1">
                    <tr>
                        <td>
                            <label class="lab_view">Parking Zone 2</label><br>
                            <font size='3'>Nusrat Fateh Ali Khan,</font><br />
                            <font size="4">Auditorium, <b>Faisalabad</b></font>
                        </td> 
                        <td rowspan="2">
                            <img src="Images/ap_parking.jpg" alt="Parking Area 1" class="image" />
                        </td>
                    </tr>
                    <tr>                        
                        <td rowspan="2">
                            <div class="para">
                                <p>A very common parking place for the peoples, who want to visit these places.</p>
                                <ol>
                                    <li>Fun Land.</li>
                                    <li>SindBad's <font size='2'>Wonderland.</font></li>
                                    <li>Khayyam's Qilla Banquet.</li>
                                    <li>Iqbal Stadium, Faisalabad.</li>
                                    <li>Nusrat Fateh Ali Khan, Auditorium.</li>
                                </ol>
                            </div>
                        </td> 
                    </tr>                    
                    <tr>
                        <td>
                            <div style="float: right; width: 100%;">
                                <input type="submit" name="area1" value="View Parking" class="button_view" />
                            </div>
                        </td>
                    </tr>
                </table>               
            </div>
            
        </form>
    </body>
</html>