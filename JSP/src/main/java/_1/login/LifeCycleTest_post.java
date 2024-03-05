package _1.login;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/ex1/_1.login/LifeCycleTest3"})
public class LifeCycleTest_post extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest request, 
						HttpServletResponse response) throws IOException{
	response.setContentType("text/html;charset=utf-8");
		
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	PrintWriter out = response.getWriter();
	
	out.print("웹 애플리케이션 경로 정보: "+ request.getContextPath());

	out.println("<br>" + "아이디="+id + "<br>");
	out.println("비밀번호="+passwd + "<br>");
	out.close();
}
}
