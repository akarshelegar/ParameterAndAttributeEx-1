package com.techpalle.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.techpalle.model.Developer;

@WebServlet("/display")
public class DeveloperServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		//read the data
		String u = request.getParameter("tbUsername");
		String e = request.getParameter("tbEmail");
		System.out.println(u);
		System.out.println(e);
		
		//create object for developer class
		Developer d = new Developer("Akarsh", "akarsh@gmail.com", "Banglore");
		
		//redirect to display.jsp page with UN, Email and Developer object
		request.setAttribute("dev", d);
		
		RequestDispatcher rd = request.getRequestDispatcher("display.jsp");
		rd.forward(request, response);
		
	}


}
