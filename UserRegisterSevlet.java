package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Implements.Implements;
import Interface.Interface;

import com.Bean.RegisterBean;

/**
 * Servlet implementation class UserRegisterSevlet
 */
@WebServlet("/UserRegisterSevlet")
public class UserRegisterSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegisterSevlet() {
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
		// TODO Auto-generated method stu
		
		String name=request.getParameter("username");
		System.out.println("username:"+name);
		
		String phonenumber=request.getParameter("mobilenumber");
		System.out.println("phonenumber:"+phonenumber);
		
		String password=request.getParameter("password");
		System.out.println("password:"+password);
		
		String cpassword=request.getParameter("cpassword");
		System.out.println("cpassword:"+cpassword);
		
		RegisterBean rs=new RegisterBean();
		rs.setUsername(name);
		rs.setPhonenumber(phonenumber);
		rs.setPassword(cpassword);
		rs.setConpassword(cpassword);
		
		Interface in=new Implements();
		int i=in.Register(rs);
		if(i==1){
			response.sendRedirect("Home.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}
	}

}
