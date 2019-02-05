package com.dob;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class SearchDoj extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {	
		int id;
		String currentDate = "",fname="",lname="";
			try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "dsquad123",
				"dsquad123");
			Statement stmt = con.createStatement();
	
			id = Integer.parseInt(req.getParameter("id"));
			 ResultSet  rset = stmt.executeQuery("select * from employeofdsquad where id='"+id +"'");
	
			while(rset.next()) {
				currentDate = (String) rset.getObject("dateofjoin");
				fname = (String) rset.getObject("firstname");
				lname = (String) rset.getObject("lastname");
			}	
			
			
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (NumberFormatException nfe) {
			      nfe.printStackTrace();
			     
			    }

			req.setAttribute("fname",fname);
			req.setAttribute("lname",lname);
			req.setAttribute("date",currentDate);
			  req.getRequestDispatcher("printvalue.jsp").forward(req, resp);
			}
}
