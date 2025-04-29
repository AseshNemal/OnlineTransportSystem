package com.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.Driver;
import com.util.DBConnect;

public class DriverDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	private static boolean isSuccess = false;

	public static int validate(String userName,String password){
		
		int id = 0;
		try {
			
			//Database Connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();

			String sql = "SELECT * FROM driver WHERE username = '" + userName+ "' AND password = '" + password + "'";


			rs =stmt.executeQuery(sql);
			
			if(rs.next()) {
				id = rs.getInt(1);
			}


		} catch (Exception e) {
			e.printStackTrace();
			
		}

		return id;
	}
	
	public static boolean register(String name,String email, String username,String password) {
		
		
		try {
			//Database Connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into driver values (0,'"+name+"','"+email+"','"+username+"','"+password+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
				}
			else {
				isSuccess=false;
			}
			
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	public static boolean updateDriver(String id ,String name,String email, String username,String password) {
		
		try {
			//Database Connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "Update driver set name= '"+ name +"' ,email = '"+ email +"' , username = '"+ username +"' , password = '"+ password +"' where id = '"+ id +"' ";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	public static List<Driver> getDriverDetails(String ID){
		int convertedID = Integer.parseInt(ID);
		
		ArrayList<Driver> driver = new ArrayList<>();
		
		try {
			//Database Connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "Select * from driver where id = '"+ convertedID +"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String username = rs.getString(4);
				String password = rs.getString(5);
				
				Driver D = new Driver(id,name,email,username,password);
				driver.add(D);
				
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}	
		return driver;
		
	}
	
	public static boolean deleteDriver(String id) {
		int convID = Integer.parseInt(id);
		try {
			//Database Connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "delete from driver where id = '"+ convID +"' ";
			
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
				
			
		}catch(Exception e){
			e.printStackTrace();
			
		}
		
		
		return isSuccess;
	}

}

