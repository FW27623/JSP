<%@ page contentType="text/html;charset=GB2312" %>
<HTML><body  bgcolor=cyan >
<% double a=3,b=4,c=5;
%>
<br>����trangle.jsp��������Ϊ<%=a%>,<%=b%>,<%=c%>�����������.
   <jsp:include page="myfile/trangle.jsp">
     <jsp:param name="sideA" value="<%=a%>"/>
     <jsp:param name="sideB" value="<%=b%>"/>
     <jsp:param name="sideC" value="<%=c%>"/>
   </jsp:include>
</body></HTML>
