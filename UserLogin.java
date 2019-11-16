package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Implements.Implements;
import Interface.Interface;

import com.Bean.RegisterBean;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	 String name=request.getParameter("username");
	 System.out.println("username:"+name);
	  	HttpSession sess=request.getSession();
		sess.setAttribute( "name",name);
		System.out.println("name: "+name);
		
		String password=request.getParameter("password");
		System.out.println("pasword:"+password);
		
		RegisterBean ul=new RegisterBean();
		ul.setUsername(name);
		ul.setPassword(password);
		Interface inter=new Implements();
		boolean b=inter.login(ul);
		
		if(b==true)
		{
			response.sendRedirect("UserView.jsp");
		}
		else{
			response.sendRedirect("Errror.jsp");
		}
	}

}
