package cs3337.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Register() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public void init(ServletConfig config) throws ServletException {
		super.init(config);

		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			throw new ServletException(e);
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("/WEB-INF/Homepage/loginUser/register.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String user_name = request.getParameter("username");
		String userNameLow = user_name.toLowerCase();
		String user_password = request.getParameter("password");
		boolean notTaken = true;
		String page = "";

		Connection c = null;
		try {
			String url = "jdbc:mysql://cs3.calstatela.edu/cs3337stu06?serverTimezone=UTC";
			String username = "cs3337stu06";
			String password = "3G7!PR7E";

			String sql = "insert into sports_users (name, password) value (?, ?)";
			c = DriverManager.getConnection(url, username, password);
			PreparedStatement pstmt = c.prepareStatement(sql);
			
			Statement stmt = c.createStatement();
			ResultSet rs = stmt.executeQuery("select * from sports_users");
			
			while (rs.next()) {
				String Admin = rs.getString("name");
				String adminLow = Admin.toLowerCase();
				
				if (userNameLow.equals(adminLow)) {
					notTaken = false;
					page = "Register";
				}
			}
			
			if(notTaken) {
				request.getSession().invalidate();
				request.getSession().setAttribute("user", user_name);
				page = "Homepage";
				pstmt.setString(1, user_name);
	            pstmt.setString(2, user_password);
	            
	            pstmt.executeUpdate();
	            c.close();
			}
			else {
				request.getSession().setAttribute("alreadyExist", "This username is already taken");
			}

			c.close();
		} catch (SQLException e) {
			throw new ServletException(e);
		} finally {
			try {
				if (c != null)
					c.close();
			} catch (SQLException e) {
				throw new ServletException(e);
			}
		}
		
		response.sendRedirect(page);
		
	}

}