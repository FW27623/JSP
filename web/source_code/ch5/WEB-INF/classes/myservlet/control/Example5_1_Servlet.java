package myservlet.control;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Example5_1_Servlet extends HttpServlet{
   public void init(ServletConfig config) throws ServletException{
      super.init(config);
   }
   public void service(HttpServletRequest reqest,HttpServletResponse response)
                       throws IOException{
      reqest.setCharacterEncoding("gb2312");
      String str=reqest.getParameter("moon");
      response.setContentType("text/html;charset=gb2312");//������Ӧ��MIME����
      PrintWriter out=response.getWriter();//���һ�����û��������ݵ������
      String sevletName=getServletName();
      out.println("<html><body bgcolor = #EEDDFF>");
      out.println("<b>�����servlet��������"+sevletName+"<br></b>");
      out.println("<b>servlet��Web����зǳ���Ҫ<br>�����Ժ�ĵ�6��)</b>");
      if(str!=null&&str.length()>=1)
         out.println("<br><h2>"+str+"<h2>");
      out.println("</body></html>");
   } 
}
