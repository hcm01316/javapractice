package _4.check;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/_4.check/choiceFruit")
public class ChoiceFruitServlet extends HttpServlet{
	   private static final long serialVersionUID = -5415471442653253176L;

	   public ChoiceFruitServlet() {
	      super();
	   }
	  
	   protected void doGet(HttpServletRequest request, HttpServletResponse response)
	      throws ServletException, IOException {
	      response.setContentType("text/html;charset=utf-8");
	      PrintWriter out = response.getWriter();
	      /*
	       1. getParameterValues()
	              예) fruit=apple.png&fruit=grape.png&fruit=strawberry.png&fruit=water-melon.png
	              하나의 파라미터 이름(fruit)으로 값이 여러개 전송되어 올 경우에 사용하는 메서드
	              체크박스의 이름은 공통적으로 fruit로 지정되어 있으므로 각 체크 박스의 값으로
	              과일 이미지 파일명을 지정하여 파라미터 값으로 과일 이미지 이름이 전송되도록 하고 있습니다.
	       2. getParamete() : 하나의 파라미터로 하나의 값만 오는 경우 사용하는 메서드
	                하나의 파라미터 이름(fruit)으로 값이 여러개 전송되어 올 경우에 이 메서드를 사용하면
	                처음에 선택한 값만 알 수 있습니다.
	             예) fruit=apple.png&fruit=grape.png&fruit=strawberry.png&fruit=water-melon.png
	                fruit=apple.pngd에서 값을 가져옵니다.
	        */
	      System.out.println("request.getParameter(\"fruit\") => " + request.getParameter("fruit"));
	      String[] f = request.getParameterValues("fruit");
	     
	      out.println("<style>");;
	      out.println("table {margin: 0 auto; top:30%; position:relative; width: auto; height: auto; border-style: double; background-color:yellow;}");
	      out.println("body {background-color:black}");
	      out.println("");
	      out.println("td{background-color:yellow; border : 1px double black; text-align: center;}");
	      out.println("td{color :red; width:200px}");
	      out.println("</style>");
	      out.println("<body>");
	      out.println("<table>");
	      out.println("<tr>");
	      for(String fruit : f) {
		       out.print("<td>"+fruit+"</td>");
		      }
	      out.println("</tr>");
	      out.println("<tr>");
	      for(String fruit : f) {
		       out.print("<td><img width=128 height=128 src='../image/"+fruit+"'></td>");
		      }
	      out.println("</tr>");
	      out.println("</table>");
	      out.println("</body>");
	      out.close();
	}

}
