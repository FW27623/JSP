<%@ page contentType="text/html;charset=gb2312" %>
<HTML><body bgcolor=yellow><font size=2>
<%  Integer integer=(Integer)session.getAttribute("guess");
%>
<p><%= integer %>�����ˣ����ٲ£�
   <form action="example3_16_result.jsp" method="post" name=form >
       <input type="text" name="guess" > 
       <input type="submit" value="�ͳ�" name="submit">
   </form>
</font></body></HTML>
