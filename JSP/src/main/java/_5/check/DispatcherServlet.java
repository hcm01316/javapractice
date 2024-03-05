package _5.check;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ex1/_5.disatcher/DispatcherServlet")

public class DispatcherServlet extends HttpServlet {

	private static final long serialVersionUID = 6827013322416486375L;

	public DispatcherServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("요청방식 : " + request.getMethod());
		System.out.println("파라미터 food의 값 :" + request.getParameter("food"));
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("dispatcher.jsp");
		
		dispatcher.forward(request, response);
		
	}

}
