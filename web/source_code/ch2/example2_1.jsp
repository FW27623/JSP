<%@ page contentType="text/html;charset=GB2312" %>  <!-- jspָ���� -->
<%@ page import="java.util.Date"  %>                <!-- jspָ���� -->
<%!   Date date;                                   // ��������
      public int continueSum(int start,int end){  // ��������
         int sum =0; 
         for(int i=start;i<=end;i++)  
            sum=sum+i; 
         return sum;
      }
  %>
<HTML><title>example2_1.jsp</title>
 <body  background='back.jpg '>              <!��html��� --> 
<font size=4><p>����Ƭ����Date����
   <% date=new Date();                            //java����Ƭ 
      out.println("<BR>"+date);
      int start=1;
      int end=100;
      int sum=continueSum(start,end);
   %>
<br>��
   <%= start %>                                <!-- Java���ʽ --> 
   ��
   <%= end %> 
   ����������
   <%= sum %> 
</font></body></HTML>
