package sun.yourservlet;
import java.io.*;
import org.w3c.dom.*; 
import javax.xml.parsers.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Number extends HttpServlet
{  public void init(ServletConfig config) throws ServletException
    {super.init(config);
    }
   public  void  doPost(HttpServletRequest request,HttpServletResponse response) 
                        throws ServletException,IOException
    {  boolean boo=false;
       response.setContentType("text/html;charset=GB2312");
       PrintWriter out=response.getWriter();
       out.println("<html><body>");
       String searchedNumber=request.getParameter("studentNmber");
try{   DocumentBuilderFactory  factory=DocumentBuilderFactory. newInstance();
       DocumentBuilder  builder= factory.newDocumentBuilder();
       Document  document= builder. parse(new File("D:\\1000\\Score.xml")) ;
      Element root=document.getDocumentElement() ;  //��ȡ���ڵ�
        //���ظ��ڵ��Element�ӽڵ㣬��Щ�ӽڵ��Ӧ��XML�ļ��еġ�ѧ��"��ǣ�
        NodeList  elemnetNodes=root.getElementsByTagName("ѧ��") ; 
       int size=elemnetNodes.getLength();
       for(int k=0;k<size;k++)
        { Node node=elemnetNodes.item(k);
          if(node.getNodeType()==Node.ELEMENT_NODE) //�ж�node�ڵ������
           { //�ٵõ�node�ڵ��number���Ե�ֵ��
             String stuNumber=((Element)node).getAttribute("number");//��ȡѧ��
             if(stuNumber.equals(searchedNumber))
             { boo=true;
               NodeList childNodes=node.getChildNodes();//��ȡnode��ȫ���ӽڵ�
               for(int i=0;k<childNodes.getLength();i++)
               { Node child=childNodes.item(i);
                 if(child.getNodeType()==Node.ELEMENT_NODE)
                  {  String nodeName=((Element)child).getTagName().trim();
                     out.println("<BR>"+nodeName);
                     String courseType=((Element)child).getAttribute("�γ�����");
                     String contentStr=((Element)child).getTextContent();
                     if(nodeName.startsWith("����"))
                       out.println("��"+contentStr);   
                     else
                        out.println("("+courseType+") ��"+contentStr);  
                      }
                    }
                }
             }
        }
       if(boo==false)
          out.println("��������Ҫ��ѯ��ѧ�ţ�");      
      }
    catch(Exception ee)
     {}
    out.println("</body></html>");
   } 
   public  void  doGet(HttpServletRequest request,HttpServletResponse response) 
                        throws ServletException,IOException
   { doPost(request,response);
   }
}
