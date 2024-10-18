import java.io.*;
import java.sql.*;
import javax.servlet.*;
public class RegisterEx extends GenericServlet
{
  public void service(ServletRequest req,ServletResponse res)throws IOException,ServletException
  {
    res.setContentType("text/html");
    PrintWriter out=res.getWriter();
   

int sid=Integer.parseInt(req.getParameter("sid"));
String sname=req.getParameter("sname");
int sage=Integer.parseInt(req.getParameter("sage"));
    String saddr=req.getParameter("saddr");
String gen=req.getParameter("gender");
long sphno=Long.parseLong(req.getParameter("sphno"));
     

    try
    {
       Class.forName("oracle.jdbc.driver.OracleDriver");
       Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","karimun");
       String qry = "insert into student values(?,?,?,?,?,?)";
       PreparedStatement pst=con.prepareStatement(qry);
       pst.setInt(1,sid);
       pst.setString(2,sname);
       pst.setInt(3,sage);
       pst.setString(4,saddr);
       pst.setString(5,gen);
       pst.setLong(6,sphno);
       pst.executeUpdate();
       out.println("Row inserted successfully");
       out.close();
   }
   catch (Exception e){
      e.printStackTrace();
    }
  }
}