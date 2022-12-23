package week2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/gugu")
public class gugu extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public gugu() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		int num = Integer.parseInt(request.getParameter("number"));
		PrintWriter pw = response.getWriter();
		pw.println("<html><body>");
		pw.println("<h3>구구단 " + num + "단</h3>");
		for(int i=1; i<10; i++) {
			pw.println(num + " X " + i + " = " + num*i + "<br>");
		}
		pw.println("</body></html>");
		pw.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
