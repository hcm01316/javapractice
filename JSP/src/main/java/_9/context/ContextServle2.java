package _9.context;

import java.io.IOException;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/ex1/_9.context/context")

public class ContextServle2 extends HttpServlet {

	private static final long serialVersionUID = 6827013216486375L;

	public ContextServle2() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		String value = request.getParameter("food");
		request.setAttribute("food", value);
		
		HttpSession session = request.getSession();
		session.setAttribute("food", value);
		
		
		ServletContext sc = request.getSession().getServletContext();
		sc.setAttribute("food", value);
		response.sendRedirect("scope.jsp");
	}

}
