<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import ="java.io.*" %>
<HTML><body>
  <%try{  InputStream in=request.getInputStream();
          File dir=new File("C:/1000");
          dir.mkdir();
          File f=new File(dir,"B.txt");
          FileOutputStream o=new FileOutputStream(f);
          byte b[]=new byte[1000];
          int n;
          while((n=in.read(b))!=-1)
             o.write(b,0,n);
          o.close();
          in.close();
          out.print("�ļ����ϴ�");
    }
    catch(IOException ee){
          out.print("�ϴ�ʧ��"+ee);
    }
  %> 
</body></HTML>
