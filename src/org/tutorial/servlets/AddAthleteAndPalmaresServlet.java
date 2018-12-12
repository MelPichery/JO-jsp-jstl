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
import org.tutorial.beans.Palmares;
import org.tutorial.utils.DBUtils;

/**
 * Servlet implementation class AddAthleteAndPalmaresServlet
 */
@WebServlet("/toto")
public class AddAthleteAndPalmaresServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddAthleteAndPalmaresServlet() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nomAthlete = request.getParameter("athleteName");
		String epreuve = request.getParameter("discipline");
		String medaille = request.getParameter("medaille");
					
		Athlete a = new Athlete(nomAthlete);
		
		a.addPalmares(new Palmares(EMedaille.valueOf(medaille),EDiscipline.valueOf(epreuve)));
		
		DBUtils.addAthlete(a);
		
		List<Athlete> list = DBUtils.queryAthletes();
		
		request.setAttribute("athletes", list);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/athlete/afficheListAthletes.jsp");
		
		 dispatcher.forward(request, response);
		
	}

}
