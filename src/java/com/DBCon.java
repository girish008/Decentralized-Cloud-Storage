package com;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
public class DBCon{
    private static Connection con;

public static Connection getCon()throws Exception {
   try{
		Class.forName("com.mysql.jdbc.Driver");	
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/securing","root","root");
	}catch(Exception e){
		e.printStackTrace();
	}
	return con;
}

public static String userLogin(String user,String pass)throws Exception{
	String msg="invalid user";
	con = getCon();
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select username from users where username='"+user+"' and password='"+pass+"'");
	if(rs.next()){
		msg=rs.getString(1);
	}
	return msg;
}
public static String register(String user,String pass,String contact,String email,String address,String department)throws Exception{
	String msg="no";
    con = getCon();
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select username from users where username='"+user+"'");
	if(rs.next()){
		msg="Username already exists";
	}else{
		PreparedStatement stat=con.prepareStatement("insert into users values(?,?,?,?,?,?)");
		stat.setString(1,user);
		stat.setString(2,pass);
		stat.setString(3,contact);
		stat.setString(4,email);
		stat.setString(5,address);
		stat.setString(6,department);
		int i=stat.executeUpdate();
		stat.close();
		if(i > 0)
			msg="success";
	}
	rs.close();
	stmt.close();
	con.close();
    return msg;
}
}
