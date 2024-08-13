package com.tech.card.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tech.card.dao.UserDao;
import com.tech.card.entities.User_review;
import com.tech.card.helper.ConnectionProvider;

/**
 * Servlet implementation class Query
 */
@WebServlet("/Query")

@MultipartConfig
public class Query extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Query() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		try {
			PrintWriter out=response.getWriter();
		//fetching all form data
			String email=request.getParameter("email");
			
		
		String name=request.getParameter("name");
		
		String message=request.getParameter("message");
		
		User_review user=new User_review(name,email,message);
		//creating userdao object
		UserDao dao=new UserDao(ConnectionProvider.getConnection());
		if(dao.saveuser_review(user)) {
			out.println("done");
		}  
		else {
			out.println("error");
		}
		
		}
	catch(Exception e) {
		e.printStackTrace();
	}
	}

	

}
