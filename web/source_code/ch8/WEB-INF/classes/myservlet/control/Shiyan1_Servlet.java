package myservlet.control;
import mybean.data.Shiyan1_Bean;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Shiyan1_Servlet extends HttpServlet{
   public void init(ServletConfig config) throws ServletException{
      super.init(config);
   }
   public void doPost(HttpServletRequest request,HttpServletResponse response)
                        throws ServletException,IOException{
      request.setCharacterEncoding("gb2312");
      Shiyan1_Bean fileBean=new Shiyan1_Bean();  //����Javabean����
      request.setAttribute("fileBean",fileBean);
      String filePath=request.getParameter("fileDir");
      String fileName=request.getParameter("fileName");
      String fileContent=request.getParameter("fileContent");
      File f=new File(filePath,fileName);
      fileBean.setFileLength(fileContent.length());
      fileBean.setFilePath(filePath);   //�����ݴ洢��fileBean�� 
      fileBean.setFileName(fileName);   
      try{ 
           FileOutputStream output=new FileOutputStream(f);
           byte bb[]=fileContent.getBytes();
           output.write(bb,0,bb.length);
           output.close();
      }
      catch(IOException exp){
            fileBean.setFileName("д�ļ�ʧ��"+exp.toString());
      } 
      RequestDispatcher dispatcher=
      request.getRequestDispatcher("writeContent.jsp");
      dispatcher.forward(request, response);
   } 
   public  void  doGet(HttpServletRequest request,HttpServletResponse response) 
                        throws ServletException,IOException{
      doPost(request,response);
   }
}
