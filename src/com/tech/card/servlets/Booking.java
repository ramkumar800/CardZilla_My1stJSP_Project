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
import com.tech.card.entities.User_register;
import com.tech.card.helper.ConnectionProvider;



/**
 * Servlet implementation class Query
 */
@WebServlet("/Booking")

@MultipartConfig
public class Booking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Booking() {
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
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String cardtype=request.getParameter("cardtype");
		
		User_register user=new User_register(name,email,phone,cardtype);
		//creating userdao object
		UserDao dao=new UserDao(ConnectionProvider.getConnection());
		if(dao.saveuser_register(user)) {
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
