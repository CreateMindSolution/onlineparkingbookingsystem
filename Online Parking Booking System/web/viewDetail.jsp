<%--
    Document   : viewParking
    Created on : Oct 05, 2016, 12:50:17 PM
    Author     : Yashfaa
--%>

<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="main.Reserve"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="main.ReserveDAO"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (request.getParameter("b1") != null) {
        response.sendRedirect("index.jsp");
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
        <body>
        <%
            if (request.getParameter("search") != null) {
                String parkingZone = (String) session.getAttribute("zone_1");
                String areaName = (String) session.getAttribute("area_1");
                String sdate = request.getParameter("startDate");
                String endDate = request.getParameter("endDate");

                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                Date date1 = sdf.parse(sdate);
                Date date2 = sdf.parse(endDate);

                String stime = request.getParameter("startTime");
                String endTime = request.getParameter("endTime");

                SimpleDateFormat stf = new SimpleDateFormat("HH:mm");
                Date time1 = stf.parse(stime);
                Date time2 = stf.parse(endTime);

                session.setAttribute("date1", sdf.format(date1));
                session.setAttribute("time1", stf.format(time1));
                session.setAttribute("date2", sdf.format(date2));
                session.setAttribute("time2", stf.format(time2));

                long dayDiff = date2.getTime() - date1.getTime();
                long diffDays = dayDiff / (1000 * 60 * 60 * 24);

                long timeDiff = time2.getTime() - time1.getTime();

                int minutes = (int) TimeUnit.MILLISECONDS.toMinutes(timeDiff);
                long days = 0;

                if (minutes < 0) {
                    minutes += (diffDays * 24 * 60);
                    days = diffDays - 1;
                } else {
                    minutes += (diffDays * 24 * 60);
                    days = diffDays;
                }

                float hours = (float) minutes / 60;

                float fare = minutes * 10 / 60;
                session.setAttribute("fare", fare);

                String parkingSpace = request.getParameter("parkingSpace");
                String status = request.getParameter("status");

                //out.println("Start Date: " + sdf.format(date1));
                // out.println("Start Time: " + stf.format(time1));
                // out.println("End Date: " + sdf.format(date2));
                // out.println("End Time: " + stf.format(time2));
                //out.println("Days: " + days);
                //out.println("Hours: " + Math.round(hours * 100.0) / 100.0);
                //out.println("Minutes: " + minutes);
                // out.println("Total Fare: " + fare);
                if ((sdate != "") || (sdate != null) && (stime != "") || (stime != null)) {

                    Reserve rsv = new Reserve();
                    rsv.setParkingZone(parkingZone);
                    rsv.setAreaName(areaName);
                    rsv.setStartDate(sdate);
                    rsv.setStartTime(stime);
                    rsv.setEndDate(endDate);
                    rsv.setEndTime(endTime);
                    rsv.setParkingSpace(parkingSpace);
                    rsv.setStatus(status);

                    String sql = "SELECT *FROM reserve WHERE Start_date = ? AND Start_time = ?";
                    ResultSet rs = ReserveDAO.searchSpace(rsv, sql);
                    if (!rs.next()) {
        %>

        <form action="" method="post">
            <div class="main_view">                
                <div class="side"></div>
                <div class="side" style="margin: 0px"></div>
                <div class="parking">

                    <div class="tag">P1</div><div class="tag">P2</div>
                    <div class="tag">P3</div><div class="tag">P4</div><div class="tag">P5</div>

                    <div class="carBox">
                        <img src="Images/redCar.png" alt="car" class="image">
                    </div>

                    <div class="carBox">
                        <img src="Images/redCar.png" alt="car" class="image">
                    </div>

                    <div class="carBox">
                        <img src="Images/redCar.png" alt="car" class="image">
                    </div>

                    <div class="carBox">
                        <img src="Images/redCar.png" alt="car" class="image">
                    </div>

                    <div class="carBox">
                        <img src="Images/redCar.png" alt="car" class="image">
                    </div>

                    <div class="road">                              
                    </div>                            

                    <div class="carBox">
                        <img src="Images/redCar.jpg" alt="car" class="image">
                    </div>

                    <div class="carBox">
                        <img src="Images/redCar.jpg" alt="car" class="image">
                    </div>

                    <div class="carBox">
                        <img src="Images/redCar.jpg" alt="car" class="image">
                    </div>

                    <div class="carBox">
                        <img src="Images/redCar.jpg" alt="car" class="image">
                    </div>

                    <div class="carBox">
                        <img src="Images/redCar.jpg" alt="car" class="image">
                    </div>

                    <div class="tag">P6</div><div class="tag">P7</div>
                    <div class="tag">P8</div><div class="tag">P9</div><div class="tag">P10</div>

                </div>
            </div>
            <%} else {
                String p1 = "P1";
                session.setAttribute("p1", p1);

                //out.println(p1);
            %>  
            <div class="main_view">                
                <div class="side"></div>
                <div class="side" style="margin: 0px"></div>
                <div class="parking">

                    <div class="tag">P1</div><div class="tag">P2</div>
                    <div class="tag">P3</div><div class="tag">P4</div><div class="tag">P5</div>

                    <a href="reserve.jsp?parkingZone=<%=parkingZone%>&areaName=<%=areaName%>&sdate=<%=sdate%>
                       &stime=<%=stime%>&value=P-1&fare=<%=fare%>" class="anchor" target="_self">
                        <img src="Images/greenCar.png" alt="car" class="image">
                    </a>

                    <a href="reserve.jsp?parkingZone=<%=parkingZone%>&areaName=<%=areaName%>&sdate=<%=sdate%>
                       &stime=<%=stime%>&value=P-2&fare=<%=fare%>" class="anchor" target="_self">
                        <img id="p2" src="Images/greenCar.png" alt="car" class="image">
                    </a>

                    <a href="reserve.jsp?parkingZone=<%=parkingZone%>&areaName=<%=areaName%>&sdate=<%=sdate%>
                       &stime=<%=stime%>&value=P-3&fare=<%=fare%>" class="anchor" target="_self">
                        <img src="Images/greenCar.png" alt="car" class="image">
                    </a>

                    <a href="reserve.jsp?parkingZone=<%=parkingZone%>&areaName=<%=areaName%>&sdate=<%=sdate%>
                       &stime=<%=stime%>&value=P-4&fare=<%=fare%>" class="anchor" target="_self">
                        <img src="Images/greenCar.png" alt="car" class="image">
                    </a>

                    <a href="reserve.jsp?parkingZone=<%=parkingZone%>&areaName=<%=areaName%>&sdate=<%=sdate%>
                       &stime=<%=stime%>&value=P-5&fare=<%=fare%>" class="anchor" target="_self">
                        <img src="Images/greenCar.png" alt="car" class="image">
                    </a>

                    <div class="road"></div>                            

                    <a href="reserve.jsp?parkingZone=<%=parkingZone%>&areaName=<%=areaName%>&sdate=<%=sdate%>
                       &stime=<%=stime%>&value=P-6&fare=<%=fare%>" class="anchor" target="_self">
                        <img src="Images/greenCar.jpg" alt="car" class="image">
                    </a>

                    <a href="reserve.jsp?parkingZone=<%=parkingZone%>&areaName=<%=areaName%>&sdate=<%=sdate%>
                       &stime=<%=stime%>&value=P-7&fare=<%=fare%>" class="anchor" target="_self">
                        <img src="Images/greenCar.jpg" alt="car" class="image">
                    </a>

                    <a href="reserve.jsp?parkingZone=<%=parkingZone%>&areaName=<%=areaName%>&sdate=<%=sdate%>
                       &stime=<%=stime%>&value=P-8&fare=<%=fare%>" class="anchor" target="_self">
                        <img src="Images/greenCar.jpg" alt="car" class="image">
                    </a>

                    <a href="reserve.jsp?parkingZone=<%=parkingZone%>&areaName=<%=areaName%>&sdate=<%=sdate%>
                       &stime=<%=stime%>&value=P-9&fare=<%=fare%>" class="anchor" target="_self">
                        <img src="Images/greenCar.jpg" alt="car" class="image">
                    </a>

                    <a href="reserve.jsp?parkingZone=<%=parkingZone%>&areaName=<%=areaName%>&sdate=<%=sdate%>
                       &stime=<%=stime%>&value=P-10&fare=<%=fare%>" class="anchor" target="_self">
                        <img src="Images/greenCar.jpg" alt="car" class="image">
                    </a>

                    <div class="tag">P6</div><div class="tag">P7</div>
                    <div class="tag">P8</div><div class="tag">P9</div><div class="tag">P10</div>

                </div>
            </div>

            <%}
                    }
                }
            %>

        </form>
    </body>
</html>
