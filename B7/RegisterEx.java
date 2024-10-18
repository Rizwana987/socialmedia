import java.io.*;
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
out.print("Student Details are:");
out.print("<br>");
out.print(sid+""+sname+""+sage+""+saddr+""+gen+""+sphno);
}
}

