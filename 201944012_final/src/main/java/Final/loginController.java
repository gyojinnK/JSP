package Final;

import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginController")
public class loginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public loginController() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/jspDB";
			String user = "root";
			String passwd = "kang063606!";
			
			Connection conn = null;
			conn = DriverManager.getConnection(url, user, passwd);
			
			String uid = request.getParameter("uid");
			String upw	 = request.getParameter("upw");
			
			PreparedStatement ps = null;
			ResultSet rs = null;
			
			String sql1 = "select * from userinfo where uid = ? and upw = ?";
			ps = conn.prepareStatement(sql1);
			ps.setString(1, uid);
			ps.setString(2, upw);
			rs = ps.executeQuery();
					
			int uidChk = 0;	//플래그 태그 (태이블에 있는지, 있으면 1, 없으면 0)
			int res = 0;
			
			if(rs.next()){
				response.sendRedirect("../siteMain.jsp"); // insert, update가 처리된 행의 갯수를 반환
			}else{
				
			}
			request.setAttribute("uidChk", uidChk);
			request.setAttribute("res", res);
						
			rs.close();
			conn.close();
			ps.close();		
			
		}
		catch(Exception e) {
			e.getStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/login.jsp");
		rd.forward(request, response);
	}
}
