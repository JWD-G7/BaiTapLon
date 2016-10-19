package method.models;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletResponse;

import utils.ConnectionPool;
import utils.ConnectionPoolImpl;

public class KiemTraDangNhap {
	public int ChucVu(String username,String password) 
	{
		int check=0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {			
			e.printStackTrace();
		}
		Connection con=null;
		Statement stm=null;
		ResultSet rs;	
		try
		{
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/btwebfinal","root","Preciouspro1");
			stm=con.createStatement();
			rs=stm.executeQuery("SELECT * FROM GiangVien WHERE username='"+username+"' AND pass='"+password+"'");
			if(rs.next())
            	check=rs.getInt("roll");
		}catch(SQLException e){
			e.printStackTrace();
		}		
		return check;		
	}
	public String LayThongTin(String username,String password,int x) 
	{
		String check="";
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {			
			e.printStackTrace();
		}
		Connection con=null;
		Statement stm=null;
		ResultSet rs;	
		try
		{
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/btwebfinal","root","Preciouspro1");
			stm=con.createStatement();
			rs=stm.executeQuery("SELECT * FROM GiangVien WHERE username='"+username+"' AND pass='"+password+"'");
			if(rs.next())
			{
            	check=rs.getString(x);           	
			}
		}catch(SQLException e){
			e.printStackTrace();
		}		
		return check;		
	}
	public boolean checkTaiKhoan(String username,String password) 
	{
		boolean check=false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Connection con=null;
		Statement stm=null;
		ResultSet rs;
		
		try
		{
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/btwebfinal","root","Preciouspro1");
			stm=con.createStatement();
			rs=stm.executeQuery("SELECT * FROM GiangVien WHERE username='"+username+"' AND pass='"+password+"'");
			check=rs.next();
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		return check;
		
        
		
		 
	}
}
