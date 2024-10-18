import java.io.*;
import java.sql.*;
import javax.servlet.*;
public class DanceReg extends GenericServlet
{
	public void service(ServletRequest req,ServletResponse res)throws IOException,ServletException
	{
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		String name=req.getParameter("Fname");
		int age=Integer.parseInt(req.getParameter("age"));
		String email=req.getParameter("email");
		String addr=req.getParameter("addr");
		String gender=req.getParameter("gender");
		long phno=Long.parseLong(req.getParameter("phno"));
		String dstyle=req.getParameter("dance_style");
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","karimun");
			String qry="insert into dancereg values(?,?,?,?,?,?,?)";
			PreparedStatement pst=con.prepareStatement(qry);
			pst.setString(1,name);
			pst.setInt(2,age);
			pst.setString(3,email);
			pst.setString(4,addr);
			pst.setString(5,gender);
			pst.setLong(6,phno);
			pst.setString(7,dstyle);
			pst.executeUpdate();
			out.println("Row Inserted successfully");
			out.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}