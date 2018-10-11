package com.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Connection;
import java.util.ArrayList;

import com.db.DBConnection;

public class area {

	private int id;
	private String title;
	
	public area(){
		super();
	}
	public area(String title, int id){
		super();
		this.id = id;
		this.title = title;
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Override
	public String toString() {
		return "area [id=" + id + ", title=" + title + "]";
	}
	
public static ArrayList<area> getAll(){
		
		Connection conn = DBConnection.getConnection();
		Statement smt = DBConnection.getSmt(conn);
		ResultSet rs = null;
		ArrayList<area> list = new ArrayList<area>();
		
		String sql = "select * from area;";
		
		try {
			rs = smt.executeQuery(sql);
			
			while(rs.next()){
				
				area a = new area();
				a.setId(rs.getInt("id"));
				a.setTitle(rs.getString("title"));	
				list.add(a);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		DBConnection.closeAll(rs, smt, conn);
		
		return list;
	}



	
	
}
