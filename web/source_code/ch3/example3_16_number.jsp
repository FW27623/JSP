<%@ page contentType="text/html;charset=gb2312" %>
<HTML><body bgcolor=#EEDDEE><font Size=2>
<p>����ָ���һ��1��100֮���������£�
  <%  int number=(int)(Math.random()*100)+1;
      session.setAttribute("count",new Integer(0));
      session.setAttribute("save",new Integer(number));
  %>
<br>����²�:
   <form action="example3_16_result.jsp" method="post" name=form>
       <input type="text" name="guess" > 
       <input type="submit" value="�ͳ�" name="submit">
   </form>
</font></body></HTML>
