<%@ page contentType="text/html;charset=gb2312" %>
<HTML><body>
    <%! int count=0;                    //���û������count
        synchronized void setCount() {  //synchronized���εķ���
           count++;
        }
    %>
    <%  setCount();
        out.println("���ǵ�"+count+"�����ʱ�վ�Ŀͻ�");   
    %>
</body></HTML>
