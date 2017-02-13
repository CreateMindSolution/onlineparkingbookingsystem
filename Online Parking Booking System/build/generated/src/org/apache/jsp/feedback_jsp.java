package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class feedback_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\" type=\"text/css\">\n");
      out.write("        <title>FeedBack</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center>\n");
      out.write("        <h2><font size=\"5\">Online Parking Booking System</font></h2>\n");
      out.write("        \n");
      out.write("        <div class=\"feed\">\n");
      out.write("            <form action=\"feedback.jsp\" method=\"post\">\n");
      out.write("                <table border=\"1\">\n");
      out.write("                    <caption><h3><font size=\"5\">Send us Feedback</font></h3></caption>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            <label>Name</label>\n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                            <input type=\"text\" name=\"name\" placeholder=\"Enter your name here\" \n");
      out.write("                                   id=\"feed\" aria-required=\"true\" required/>\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            <label>Email</label>\n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                            <input type=\"text\" name=\"email\" placeholder=\"Enter your email address here\" \n");
      out.write("                                   id=\"feed\" title=\"Please enter your email address\" aria-required=\"true\" required />\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            <label>Subject</label>\n");
      out.write("                        </td>\n");
      out.write("                        <td>\n");
      out.write("                            <input type=\"text\" name=\"subject\" placeholder=\"Subject for the message\"\n");
      out.write("                                   id=\"feed\" title=\"Please enter your subject\" aria-required=\"true\" required />\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                            <label>Message</label>\n");
      out.write("                        </td>\n");
      out.write("                        <td class=\"td2\">\n");
      out.write("                            <textarea name=\"message\" rows=\"15\" cols=\"50\" placeholder=\"Enter your message here\"></textarea>\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td colspan=\"2\">\n");
      out.write("                            <input type=\"submit\" value=\"Send Message\" name=\"submit\"/>\n");
      out.write("                            <input type=\"reset\" value=\"Reset\" name=\"button\"/>\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                </table>               \n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
