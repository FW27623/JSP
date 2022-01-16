package myservlet.control;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Example5_6_Servlet extends HttpServlet{
   public void init(ServletConfig config) throws ServletException{
      super.init(config);
   }
   public void doPost(HttpServletRequest request,HttpServletResponse response) 
                        throws ServletException,IOException{
      String number=request.getParameter("number");     
      try{   double n=Double.parseDouble(number);
             if(n<0)
                response.sendRedirect("example5_6_show.jsp");  //�ض���
             else{
                RequestDispatcher dispatcher= 
                request.getRequestDispatcher("example5_6_show.jsp");
                dispatcher.forward(request, response);//ת����example5_6_show.jsp
             }
      }
      catch(NumberFormatException e){
           response.sendRedirect("example5_6.jsp");  //�ض���
      }
   } 
   public  void  doGet(HttpServletRequest request,HttpServletResponse response) 
                        throws ServletException,IOException{
        doPost(request,response);
   }
}
