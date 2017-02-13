package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import main.Reserve;
import main.ReserveDAO;
import DB.Database;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class searchParking_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\" type=\"text/css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("        <title>View Parking</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"header\">\n");
      out.write("            <ul id=\"head-ul\">\n");
      out.write("                <li id=\"head-li\"><a class=\"active\" href=\"index.jsp\" class=\"w3-large\"><i class=\"fa fa-home\"></i> Home</a></li>\n");
      out.write("                <li id=\"head-li\"><a href=\"\">Booking</a></li>\n");
      out.write("                <li id=\"head-li\"><a href=\"\">Orders</a></li>\n");
      out.write("                <li id=\"head-li\"><a href=\"feedback.jsp\">Feedback</a></li>\n");
      out.write("                <li1><a href=\"index.jsp\">Log Out</a></li1>\n");
      out.write("                <li2>Welcome! ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${userName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</li2>\n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <h1 id=\"head\">Online Parking Booking System</h1><br>\n");
      out.write("        <form action=\"viewDetail.jsp\" method=\"post\">\n");
      out.write("            \n");
      out.write("            <div id=\"srch-1\">\n");
      out.write("\n");
      out.write("                <table border='0'>\n");
      out.write("                    <tbody>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><label id='lab'>Start Date*</label></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <div><input type=\"date\" name=\"startDate\" value=\"2016-10-15\" /></div>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td id='td'><label id='lab'>Start Time</label></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <div><input type=\"time\" name=\"startTime\" value=\"08:30\" id=\"pd2\" /></div>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td id='td'><label id='lab'>End Date*</label></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <div><input type=\"date\" name=\"endDate\" value=\"2016-10-15\" /></div>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td id='td'><label id='lab'>End Time</label></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <div><input type=\"time\" name=\"endTime\" value=\"22:30\" id=\"pd2\" /></div>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td id='td'>\n");
      out.write("                                <div align='right'><input type=\"submit\" value=\"Search\" name=\"search\" id=\"btn\" /></div>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                    </tbody>\n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class='srch-2'>\n");
      out.write("\n");
      out.write("                <b>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${zone_1}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</b><br>\n");
      out.write("                <font size=\"2\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${area_1}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</font>\n");
      out.write("                <p>A very common parking place for the peoples, who want to visit these places.<br></p>\n");
      out.write("                <ol>\n");
      out.write("                    <li>Fun Land</li><br>\n");
      out.write("                    <li>SindBad's <font size='2'>Wonderland</font></li><br>\n");
      out.write("                    <li>Khayam's Qila Banquet</li><br>\n");
      out.write("                    <li>Iqbal Stadium, Faisalabad.</li><br>\n");
      out.write("                    <li>Nusrat Fateh Ali Khan, Auditorium.</li>\n");
      out.write("                </ol>\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
