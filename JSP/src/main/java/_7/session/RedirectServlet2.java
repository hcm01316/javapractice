package _7.session;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/ex1/_7.session/SessionServlet")

public class RedirectServlet2 extends HttpServlet {

	private static final long serialVersionUID = 68270133216486375L;

	public RedirectServlet2() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String value = request.getParameter("food");
		request.setAttribute("food", value);
		session.setAttribute("food", value);
		
		response.sendRedirect("redirect.jsp");
	}

}
