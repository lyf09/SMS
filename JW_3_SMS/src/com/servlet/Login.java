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

public class Login extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Login() {
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
		
		String userid=request.getParameter("userid");
		String password=request.getParameter("password");
		
		user u = user.getUser(userid, password);
      
		HttpSession session = request.getSession();
		
      //��ѯuser���������
		if(u != null)
		{
			System.out.println(u);
			//�����ѯ�н�������¼�ɹ���1����ѯ������浽session���ı���վ�ĵ�¼״̬����ת�������ҳ��			
			session.setAttribute("user", u);
			
			response.sendRedirect("../index.jsp");
		}
		else
		{
			System.out.println("��¼ʧ��");
			//�����ѯ�޽�������¼ʧ�ܣ�1������һ��������Ϣ�����ص�¼��ҳ
			session.setAttribute("error_msg", "���ı�Ż��������������!!");
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
