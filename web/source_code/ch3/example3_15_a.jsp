<%@ page contentType="text/html;charset=gb2312" %>
<head> 
  <br>����������<a href="example3_15_a.jsp">ȷ������ҳ��</a>
  <br>ѡ��ͼ�飺<a href="example3_15_b.jsp">ѡ��ͼ��ҳ��</a>
  <br>���ˣ�    <a href="example3_15_c.jsp">����ҳ��</a> 
</head>
<HTML><body bgcolor=cyan><font size=3>
  <p>��������
   <form action="" method=post name=form>
       <input type="text" name="name"> 
       <input type="submit" value="ȷ��" name=submit>
  </form> 
  <%  String name=request.getParameter("name");
      if(name==null)
         name="";
      else
         session.setAttribute("name",name); //�����ִ����û���session��
  %> 
</font></body></HTML>
