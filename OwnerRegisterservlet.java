package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Implements.Implements;
import Interface.Interface;

import com.Bean.OwnerRegister;

/**
 * Servlet implementation class OwnerRegister
 */
@WebServlet("/OwnerRegisterservlet")
public class OwnerRegisterservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OwnerRegisterservlet() {
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
		System.out.println("name is"+name);
		
		String mobilenumber=request.getParameter("mobilenumber");
		System.out.println("mobilenumber is:" +mobilenumber);
		
		String password=request.getParameter("password");
		System.out.println("password is:" +password);
		
		String conpassword=request.getParameter("cpassword");
		System.out.println("password is:" +conpassword);
		
		OwnerRegister  or=new OwnerRegister();
		or.setUsername(name);
		or.setPhonenumber(mobilenumber);
		or.setPassword(password);
		or.setConfirmpassword(conpassword);
		
		Interface Inter=new Implements();
		int b=Inter.OwnerRegister(or);
		
		if(b==1){
			response.sendRedirect("Home.jsp");
		}
		else{
			response.sendRedirect("error.jsp");
		}
	}

}
