package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import main.UserDAO;
import main.UserRegistration;

public final class userRegistration_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"style.css\" type=\"text/css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"http://www.w3schools.com/lib/w3.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css\">\n");
      out.write("        <title>User Registration</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"header\">\n");
      out.write("            <ul id=\"head-ul\">\n");
      out.write("                <li id=\"head-li\"><a class=\"active\" href=\"index.jsp\" class=\"w3-large\"><i class=\"fa fa-home\"></i> Home</a></li>            \n");
      out.write("            </ul>\n");
      out.write("        </div>        \n");
      out.write("        <h1 id=\"head\">Online Parking Booking System</h1>\n");
      out.write("        <div id=\"reg-box\"><br />\n");
      out.write("            <center><label><font size=\"4\"><b>Create your Account</b></font></label></center><br/>\n");
      out.write("            <form action=\"\" method=\"POST\">                \n");
      out.write("                <table>\n");
      out.write("                    <tbody>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <label id=\"lab\">Name</label>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <div>\n");
      out.write("                                    <input type=\"text\" name=\"firstName\" id=\"reg1\" placeholder=\"First Name\" required=\"\" />\n");
      out.write("                                    <input type=\"text\" name=\"lastName\" id=\"reg1\" placeholder=\"Last Name\" required=\"\" />\n");
      out.write("                                </div>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td  id=\"td\">\n");
      out.write("                                <label id=\"lab\">Choose your username</label>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <div>\n");
      out.write("                                    <input type=\"text\" name=\"userName\" id=\"reg2\" required=\"\" />\n");
      out.write("                                </div>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td  id=\"td\">\n");
      out.write("                                <label id=\"lab\">Create a password</label>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <div>\n");
      out.write("                                    <input type=\"password\" name=\"password\" id=\"reg2\" required=\"\" />\n");
      out.write("                                </div>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td  id=\"td\">\n");
      out.write("                                <label id=\"lab\">Birthday</label>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <div>\n");
      out.write("                                    <select name=\"bday\" style=\"width: 30%\">\n");
      out.write("                                        <option>Day</option>\n");
      out.write("                                        ");

                                            for (int i = 1; i <= 31; i++) {
                                        
      out.write("\n");
      out.write("                                        <option>\n");
      out.write("                                            ");
      out.print(i);
      out.write("\n");
      out.write("                                        </option>\n");
      out.write("                                        ");
}
      out.write("\n");
      out.write("                                    </select>\n");
      out.write("                                    <select name=\"bmonth\" style=\"width: 32%\">\n");
      out.write("                                        <option>Month</option>\n");
      out.write("                                        <option>Jan</option>\n");
      out.write("                                        <option>Feb</option>\n");
      out.write("                                        <option>Mar</option>\n");
      out.write("                                        <option>Apr</option>\n");
      out.write("                                        <option>May</option>\n");
      out.write("                                        <option>Jun</option>\n");
      out.write("                                        <option>Jul</option>\n");
      out.write("                                        <option>Aug</option>\n");
      out.write("                                        <option>Sep</option>\n");
      out.write("                                        <option>Oct</option>\n");
      out.write("                                        <option>Nov</option>\n");
      out.write("                                        <option>Dec</option>\n");
      out.write("                                    </select>\n");
      out.write("                                    <select name=\"byear\" style=\"width: 34%\">\n");
      out.write("                                        <option>Year</option>\n");
      out.write("                                        ");

                                            for (int i = 2010; i >= 1900; i--) {
                                        
      out.write("\n");
      out.write("                                        <option>\n");
      out.write("                                            ");
      out.print(i);
      out.write("\n");
      out.write("                                        </option>\n");
      out.write("                                        ");
}
      out.write("\n");
      out.write("                                    </select>\n");
      out.write("                                </div>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td  id=\"td\">\n");
      out.write("                                <label id=\"lab\">Gender</label>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <div>\n");
      out.write("                                    <select name=\"gender\" id=\"gender\">\n");
      out.write("                                        <option>Female</option>\n");
      out.write("                                        <option  selected>Male</option>                                        \n");
      out.write("                                    </select>\n");
      out.write("                                </div>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td  id=\"td\">\n");
      out.write("                                <label id=\"lab\">Mobile</label>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <div>\n");
      out.write("                                    <input type=\"text\" name=\"mobile\" id=\"reg2\" placeholder=\"+923001234567\" required=\"\" />\n");
      out.write("                                </div>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td  id=\"td\">\n");
      out.write("                                <label id=\"lab\">Email</label>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <div>\n");
      out.write("                                    <input type=\"text\" name=\"email\" id=\"reg2\" placeholder=\"example@gmail.com\" required=\"\" />\n");
      out.write("                                </div>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td  id=\"td\">\n");
      out.write("                                <div align=\"center\">\n");
      out.write("                                    <input type=\"submit\" value=\"Create\" name=\"create\" id=\"btn\" />\n");
      out.write("                                    <input type=\"reset\" value=\"Reset\" name=\"button\" id=\"btn\" />\n");
      out.write("                                </div>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td>\n");
      out.write("                                <label>Already have account! <a href=\"login.jsp\" >Login Here</a>\n");
      out.write("                            </td>\n");
      out.write("                        </tr>\n");
      out.write("                    </tbody>\n");
      out.write("                </table>            \n");
      out.write("            </form>                           \n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
