package org.tutorial.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.tutorial.beans.Athlete;
import org.tutorial.beans.EDiscipline;
import org.tutorial.beans.EMedaille;
import org.tutorial.utils.*;

/**
 * Servlet implementation class TestJstlServlet
 */
@WebServlet("/TestJstlServlet")
public class TestJstlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestJstlServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Athlete> list = DBUtils.queryAthletes();
		request.setAttribute("disciplines", EDiscipline.values());
		request.setAttribute("medailles", EMedaille.values());
		request.setAttribute("athletes", list);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/testJstl.jsp");
		
		 dispatcher.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
