package _6.redirect;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ex1/_6.redirect/RedirectServlet")

public class RedirectServlet extends HttpServlet {

	private static final long serialVersionUID = 68270133216486375L;

	public RedirectServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("요청방식 : " + request.getMethod());
		System.out.println("파라미터 food의 값 :" + request.getParameter("food"));
		response.sendRedirect("redirect.jsp");
		
	}

}
