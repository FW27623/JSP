<%@ page contentType="text/html;charset=GB2312" %>
<HTML><body bgcolor=#FFAAEE>
    <%! double multi(double x,double y){
           return x*y;
        }
        double div(double x,double y) {
           return x/y;
        }
    %>
    <%  double x=3.56;
        double y=18;
        out.println("����multi��������"+x+"��"+y+"֮����<br>");
        out.println(multi(x,y));
        out.println("<BR>����div��������"+y+"����"+x+"���̣�<br>");
        String s =String.format("С���㱣��3λ��%10.3f",div(y,x));
        out.println(s); 
    %>
</body></HTML>
