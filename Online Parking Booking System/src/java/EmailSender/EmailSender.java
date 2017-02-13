package EmailSender;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Yashfaa
 */
@WebServlet(name = "EmailSender", urlPatterns = {"/EmailSender"})
public class EmailSender extends HttpServlet {

    private String host, port, user, pass;

    //Reads SMTP settings from web.xml file
    @Override
    public void init() {
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        user = context.getInitParameter("user");
        pass = context.getInitParameter("pass");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        String toAddress = (String) session.getAttribute("email");
        String subject = "Parking Reservation Order";  
        //String value = request.getParameter("value");
        
        Date date = new Date();
        DateFormat df = new SimpleDateFormat("dd-MM-yyyy hh:mm aa");
        String createDate = df.format(date);

        String content = "Hi, " + session.getAttribute("userName") + " " + "Your reservation is now confirmed "
                + "Best regards," + "Online Parking Booking System" + " "
                + "Parking Zone: " + session.getAttribute("zone_1") + " "
                + "Parking Area: " + session.getAttribute("area_1") + " "
                + "Duration: " + session.getAttribute("date1") + " " + session.getAttribute("time1")
                + " - " + session.getAttribute("date2") + " " + session.getAttribute("time2") + " "
                + "Parking Space: " + session.getAttribute("value") + " "
                + "Created: " + createDate + " "
                + "and Your Bill is: Rs. " + session.getAttribute("fare").toString();

        String result = "";

        try {
            EmailUtility.sendEmail(host, port, user, pass, toAddress, subject, content);
            result = "Email sent successfully!";
        } catch (Exception ex) {
            ex.printStackTrace();
            result = "Error! Sending Email failed" + ex;
        } finally {
            request.setAttribute("Message", result);
            getServletContext().getRequestDispatcher("/reserve.jsp").forward(request, response);
        }
    }
}
