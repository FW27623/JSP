<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="mybean.data.UploadFile"%> 
<jsp:useBean id="upFile" type="mybean.data.UploadFile" scope="session"/>
<HEAD><%@ include file="head.txt" %></HEAD>
<HTML>
<BODY bgcolor=cyan>
<CENTER>
   <Font size=2 color=blue>
   <BR> <jsp:getProperty name="upFile"  property="backNews"/>
   </Font> 
   <BR><font size=2>
   <BR>�������ļ����֣�<jsp:getProperty name="upFile" 
                         property="savedFileName"/>
   <BR>
    <img src=image/<jsp:getProperty name="upFile" property="savedFileName"/>
     width=150 height=120>ͼ��Ч��
     </img>
  </FONT>
</CENTER>
</BODY>
</HTML>

