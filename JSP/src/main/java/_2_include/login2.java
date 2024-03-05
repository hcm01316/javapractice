package _2_include;

import java.io.IOException;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/ex2_jsp/_2.include_ex_3/loginProcess")

public class login2 extends HttpServlet {

	private static final long serialVersionUID = 6827013216486375L;

	public login2() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		HttpSession session = request.getSession();
		
		String id = request.getParameter("id");
		session.setAttribute("id", id);
		response.sendRedirect("template.jsp");
	}

}
