<%@ page contentType="text/html;charset=gb2312" %>
<jsp:useBean id="iPhone" class="tom.jiafei.Goods" scope="request"/>
<HTML><body bgcolor=yellow><font size=3>
  <form action="" Method="post" >
     �ֻ�����:<input type=text name="name">
     <br>�ֻ��۸�:<input type=text name="price">
     <br><input type=submit value="�ύ����ҳ��">
  </form>
   <form action="example4_5_b.jsp" Method="post" >
     �ֻ�����:<input type=text name="name">
     <br>�ֻ��۸�:<input type=text name="price">
     <br><input type=submit value="�ύ��example4_5_b.jspҳ��">
  </form>
  <jsp:setProperty name="iPhone" property="name" param ="name" />
  <jsp:setProperty name="iPhone" property="price" param ="price"/>
  <br><b>���ƣ�<jsp:getProperty name="iPhone" property="name"/>
  <br><b>�۸�<jsp:getProperty name="iPhone" property="price"/>
</font></body></HTML>
