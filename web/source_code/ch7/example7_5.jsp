<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.sql.*" %>
<HTML><body bgcolor=#EEDDFF>
 <% Connection con;
    PreparedStatement sql; //Ԥ�������
    ResultSet rs;
    try{  Class.forName("com.mysql.jdbc.Driver");
    }
    catch(Exception e){
       out.println("���ǰ�MySQL���ݿ��JDBC-���ݿ����������Ƶ�JDK����չĿ¼��");
    }
    try { String uri= "jdbc:mysql://127.0.0.1/warehouse";
          String user="root";
          String password="";
          con=DriverManager.getConnection(uri,user,password);
          sql=con.prepareStatement("SELECT * FROM product");
          rs=sql.executeQuery();
          out.print("<table border=2>");
          out.print("<tr>");
            out.print("<th width=100>"+"��Ʒ��");
            out.print("<th width=100>"+"����");
            out.print("<th width=50>"+"��������");
            out.print("<th width=50>"+"�۸�");
          out.print("</TR>");
          while(rs.next()){
            out.print("<tr>");
              out.print("<td >"+rs.getString(1)+"</td>"); 
              out.print("<td >"+rs.getString(2)+"</td>");
              out.print("<td >"+rs.getDate("madeTime")+"</td>"); 
              out.print("<td >"+rs.getFloat("price")+"</td>");
            out.print("</tr>") ; 
          }
          out.print("</table>");
          con.close();
    }
    catch(SQLException e){ 
          out.print(e);
    }
 %>
</body></HTML>
