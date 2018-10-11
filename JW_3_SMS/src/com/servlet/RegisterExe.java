package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.user;

public class RegisterExe extends HttpServlet {

	private static final String Ingeter = null;

	/**
	 * Constructor of the object.
	 */
	public RegisterExe() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//取到表单内容
		String userid = new String(request.getParameter("userid").getBytes("ISO-8859-1"),"utf-8");	
		String real_name = new String(request.getParameter("real_name").getBytes("ISO-8859-1"),"utf-8");	
		String password = new String(request.getParameter("password").getBytes("ISO-8859-1"),"utf-8");
		String question = new String(request.getParameter("question").getBytes("ISO-8859-1"),"utf-8");
		String answer = new String(request.getParameter("answer").getBytes("ISO-8859-1"),"utf-8");	
		String sex = new String(request.getParameter("sex").getBytes("ISO-8859-1"),"utf-8");
		String mobile = new String(request.getParameter("mobile").getBytes("ISO-8859-1"),"utf-8");
		String email = new String(request.getParameter("email").getBytes("ISO-8859-1"),"utf-8");
		String area_id = request.getParameter("area_id");
	
		
		
//判断用户ID是否已存在
		if(user.testUserid(userid)==true){
			System.out.println("userid 被占用");
			response.sendRedirect("servlet/Register");
		}
		else{
			System.out.println("userid可用");
			user u = new user();
			u.setUserid(userid);
			u.setReal_name(real_name);
			u.setPassword(password);
			u.setQuestion(question);
			u.setAnswer(answer);
			u.setSex(sex);
			u.setMobile(mobile);
			u.setEmail(email);
			u.setArea_id(Integer.parseInt(area_id));
		
		//3执行插入操作
			user.addUser(u);
		//4返回主页
		response.sendRedirect("../login.jsp");
		}
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
