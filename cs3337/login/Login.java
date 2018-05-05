package cs3337.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
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
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	String getSportId = "";
	String page = "";
	
	public Login() {
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
		
		getSportId = request.getParameter("sportid");
		request.setAttribute("getSportId", getSportId);
		request.getRequestDispatcher("/WEB-INF/Homepage/loginUser/login.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String user_name = request.getParameter("username");
		String userNameLow = user_name.toLowerCase();
		String user_password = request.getParameter("password");
		getSportId = request.getParameter("sportid");
		int in = -1;

		Connection c = null;
		try {
			String url = "jdbc:mysql://cs3.calstatela.edu/cs3337stu06?serverTimezone=UTC";
			String username = "cs3337stu06";
			String password = "3G7!PR7E";

			c = DriverManager.getConnection(url, username, password);
			Statement stmt = c.createStatement();
			ResultSet rs = stmt.executeQuery("select * from sports_users");

			// retrieve data from result set row
			while (rs.next()) {

				String Admin = rs.getString("name");
				String adminLow = Admin.toLowerCase();
				String abcd = rs.getString("password");

				// check username and password, and if correct, redirect to DepartmentLibrary
				if (userNameLow.equals(adminLow) && user_password.equals(abcd)) {
					// check in the memebers servlet it "user" to get
					request.getSession().invalidate();
					request.getSession().setAttribute("user", user_name);
					in = 0;
					page = "Homepage";
					
					if(getSportId.equals("1")) {
						page = "Soccer";
					}
					else if(getSportId.equals("2")) {
						page = "Basketball";
					}
					else if(getSportId.equals("3")) {
						page = "Football";
					}
					else if(getSportId.equals("4")) {
						page = "Cricket";
					}
				}
			}
			
			if(in == -1) {
				page = "Login?sportid=" + getSportId;
				request.getSession().setAttribute("errorMessage", "Invalid username or password");
			}
			
			request.setAttribute("getSportId", getSportId);
			
			
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