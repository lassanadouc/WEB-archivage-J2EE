package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AddArchive_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("%@ page language=\"java\" contentType=\"text/html; charset=ISO-8859-1\"\n");
      out.write("\tpageEncoding=\"ISO-8859-1\"%>\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \n");
      out.write("\t\"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\n");
      out.write("<title>Archive Upload to Database </title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css\">\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-1.12.4.js\"></script>\n");
      out.write("        <script src=\"https://code.jquery.com/ui/1.12.1/jquery-ui.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            $(function () {\n");
      out.write("                $(\"#datepicker\").datepicker();\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<center>\n");
      out.write("\t\t<h1>Archive Upload to Database</h1>\n");
      out.write("\t\t<form method=\"post\" action=\"uploadServlet\" enctype=\"multipart/form-data\">\n");
      out.write("\t\t\t<table border=\"0\">\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td>Intitule: </td>\n");
      out.write("\t\t\t\t\t<td><input type=\"text\" name=\"intitule\" size=\"50\"/></td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<td>Date: </td>\n");
      out.write("\t\t\t\t\t<td> <input type=\"text\" name=\"dob\" id=\"datepicker\" size=\"50\"/></td>\n");
      out.write("                                    \n");
      out.write("\n");
      out.write("                                </tr>\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td>Fichier: </td>\n");
      out.write("\t\t\t\t\t<td><input type=\"file\" name=\"fichier\" size=\"50\"/></td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("                                <tr>\n");
      out.write("\t\t\t\t\t<td>Fichier 2: </td>\n");
      out.write("\t\t\t\t\t<td><input type=\"file\" name=\"fichier2\" size=\"50\"/></td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("                                <tr>\n");
      out.write("\t\t\t\t\t<td>Fichier 3: </td>\n");
      out.write("\t\t\t\t\t<td><input type=\"file\" name=\"fichier3\" size=\"50\"/></td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("                                 <tr>\n");
      out.write("\t\t\t\t\t<td>Nature de l'archive: </td>\n");
      out.write("\t\t\t\t\t<td><input type=\"text\" name=\"nature\" size=\"50\"/></td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("                                \n");
      out.write("                                 <tr>\n");
      out.write("\t\t\t\t\t<td>Categorie: </td>\n");
      out.write("\t\t\t\t\t<td><input type=\"text\" name=\"categorie\" size=\"50\"/></td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td colspan=\"2\">\n");
      out.write("\t\t\t\t\t\t<input type=\"submit\" value=\"Save\">\n");
      out.write("\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t</table>\n");
      out.write("\t\t</form>\n");
      out.write("\t</center>\n");
      out.write("</body>\n");
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
