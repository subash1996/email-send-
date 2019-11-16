package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Implements.Implements;
import Interface.Interface;

import com.Bean.UserRequest;

/**
 * Servlet implementation class UserRequestServlet
 */
@WebServlet("/UserRequestServlet")
public class UserRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name=request.getParameter("name");
		System.out.println("name:"+name);
		
		String filename =request.getParameter("filename");
		System.out.println("filename:"+filename);
		
		String filetype=request.getParameter("filetype");
		System.out.println("filetype:"+filetype);
		
		
		String filesize=request.getParameter("filesize");
		System.out.println("filesizee:"+filesize);
		
		String filekey=request.getParameter("filekey");
		System.out.println("filekey:"+filekey);
		
		String username=request.getParameter("username");
		System.out.println("username:"+username);
		
		String status=request.getParameter("status");
		
		
		
		UserRequest us=new UserRequest();
		us.setName(name);
		us.setFilename(filename);
		us.setFiletype(filetype);
		us.setFilesize(filesize);
		us.setUsername(username);
		us.setStatus(status);
		us.setFilekey(filekey);
		
		Interface in=new Implements();
		int i=in.req(us);
		if(i==1){
			response.sendRedirect("FilesendScuessfully.jsp");
		}
		else{
			response.sendRedirect("Error.jsp");
		}
	}

}
