package myservlet.control;
import mybean.data.Example8_6_Bean;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Example8_6_Servlet extends HttpServlet{
   public void init(ServletConfig config) throws ServletException{
      super.init(config);
   }
   public void doPost(HttpServletRequest request,HttpServletResponse response)
                        throws ServletException,IOException{
      request.setCharacterEncoding("gb2312");
      Example8_6_Bean fileBean=new Example8_6_Bean();  //����Javabean����
      request.setAttribute("fileBean",fileBean);
      String fileName=null;
      HttpSession session=request.getSession(true);
      try{  
         //�ÿͻ���session�����Id����һ����ʱ�ļ�
          String tempFileName=(String)session.getId();
          String webDir = request.getContextPath();
          webDir = webDir.substring(1); 
          File f= new File(""); 
          String path = f.getAbsolutePath();
          int index = path.indexOf("bin");
          String tomcatDir = path.substring(0,index);//tomcat�İ�װĿ¼
          File dir=new File(tomcatDir+"/webapps/"+webDir+"/image");
          dir.mkdir();          
          //������ʱ�ļ�f1
          File f1=new File(dir,tempFileName);
          FileOutputStream o=new FileOutputStream(f1);
           //���ͻ��ϴ���ȫ����Ϣ����f1
          InputStream in=request.getInputStream();
          byte b[]=new byte[10000];
          int n;
          while( (n=in.read(b))!=-1){
             o.write(b,0,n);
          }
          o.close();
          in.close();
           //��ȡ��ʱ�ļ�f1�����л�ȡ�ϴ��ļ������ֺ��ϴ��ļ�������
          RandomAccessFile randomRead=new RandomAccessFile(f1,"r");
           //����f1�ĵ�2�У���ȡ���ϴ��ļ�������
          int second=1;
          String secondLine=null;
          while(second<=2) { 
              secondLine=randomRead.readLine();
              second++;
          }
          //��ȡf1�е�2����"filename"֮��=�����ֵ�λ��:
          int position=secondLine.lastIndexOf("=");
           //�ͻ��ϴ����ļ���������
          fileName=secondLine.substring(position+2,secondLine.length()-1);
          randomRead.seek(0); //�ٶ�λ���ļ�f1�Ŀ�ͷ
          //��ȡ��4�лس����ŵ�λ��
          long  forthEndPosition=0;
          int forth=1;
          while((n=randomRead.readByte())!=-1&&(forth<=4)){  
             if(n=='\n'){
                forthEndPosition=randomRead.getFilePointer();
                forth++;
             }
          }
          //���ݿͻ��ϴ��ļ������֣������ļ��������
          byte  cc[]=fileName.getBytes("ISO-8859-1");
          fileName=new String(cc);
          File f2= new File(dir,fileName);
          RandomAccessFile randomWrite=new RandomAccessFile(f2,"rw"); 
          //ȷ�����ļ�f1�а����ͻ��ϴ����ļ������ݵ����λ�ã���������6��
          randomRead.seek(randomRead.length());
          long endPosition=randomRead.getFilePointer();
          long mark=endPosition;
          int j=1;
          while((mark>=0)&&(j<=6)) { 
              mark--;
              randomRead.seek(mark);
              n=randomRead.readByte();
              if(n=='\n'){
                 endPosition=randomRead.getFilePointer();
                 j++;
              }
          }
          //��randomRead��ָ���ļ�f1�ĵ�4�н�����λ��
          randomRead.seek(forthEndPosition);
          long startPoint=randomRead.getFilePointer();
         //��f1�����ͻ��ϴ����ļ�����f2����ȡ��4�н���λ�ú͵�����6��֮������ݣ�
          while(startPoint<endPosition-1){
              n=randomRead.readByte();
              randomWrite.write(n); 
              startPoint=randomRead.getFilePointer();
          }
          randomWrite.close();
          randomRead.close();
          
          fileBean.setMess("�ϴ��ɹ�"); 
          fileBean.setFileName(fileName);   
          f1.delete(); //ɾ����ʱ�ļ�
       }
       catch(Exception ee) {
          fileBean.setMess("û��ѡ���ļ����ϴ�ʧ��"); 
       }
      RequestDispatcher dispatcher=
      request.getRequestDispatcher("example8_6.jsp");
      dispatcher.forward(request, response);
   } 
   public  void  doGet(HttpServletRequest request,
                      HttpServletResponse response) 
                        throws ServletException,IOException{
      doPost(request,response);
   }
}
