package com.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bean.UserRequest;

/**
 * Servlet implementation class AdminRestouUser
 */
@WebServlet("/AdminRestouUser")
public class AdminRestouUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminRestouUser() {
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
		
		 String username=request.getParameter("username");
		 System.out.println("username:"+username);
		 
		/*HttpSession sess=request.getSession();
		sess.setAttribute( "name",name);
		System.out.println("name: "+name);*/
		 
		 String name=request.getParameter("name");
		 		System.out.println("name:"+name);
		 
		 
		String filename=request.getParameter("filename");
		System.out.println("filename:"+filename);
		
		
		String filekey=request.getParameter("filekey");
		System.out.println(("filekey is====" +filekey));
		String status=request.getParameter("status"); 
				
		UserRequest us=new UserRequest();
		us.setName(name);
		us.setFilename(filename);
		us.setFilekey(filekey);
		us.setUsername(username);
		us.setStatus(status);
		
		
	}

}
