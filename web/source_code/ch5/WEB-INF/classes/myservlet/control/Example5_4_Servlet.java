package myservlet.control;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Example5_4_Servlet extends HttpServlet{
   double sum=0,i=1,j=1; //�������û�����
   int number=0;         //�������û�����
   public void init(ServletConfig config) throws ServletException{
      super.init(config);
   }
   public synchronized void service(HttpServletRequest request,
              HttpServletResponse response) throws IOException{
      response.setContentType("text/html;charset=gb2312");
      PrintWriter out=response.getWriter();
      out.println("<html><body>");
      number++;
      sum=sum+i/j;
      j=j+2;
      i=-i;  
      out.println("servlet:"+getServletName()+"�Ѿ���������"+number+"��");
      out.println("<BR>����PI��ֵ��:");
      out.println(4*sum);
      out.println("</body></html>");
  } 
}
