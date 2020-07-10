package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class AddUser_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=utf-8");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<title>Bookshop Website</title>\n");
      out.write("<script\n");
      out.write("  src=\"https://code.jquery.com/jquery-3.4.1.min.js\"\n");
      out.write("  integrity=\"sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=\"\n");
      out.write("  crossorigin=\"anonymous\"></script>\n");
      out.write("<script type=\"text/javascript\" \n");
      out.write("\tsrc=\"https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js\"></script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<div style=\"text-align: center\">\n");
      out.write("\t\t<h1>Insert User</h1>\n");
      out.write("\t\t<form action=\"insert\" method=\"post\" id=\"loginForm\">\n");
      out.write("\t\t\t<label for=\"login\">login:</label>\n");
      out.write("\t\t\t<input name=\"login\" size=\"30\" />\n");
      out.write("\t\t\t<br><br>\n");
      out.write("\t\t\t<label for=\"password\">Password:</label>\n");
      out.write("\t\t\t<input type=\"password\" name=\"password\" size=\"30\" />\n");
      out.write("                        <label for=\"fullname\">Fullname:</label>\n");
      out.write("\t\t\t<input  name=\"Fullname\" size=\"30\" />\n");
      out.write("                        <br><br>\n");
      out.write("                        <label style=\"margin-right: 150px;\" for=\"departement\">Departement</label>\n");
      out.write("                        <select name=\"id_cat\"style=\"width:250px;\">\n");
      out.write("                    <option value=\"-1\"> Choisissez le departement</option>\n");
      out.write("         \n");
      out.write("                    ");
  String message;
                        try {
                       
            String sql = "select * from departement";
          Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/archive","root","Root@1995");
            Statement statement =conn.createStatement();
            ResultSet rs=statement.executeQuery(sql);
            while(rs.next()) {
                
      out.write("\n");
      out.write("                  <option value=\"");
      out.print(rs.getInt("id"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("nom"));
      out.write("</option>\n");
      out.write("                 ");

            }
           
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        }
      out.write("\n");
      out.write("                        </select>\n");
      out.write("\t\t\t<br>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${message}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("\t\t\t<br><br>\t\t\t\n");
      out.write("\t\t\t<button type=\"submit\">Insert</button>\n");
      out.write("\t\t</form>\n");
      out.write("\t</div>\n");
      out.write("</body>\n");
      out.write("\n");
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
