package com.service;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.model.InquiryModel;
import com.util.DBConnect;

public class InquiryControl {
	
	//ConnectDb
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Insert data function 
	
	public static boolean insertdata ( int inquiryId,String pid,String inquiry, String customerName, String reply, String date) {
		
		
		boolean isSuccess = false;
		try {
			//Db connection call
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql = "Insert into inquiries values ( 0,'"+pid+"','"+inquiry+"','"+customerName+"','"+reply+"', '"+date+"')";
			int rs = stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess = true;
				
			}else {
				isSuccess = false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	// Data display part 
	//Get by ID
	
	public static List<InquiryModel> getById (String Id){
		
		ArrayList <InquiryModel> Inquiry = new ArrayList<>();
		
		try {
			//DB Connection
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			
			//Query
			
			String sql = "Select * From inquiries where pid = '"+Id+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int inquiryId = rs.getInt(1);
				String pid = rs.getString(2);
				String inquiry = rs.getString(3);
				String customerName = rs.getString(4);
				String reply = rs.getString(5);
				String date = rs.getString(6);
				
				InquiryModel IM = new InquiryModel(inquiryId,pid,inquiry,customerName,reply,date);
				
				Inquiry.add(IM);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return Inquiry;
	}
		
	// Get all data
	
	public static List<InquiryModel> getAllInquiry(){
		ArrayList <InquiryModel> Inquiries = new ArrayList<>();
		
		try {
			//DB Connection
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			
			//Query
			
			String sql = "Select * From inquiries";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int inquiryId = rs.getInt(1);
				String pid = rs.getString(2);
				String inquiry = rs.getString(3);
				String customerName = rs.getString(4);
				String reply = rs.getString(5);
				String date = rs.getString(6);
				
				InquiryModel IM = new InquiryModel(inquiryId,pid,inquiry,customerName,reply,date);
				
				Inquiries.add(IM);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return Inquiries;
	}
		
    //Update Data 
	    
	public static boolean updateData ( String inquiryId,String pid,String inquiry, String customerName, String reply, String date) {
		
		try {
			//DbConnection
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			
			//Sql Query
			String sql="update inquiries set pid = '"+pid+"', Inquiry='"+inquiry+"',CustomerName='"+customerName+"',Reply='"+reply+"',Date='"+date+"'"
			     +"where Inquiriesid ='"+inquiryId+"'";
			
			int rs = stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess = true;
				
			}else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
		
	//delete data
	public static boolean deleteData(String inquiryId) {
		try {
			//Database Connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "DELETE FROM inquiries WHERE Inquiriesid = '"+inquiryId+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean updateAllInq(String inqID, String reply) {
		try {
			//Database Connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "UPDATE inquiries SET Reply = '"+reply+"' WHERE Inquiriesid = '"+inqID+"'";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	}
	
	
	
	

