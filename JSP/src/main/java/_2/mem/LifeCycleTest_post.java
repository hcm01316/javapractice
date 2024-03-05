package _2.mem;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/ex1/_2.mem/memReg"})
public class LifeCycleTest_post extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, 
						HttpServletResponse response) throws IOException{
	response.setContentType("text/html;charset=utf-8");
		
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	String tel = request.getParameter("tel");
	String hobby= request.getParameter("hobby");
	PrintWriter out = response.getWriter();
	out.print("<div>");
	out.println("<table style = 'margin: 0 auto; width: 500px; height: 300px; border-collapse: collapse;'>");
	out.println("<tr style = 'border-bottom: 1px solid black;'><th>회원명</th><td>"+name+"</td></tr>");
	out.println("<tr style = 'border-bottom: 1px solid black;'><th>주소</th><td>"+addr+"</td></tr>");
	out.println("<tr style = 'border-bottom: 1px solid black;'><th>전화번호</th><td>"+tel+"</td></tr>");
	out.println("<tr style = 'border-bottom: 1px solid black;'><th>취미</th><td>"+hobby+"</td></tr>");
	out.println("</table>");
	out.print("</div>");
	out.close();
}
}
