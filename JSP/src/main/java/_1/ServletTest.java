package _1;
import jakarta.servlet.http.*;
import java.io.*;
import java.util.Calendar;
public class ServletTest extends jakarta.servlet.http.HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, 
            HttpServletResponse response) throws IOException{
	response.setContentType("text/html");
	
	response.setCharacterEncoding("utf-8");
	
	Calendar c = Calendar.getInstance();
	int hour=c.get(Calendar.HOUR_OF_DAY);
	int minute = c.get(Calendar.MINUTE);
	int second = c.get(Calendar.SECOND);
	
	PrintWriter out = response.getWriter();
	
	out.write("<HTML><HEAD><TITLE>ServleTest</TITLE></HEAD>");
	out.write("<BODY style ='background-color:yellow'><H1>");
	out.write("현재시각은 ");
	out.write(Integer.toString(hour));
	out.write("시 ");
	out.write(Integer.toString(minute));
	out.write("분 ");
	out.write(Integer.toString(second));
	out.write("초 입니다. ");
	out.write("</H1></BODY></HTML>");
	out.close();
		
	}
}
