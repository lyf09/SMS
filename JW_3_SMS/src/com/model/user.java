package com.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.db.DBConnection;


/*
 * 封装 jw_1_表的
 * 
 * 1、封装表中的所有字段
 * 2、封装表中所有相关的增删改查操作
 * 
 */
public class user {
	private String userid;
	private String real_name;
	private String password;
	private String question;
	private String answer;
	private String sex;
	private String mobile;
	private String email;
	private String last_login_date;
	private String post_date;
	private int area_id;
	private int areaplus_id;
	
	public user(){
		super();
	}

	public user(String userid, String real_name, String password,
			String question, String answer, String sex, String mobile,
			String email, String last_login_date, String post_date,
			int area_id, int areaplus_id) {
		super();
		this.userid = userid;
		this.real_name = real_name;
		this.password = password;
		this.question = question;
		this.answer = answer;
		this.sex = sex;
		this.mobile = mobile;
		this.email = email;
		this.last_login_date = last_login_date;
		this.post_date = post_date;
		this.area_id = area_id;
		this.areaplus_id = areaplus_id;
	}

	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getReal_name() {
		return real_name;
	}
	public void setReal_name(String realName) {
		real_name = realName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLast_login_date() {
		return last_login_date;
	}
	public void setLast_login_date(String lastLoginDate) {
		last_login_date = lastLoginDate;
	}
	public String getPost_date() {
		return post_date;
	}
	public void setPost_date(String postDate) {
		post_date = postDate;
	}
	public int getArea_id() {
		return area_id;
	}
	public void setArea_id(int areaId) {
		area_id = areaId;
	}
	public int getAreaplus_id() {
		return areaplus_id;
	}
	public void setAreaplus_id(int areaplusId) {
		areaplus_id = areaplusId;
	}
	
	@Override
	public String toString() {
		return "users [answer=" + answer + ", area_id=" + area_id
				+ ", areaplus_id=" + areaplus_id + ", email=" + email
				+ ", last_login_date=" + last_login_date + ", mobile=" + mobile
				+ ", password=" + password + ", post_date=" + post_date
				+ ", question=" + question + ", real_name=" + real_name
				+ ", sex=" + sex + ", userid=" + userid + "]";
	}
	
//	查询所有
public static ArrayList<user> getAll(){
		
		Connection conn = DBConnection.getConnection();
		Statement smt = DBConnection.getSmt(conn);
		ResultSet rs = null;
		ArrayList<user> list = new ArrayList<user>();
		
		String sql = "select * from users;";
		try {
			rs = smt.executeQuery(sql);
			
			while(rs.next()){
				
				user u = new user();
				u.setUserid(rs.getString("userid"));
				u.setReal_name(rs.getString("real_name"));
				u.setPassword(rs.getString("password"));
				u.setQuestion(rs.getString("question"));
				u.setAnswer(rs.getString("answer"));
				u.setSex(rs.getString("sex"));
				u.setMobile(rs.getString("mobile"));
				u.setEmail(rs.getString("email"));
				u.setLast_login_date(rs.getString("last_login_date"));
				u.setPost_date(rs.getString("post_date"));
				u.setArea_id(rs.getInt("area_id"));
				u.setAreaplus_id(rs.getInt("areaplus_id"));	
			}		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		DBConnection.closeAll(rs, smt, conn);
		return list;
	}

//判断一个用户名是否存在的方法
public static boolean testUserid(String userid){
	
	Connection conn = DBConnection.getConnection();
	Statement smt = DBConnection.getSmt(conn);
	ResultSet rs = null;
	
	String sql = "select * from users where userid='"+userid+"';";
	
	try {
		rs = smt.executeQuery(sql);
		
		return rs.next();
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	DBConnection.closeAll(rs, smt, conn);
	return false;
}	
	
//实现一个插入新用户的方法
	public static boolean addUser( user u  ){
		Connection conn = DBConnection.getConnection();
		Statement smt = DBConnection.getSmt(conn);
		
		String sql = "insert into users(userid, real_name, password, question, answer, sex, mobile, email, post_date, area_id) " +
				"values('"+u.getUserid()+"', '"+u.getReal_name()+"', '"+u.getPassword()+"', " +
				"'"+u.getQuestion()+"', '"+u.getAnswer()+"', '"+u.getSex()+"', " +
				"'"+u.getMobile()+"', '"+u.getEmail()+"', sysdate(), "+u.getArea_id()+" );";
		
		System.out.println(sql);
		
		try {
			return smt.execute(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		DBConnection.closeAll(smt, conn);
		
		return false;
		
	}

	//通过用户ID和密码查询获得一个user对象的方法
	//登录：根据用户名和密码查询获得一个User对象的方法
	public static user getUser(String userid, String password){
		Connection conn = DBConnection.getConnection();
		Statement smt = DBConnection.getSmt(conn);
		ResultSet rs = null;
		user u = null;
		
		String sql = "select * from users where userid='"+userid+"' and password='"+password+"';";
		
		try {
			rs = smt.executeQuery(sql);
			
			if(rs.next())
			{
				//查到一条结果，说明登录操作时成功
				u = new user();
				u.setUserid(rs.getString("userid"));
				u.setReal_name(rs.getString("real_name"));
				u.setQuestion(rs.getString("question"));
				u.setPassword(rs.getString("password"));
				u.setAnswer(rs.getString("answer"));
				u.setSex(rs.getString("sex"));
				u.setMobile(rs.getString("mobile"));
				u.setEmail(rs.getString("email"));
				u.setLast_login_date(rs.getString("last_login_date"));
				u.setPost_date(rs.getString("post_date"));
				u.setArea_id(rs.getInt("area_id"));
				u.setAreaplus_id(rs.getInt("areaplus_id"));
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		DBConnection.closeAll(rs, smt, conn);
		
		return u;
	}
		

	public static boolean updateUser(user u){
		

		Connection conn = DBConnection.getConnection();
		Statement smt = DBConnection.getSmt(conn);
		
		String sql = "update users set userid='"+u.getUserid()+"', real_name='"+u.getReal_name()+"'," +
				"sex='"+u.getSex()+"', mobile='"+u.getMobile()+"',post_date=sysdate(),area_id='"+u.getArea_id()+"' " +
						"where userid='"+u.getUserid()+"';";
		
		System.out.println(sql);
		try {
			smt.execute(sql);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//关闭
		DBConnection.closeAll(smt, conn);
		return false;
		
	}
	

	
	
	
	
	

}
