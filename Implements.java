package Implements;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Dbconnection.Dbconn;
import Interface.Interface;

import com.Bean.AdminResponse;
import com.Bean.OwnerRegister;
import com.Bean.RegisterBean;
import com.Bean.UserRequest;


public class Implements implements Interface {
	Connection con;
	@Override
	public int Register(RegisterBean rb) {
		// TODO Auto-generated method stub
		
		int result=0;
		 
		 {
			 
			 try {
				 con=Dbconn.create();
				PreparedStatement ps=con.prepareStatement("INSERT INTO publiccloud.register VALUES(id,?,?,?,?)");
				 ps.setString(1,rb.getUsername());
				 ps.setString(2,rb.getPhonenumber() );
				 ps.setString(3,rb.getPassword());
				 ps.setString(4,rb.getConpassword());
				result=ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 
		 }
		 return result;
	}

	@Override
	public boolean login(RegisterBean lb) {
		// TODO Auto-generated method stub
		boolean result=false;
		 
		 {
			 
			 try {
				 con=Dbconn.create();
				PreparedStatement ps=con.prepareStatement("SELECT * FROM publiccloud.register r where username=? and password=?");
				ps.setString(1,lb.getUsername()); 
				ps.setString(2,lb.getPassword());
				ResultSet rs=ps.executeQuery();
				result=rs.next();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 
		 }
		
		return result;
	}

	@Override
	public int OwnerRegister(OwnerRegister or) {
		// TODO Auto-generated method stub
		  int result=0;
		{
			try{
				con=Dbconn.create();
				PreparedStatement ps=con.prepareStatement("INSERT INTO publiccloud.ownerregister VALUES(id,?,?,?,?)");
				ps.setString(1,or.getUsername());
				ps.setString(2,or.getPhonenumber());
				ps.setString(3,or.getPassword());
				ps.setString(4,or.getConfirmpassword());
				result=ps.executeUpdate();
			}catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		return result;
	}

	@Override
	public boolean OwnerLogin(OwnerRegister lr) {
		// TODO Auto-generated method stub
		boolean result=false;
		{
			try{
				con=Dbconn.create();
				PreparedStatement ps=con.prepareStatement("SELECT * FROM publiccloud.ownerregister where username=? and password=?");
				ps.setString(1,lr.getUsername());
				ps.setString(2,lr.getPassword());
				ResultSet rs=ps.executeQuery();
				result=rs.next();
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		}
		
		return result;
	}

	@Override
	public int FileuploadBean(com.Bean.FileuploadBean fu) {
		// TODO Auto-generated method stub
		int result=0;
		{
		 try{
			 con=Dbconn.create();
			 PreparedStatement ps=con.prepareStatement("INSERT INTO publiccloud.fileupload VALUES(Id,?,?,?,?,?,?,?,?,?)");
		
			 ps.setString(1,fu.getName());
			 ps.setString(2,fu.getDescription());
			 ps.setString(3,fu.getFilename());
			 ps.setString(4,fu.getFilekey());
			 ps.setString(5, fu.getFiletype());
			 ps.setString(6,fu.getFilesize());
			 ps.setString(7,fu.getDecryptionfile());
			 ps.setString(8,fu.getEncryptionfile());
			 ps.setString(9,fu.getOwnername());
			 result=ps.executeUpdate();
		 }catch(Exception ex){
			 ex.printStackTrace();
		 }
		}
		
		
		return result;
		
	}

	@Override
	public int req(UserRequest ur) {
		// TODO Auto-generated method stub
		int result=0;
		{
			try{
				con=Dbconn.create();
				PreparedStatement ps=con.prepareStatement("INSERT INTO publiccloud.userrequest VALUES(sno,?,?,?,?,?,?,?)");
				ps.setString(1,ur.getName());
				ps.setString(2,ur.getFilename());
				ps.setString(3, ur.getFiletype());
				ps.setString(4, ur.getFilesize());
				ps.setString(5, ur.getUsername());
				ps.setString(6,"Deactivate");
				ps.setString(7,ur.getFilekey());
				result  =ps.executeUpdate();
			}catch(Exception ex)
			{
				ex.printStackTrace();
			}
			
		}
		return result;
	}

	@Override
	public boolean res(UserRequest ar) {
		// TODO Auto-generated method stub
		boolean result=false;
	 {
			 
			 try {
				 con=Dbconn.create();
 				PreparedStatement ps=con.prepareStatement("select name,filename,filekey,username,status from publiccloud.userrequest u where u.name=? ");
 					ps.setString(1,ar.getName());
 					ps.setString(2,ar.getFilename());
 					ps.setString(3,ar.getFilekey());
 					ps.setString(4,ar.getUsername());
 					ps.setString(5,ar.getStatus());
 					ResultSet rs=ps.executeQuery();
 					result=rs.next();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 
		 }
		
		return result;
		 
		
		 
	}
	 
	
}
