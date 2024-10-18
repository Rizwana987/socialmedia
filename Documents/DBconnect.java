import java.sql.*;
class DBconnect'
{
public static void main(String[] args)
{
try
{
Class.forName("oracle.jdbc.driver.oracleDriver");
connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","karimun");
if(con!=null)
{
system.out.println("oracle database connected");
}
con.close();
}
catch(Exception e)
{
system.out.println(e);
}
}
}