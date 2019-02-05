package com.dob;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.xml.internal.ws.util.StringUtils;

@SuppressWarnings("serial")
public class InsertValueToDB extends HttpServlet {

	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		 int id = 0;
		String firstname="",lastname="",dateofjoin="";
		String fromID=" ";

			try {
				
				Class.forName("oracle.jdbc.driver.OracleDriver");
				 Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "dsquad123",
				"dsquad123");
				 Statement stmt = con.createStatement();
				 fromID = req.getParameter("id");
				
				     
				   
				 if (fromID == null){
					 System.out.println("Entered ID value is empty. Please provide the value of that field");
				 } else {
					id = Integer.parseInt(fromID);
				 }
				 
				 firstname = req.getParameter("firstname");
				 lastname = req.getParameter("lastname");
				dateofjoin = req.getParameter("dateofjoin");
				
				
				
					
		System.out.println("insert into employeofdsquad(id,firstname,lastname,age,address,phonenum,email) VALUES('" + id + "','" + firstname + "','" + lastname + "','" +dateofjoin+"')");
		stmt.executeQuery("insert into employeofdsquad(id,firstname,lastname,dateofjoin) VALUES('" + id + "','" + firstname + "','" + lastname + "','" + dateofjoin+ "')");
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (NumberFormatException nfe) {
			nfe.printStackTrace();
		
		}
			  resp.sendRedirect("success.jsp" );

			}
	
	}

