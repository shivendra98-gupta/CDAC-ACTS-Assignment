//https://www.youtube.com/watch?v=GcJitflEOHI&list=PL9q3G4cgja6cgxDbpg3cdvnqM9iWwQtNG&index=5

// Resultset tbh use krna jbh data retreive krna ho

import java.sql.*;
public class JdbcDemo1 {

	public static void main(String[] args) throws ClassNotFoundException,SQLException
	{
		// TODO Auto-generated method stub
		String url="jdbc:mysql://localhost:3306/jdbc_DB";
		String user="root";
		String password="shiv@123";
		String query="Select * from employees;";
		String insert_query="INSERT INTO employees(id,name,job_title,salary) values (2,'vashnavi','backe-end',45000.0)";   // yha ) baadh " ; " nhi aaye ga
		String p_stmt_query= "Select * from employees where name=?";

// LOADING-DRIVER
		try 
		{
//"C:\Users\Shivendra\Downloads\mysql-connector-j-8.4.0"
			Class.forName("com.mysql.cj.jdbc.Driver");
//LOAD-HONEH KE BAADH PRINT HO ISLIYE Sopln() neeche aaye ga
			System.out.println("DRIVER LOADED SUCCESSFULLY");
			
		} 
		catch (ClassNotFoundException e) 
		{
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		
//================================USING TRY WITH RESOURCES ==============================
//		try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_DB", "username", "password");
//			     Statement stmt = con.createStatement();
//			     ResultSet rs = stmt.executeQuery("SELECT * FROM your_table")) {
//
//			    // Your code to process the result set goes here
//
//			} 
//ABH YE NHI LIKHNA-->
//		 rs.close();
//		    stmt.close();
//		    con.close();
//======================== ==================== END ==================================    
		    
		try 
		{
//			Connection is i/f 
			Connection con = DriverManager.getConnection(url,user,password);
			
			System.out.println("Connection established successfully");
			
		    Statement stmt = con.createStatement();
// Comment the above Line ....======== NOW starting Preparatory Stmt ============================
		    PreparedStatement p_stmt=con.prepareStatement(p_stmt_query);
		    p_stmt.setString(1, "shivendra");  //1,2,3 mtlb "?" aur frr ? ke value yha setString isliye use kiya kyo ke shivendra is string type
		    ResultSet rs=p_stmt.executeQuery();
		    while(rs.next())
		    {
		    	int id=rs.getInt("id");     // RHS meh Column Name written in DB table
		    	String name=rs.getString("name"); // RHS meh Column Name written in DB table
		    	String job= rs.getString("job_title"); // RHS meh Column Name written in DB table
		    	System.out.println();
		    	System.out.println("========================================");
		    	System.out.println("ID  "+id);
		    	System.out.println("name  "+name);
		    	System.out.println("job title  "+ job);
		    }
		    rs.close();
		    p_stmt.close();
		    con.close();
		    
		    
//====================== INSERT INTO DB================
		   int rows_affected = stmt.executeUpdate(insert_query);
		    if(rows_affected>0)
		    {
		    	System.out.println("inserted successfully  "+rows_affected);
		    }
		    else
		    {
		    	System.out.println("error during insertion");
		    }
//================== ====INSERT INTO DB end =============== ================== ===============		   
		    ResultSet rs = stmt.executeQuery(query);   //To retrieve data from DB we use executQuery( )
		    while(rs.next())
		    {
		    	int id=rs.getInt("id");     // RHS meh Column Name written in DB table
		    	String name=rs.getString("name"); // RHS meh Column Name written in DB table
		    	String job= rs.getString("job_title"); // RHS meh Column Name written in DB table
		    	System.out.println();
		    	System.out.println("========================================");
		    	System.out.println("ID  "+id);
		    	System.out.println("name  "+name);
		    	System.out.println("job title  "+ job);
		    }
		    rs.close();
		    stmt.close();
		    con.close();
		}
		catch (SQLException e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}

	}

}
