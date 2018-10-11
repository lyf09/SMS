package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.user;

public class Update extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Update() {
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
		//获取表单信息	
		String userid = new String(request.getParameter("userid").getBytes("ISO-8859-1"),"utf-8");		
		String real_name = new String(request.getParameter("real_name").getBytes("ISO-8859-1"),"utf-8");
		String sex = new String(request.getParameter("sex").getBytes("ISO-8859-1"),"utf-8");
		String mobile = new String(request.getParameter("mobile").getBytes("ISO-8859-1"),"utf-8");
		String area_id = request.getParameter("area_id");
		
		HttpSession session = request.getSession();
	
		user user1 = (user)session.getAttribute("user");

		user1.setUserid(userid);
		user1.setReal_name(real_name);
		user1.setSex(sex);
		user1.setMobile(mobile);
		user1.setArea_id(Integer.parseInt(area_id));
	
	//3执行插入操作
		user.updateUser(user1);
		
		response.sendRedirect("RevisedInformation");
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
