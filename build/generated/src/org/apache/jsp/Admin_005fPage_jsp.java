package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Admin_005fPage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("         <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("         <style>\n");
      out.write("         div.centre {\n");
      out.write("    position:absolute;\n");
      out.write("    left: 50%;\n");
      out.write("    top: 25%;\n");
      out.write("    width: 200px;\n");
      out.write("    height: 200px;\n");
      out.write("    margin-left: -100px; /* Cette valeur doit être la moitié négative de la valeur du width */\n");
      out.write("    margin-top: -100px; /* Cette valeur doit être la moitié négative de la valeur du height */\n");
      out.write("}\n");
      out.write("#left {\n");
      out.write("   display:flex;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("               <div id=\"wrapper\" class=\"centre\">\n");
      out.write("                    <h1>Bienvenue!</h1>\n");
      out.write("                     <br>\n");
      out.write("                     <br>\n");
      out.write("                    <div id=\"left\" class=\"container text-left\">\n");
      out.write("                   \n");
      out.write("                         <a href=\"Administration.jsp\" class=\"btn btn-success\">Administration</a>\n");
      out.write("                          &nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                          <a href=\"Home_Test.jsp\" class=\"btn btn-success\">Utilisateur</a>\n");
      out.write("                     </div>\n");
      out.write("                    <br>\n");
      out.write("                      \n");
      out.write("                    </div>\n");
      out.write("               \n");
      out.write("\n");
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
