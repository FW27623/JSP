<%@ page contentType="text/html;charset=gb2312" %>
<HTML><body>
<h1> ����һ��1-10֮��������
<%  double i=(int)(Math.random()*10)+1;
    if(i<=5) {
%>       <jsp:forward page="example2_12_a.jsp" >
            <jsp:param name="number" value="<%= i %>" />
         </jsp:forward> 
<%  }
    else {
 %>     <jsp:forward page="example2_12_b.jsp" >
           <jsp:param name="number" value="<%= i %>" />
        </jsp:forward> 
 <% }
 %>
</body></HTML>
