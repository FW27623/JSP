package moon.yourbean;
import javax.xml.parsers.*;
import org.xml.sax.helpers.*;
import org.xml.sax.*;
public class SAXBean
{  String stationName="������վ";                     //վ��
   String startOrArrive="" ;                         //ʼ�����յ�
   StringBuffer trainMessages=new StringBuffer();    //��Ϣ
   SAXParserFactory factory=null;
   SAXParser saxParser=null;  //������
   MyHandler handler;         //�¼�������
   public void setStationName(String s)
    {  stationName=s.trim();
       try{ byte b[]=stationName.getBytes("ISO-8859-1");
            stationName=new String(b);
          }
       catch(Exception ee){} 
    }
   public String getStationName()
    {  return  stationName;
    }
   public void setStartOrArrive(String s)
    {  startOrArrive=s.trim();
       try{ byte b[]=startOrArrive.getBytes("ISO-8859-1");
            startOrArrive=new String(b);
          }
       catch(Exception ee){} 
    }
   public String getStartOrArrive()
    {  return  startOrArrive;
    }
  public StringBuffer getTrainMessages()
   { try{  factory=SAXParserFactory.newInstance() ;
           saxParser=factory.newSAXParser();
           handler=new MyHandler(trainMessages,stationName,startOrArrive); 
           saxParser.parse("D:/1000/trainList.xml",handler);
        }
     catch(Exception e){ System.out.println(e);} 
     return trainMessages;
   }
}
class MyHandler extends DefaultHandler
{  StringBuffer trainMessages;
   String stationName,startOrArrive;
   boolean վ�����=false,ʼ�����յ����=false;
   MyHandler(StringBuffer mess,String sName,String startOrArr)
   {  trainMessages=mess;
      stationName=sName;
      startOrArrive=startOrArr; 
   }
  public void startDocument() 
   {  trainMessages.append("<table border=2> ");
      trainMessages.append("<tr>");
        trainMessages.append("<th>��������</th>");
        trainMessages.append("<th>��������</th>");
        trainMessages.append("<th>ʼ��ʱ��</th>");
        trainMessages.append("<th>�յ�ʱ��</th>");
      trainMessages.append("</tr>");
   }
   public void endDocument() 
   {  trainMessages.append("</table> ");
   }
  public void startElement(String uri,String localName,
                           String qName,Attributes atts)
   {  qName=qName.trim();
      if(qName.equals(stationName))
      {  վ�����=true;
         trainMessages.append(" "+qName);
      }
      if(qName.equals(startOrArrive))
      {  ʼ�����յ����=true;
      }
      if(qName.endsWith("����"))
      {  trainMessages.append("<tr>");
      }
    
   }
   public void endElement(String uri,String localName,String qName)
   {
     if(qName.startsWith(stationName))
      {  վ�����=false;
      }
      if(qName.startsWith(startOrArrive))
      {  ʼ�����յ����=false;
      }
     if(qName.endsWith("����"))
      {  trainMessages.append("</tr>");
      }
   }
   public void characters(char[] ch,int start,int length)
   {
     String text=new String(ch,start,length);
     text=text.trim();
     if(վ�����==true&&ʼ�����յ����==true&&text.length()>0)
       {  String str=text.trim();
          trainMessages.append("<td>"+str+"</td>");
       }
   }
}
