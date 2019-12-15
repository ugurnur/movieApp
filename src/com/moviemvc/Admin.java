package com.moviemvc;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;


@WebServlet(urlPatterns = {"/adminhome"})
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/admin.jsp");
		
		
		dispatcher.forward(request, response);		
		} catch (Exception e) {
		throw new ServletException(e);
		}

	}
	


}
