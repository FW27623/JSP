<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="mybean.data.Login"%> 
<jsp:useBean id="login" type="mybean.data.Login" scope="session"/>
<HEAD><%@ include file="head.txt" %></HEAD>
<HTML>
<BODY bgcolor=pink>
  <CENTER>
  <Font size=4 color=blue >
  <BR><jsp:getProperty name="login"  property="backNews"/>
  </Font> 
 <Font size=2 color=cyan>
 <% if(login.getSuccess()==true)
     {
 %>    <BR>��¼��Ա����:<jsp:getProperty name="login" property="logname"/>
 <%  }
   else
    { 
 %>  <BR>��¼��Ա����:<jsp:getProperty name="login" property="logname"/>
     <BR>��¼��Ա����:<jsp:getProperty name="login" property="password"/>
 <% }
 %>
 </FONT>
 </CENTER>
</BODY>
</HTML>
