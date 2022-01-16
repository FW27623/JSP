package myservlet.control;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Example5_7_Servlet extends HttpServlet {
   public void init(ServletConfig config) throws ServletException {
      super.init(config);
   }
   public  void  doPost(HttpServletRequest request,HttpServletResponse response) 
                        throws ServletException,IOException {
      HttpSession session=request.getSession(true);  //��ȡ�ͻ��ĻỰ����
      String str=request.getParameter("clientGuessLetter"); 
      Character guessLetter=str.trim().charAt(0);    //��ȡ�ͻ��²����ύ����ĸ
      //���������session�е���ĸ��
      Character savedLetter=(Character)session.getAttribute("savedLetter");
      char realLetter=savedLetter.charValue();
      if(Character.isUpperCase(guessLetter)) {
          guessLetter=Character.toLowerCase(guessLetter);
      } 
      if(guessLetter<realLetter) {
          session.setAttribute("message","����С��");
          response.sendRedirect("example5_7_input.jsp");          
      }
      if(guessLetter>realLetter) {
          session.setAttribute("message","���´���");
          response.sendRedirect("example5_7_input.jsp");          
      }
      if(guessLetter==realLetter){
          session.setAttribute("message","���¶���");
          response.sendRedirect("example5_7_input.jsp");          
      }
   } 
   public  void  doGet(HttpServletRequest request,HttpServletResponse response) 
                        throws ServletException,IOException {
      doPost(request,response);
   }
}
