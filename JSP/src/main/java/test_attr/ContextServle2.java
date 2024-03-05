package test_attr;

import java.io.IOException;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/ex1/test_attr/send")

public class ContextServle2 extends HttpServlet {

	private static final long serialVersionUID = 6827013216486375L;

	public ContextServle2() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String jumin1 = request.getParameter("jumin1");
		String jumin2 = request.getParameter("jumin2");
		String email = request.getParameter("email");
		String domain = request.getParameter("domain");
		String gender1= request.getParameter("gender1");
		String gender2 = request.getParameter("gender2");
		String[] f = request.getParameterValues("hobby");
		String[] s = request.getParameterValues("gender");
		String post1 = request.getParameter("post1");
		String address = request.getParameter("address");
		String intro = request.getParameter("intro");

		
		ServletContext sc = request.getSession().getServletContext();
		sc.setAttribute("id", id);
		sc.setAttribute("pass", pass);
		sc.setAttribute("jumin1", jumin1);
		sc.setAttribute("jumin2", jumin2);
		sc.setAttribute("email", email);
		sc.setAttribute("domain", domain);
		for(int i = 0; i < s.length; i++) {
			
				if (s[i].equals("m"))
				{
					sc.setAttribute("gender","남자");
				}
				else if (s[i].equals("f"))
				{
					sc.setAttribute("gender","여자");
				}
			}
	
		String a = "";
		for(int i = 0; i < f.length; i++ ) {
			if (f[i] != null)
			{
				a+=f[i]+" ";
			}
		}
		sc.setAttribute("hobby",a);
		sc.setAttribute("post1",  post1 );
		sc.setAttribute("address", address);
		sc.setAttribute("intro", intro);
	
		response.sendRedirect("scope.jsp");
	}

}
