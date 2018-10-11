package com.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.db.DBConnection;

public class message {

	private int mid;
	private String content;
	private String mobile;
	private int status_flag;
	private  String post_date;
	private String uid;
	
	public message(){
		super();
	}
	
	public message(message m){
		super();
		this.mid= mid;
		this.content= content;
		this.mobile= mobile;
		this.status_flag= status_flag;
		this.post_date= post_date;
		this.uid= uid;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public int getStatus_flag() {
		return status_flag;
	}

	public void setStatus_flag(int statusFlag) {
		status_flag = statusFlag;
	}

	public String getPost_date() {
		return post_date;
	}

	public void setPost_date(String postDate) {
		post_date = postDate;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	@Override
	public String toString() {
		return "message [content=" + content + ", mid=" + mid + ", mobile="
				+ mobile + ", post_date=" + post_date + ", status_flag="
				+ status_flag + ", uid=" + uid + "]";
	}
	public static ArrayList<message> getAll(){
		
		Connection conn = DBConnection.getConnection();
		Statement smt = DBConnection.getSmt(conn);
		ResultSet rs = null;
		ArrayList<message> list = new ArrayList<message>();
		
		String sql = "select * from message;";
		
		try {
			rs = smt.executeQuery(sql);
			
			while(rs.next()){
				
				message m = new message();
				m.setMid(rs.getInt("mid"));
				m.setContent(rs.getString("content"));
				m.setMobile(rs.getString("mobile"));	
				m.setStatus_flag(rs.getInt("status_flag"));	
				m.setPost_date(rs.getString("post_date"));	
				m.setUid(rs.getString("uid"));	
				list.add(m);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		DBConnection.closeAll(rs, smt, conn);
		
		return list;
	}
	
}
