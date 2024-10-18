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
		int age=Integer.ParseInt(rq.getParameter("age");
		String email=req.getParameter("email");
		String addr=req.getParameter("addr");
		String gen=req.getParameter("gender");
		long phno=Long.ParseInt(req.getParameter("phno");
		Strind dstyle=req.getParameter("dance_style");
		try
		{
			Class.forname("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","karimun");
			String qry="insert into dancereg values(?,?,?,?,?,?,?)";
			PreparedStatement pst=con.prepareStatement(qry);
			pst.setString(1,name);
			pst.setInt(2,age);
			pst.setString(3,email);
			pst.setString(4,addr);
			pst.setString(5,gen);
			pst.setLong(6,phno);
			pst.setString(7,dstyle);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}