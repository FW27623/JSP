<%@ page contentType="text/html;charset=gb2312" %>
<head> 
  <br>����������<a href="example3_15_a.jsp">ȷ������ҳ��</a>
  <br>ѡ��ͼ�飺<a href="example3_15_b.jsp">ѡ��ͼ��ҳ��</a>
  <br>���ˣ�    <a href="example3_15_c.jsp">����ҳ��</a> 
</head>
<HTML><body bgcolor=cyan><font size=2>
 <p>ѡ������鼮��
   <form action="" method=post name=form>
       <input type="checkbox" name="choice" value="Java�̳�32.5Բ" >Java�̳�32.5Բ
       <input type="checkbox" name="choice" value="���ݿ�ԭ��23Բ" >���ݿ�ԭ��23Բ
   <br><input type="checkbox" name="choice" value="����ϵͳ35Բ" >����ϵͳ35Բ
       <input type="checkbox" name="choice" value="C���Խ̳�28.6Բ" >C���Խ̳�28.6Բ
       <br><input type="submit" value="�ύ" name="submit">
  </form> 
  <%  String book[]=request.getParameterValues("choice"); 
      if(book!=null) {
         StringBuffer str = new StringBuffer();
         for(int k=0;k<book.length;k++) {
            str.append(book[k]+"<br>");
         }
         session.setAttribute("book",str);//���鼮�����û���session��
      }
  %> 
 </font></body></HTML>
