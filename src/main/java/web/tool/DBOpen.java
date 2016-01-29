package web.tool;

import java.sql.Connection;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBOpen {
  public Connection getConnection(){
   Connection con = null;

   try{
     InitialContext ctx = new InitialContext();
     DataSource pool = (DataSource)ctx.lookup("java:comp/env/jdbc/mysql/root");
     con = pool.getConnection();
     System.out.println("DataSource Connection ��û��.");

     
   }catch(Exception e){
     e.printStackTrace();
   }


   return con;
   
  }
 }
/*
public class DBOpen {
 public Connection getConnection(){
  Connection con = null;

  try{
    
    String jdbc = "org.gjt.mm.mysql.Driver"; // MySQL ���� Drvier 
    String url = "jdbc:mysql://localhost:3306/web?useUnicode=true&characterEncoding=euckr"; 
    String user = "root"; 
    String pass = "1234";
    
    Class.forName(jdbc); // memory�� ����̹� Ŭ������ �ε���.
    con = DriverManager.getConnection(url, user, pass); // MySQL ����

    
  }catch(Exception e){
    e.printStackTrace();
  }


  return con;
  
 }
}
*/