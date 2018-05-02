package cs3337.view;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs3337.data.EventData;

/**
 * Servlet implementation class ViewSoccerEvent
 */
@WebServlet("/viewBasketballEvent")
public class ViewBasketballEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ViewBasketballEvent() {
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

		// get the entry id
		int id = Integer.parseInt(request.getParameter("id"));

		Connection c = null;
		try {

			String url = "jdbc:mysql://cs3.calstatela.edu/cs3337stu06?serverTimezone=UTC";
			String username = "cs3337stu06";
			String password = "3G7!PR7E";

			// sql to get the specific entry
			String sql = "select * from basketball_Matches where id=" + (id);

			c = DriverManager.getConnection(url, username, password);
			Statement stmt = c.createStatement();

			// PreparedStatement pstmt = c.prepareStatement(sql);
			// set the paramter inside the sql ?
			// pstmt.setInt(1, id);

			// execute statement
			ResultSet rs = stmt.executeQuery(sql);

			// retrieve data from result set row
			if (rs.next()) {

				String city = rs.getString("city");
				String title = rs.getString("title");
				Date date_post = rs.getDate("date_post");
				String date_event = rs.getString("date_event");
				String user_name = rs.getString("user_name");
				String number_players = rs.getString("number_players");
				String age_requirement = rs.getString("age_requirement");
				String event_time = rs.getString("event_time");
				String description = rs.getString("description");
				String address = rs.getString("address");

				EventData entry = new EventData(id, city, title, date_post, date_event, user_name, number_players,
						age_requirement, event_time, description, address);
				request.setAttribute("entry", entry);
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

		request.getRequestDispatcher("/WEB-INF/Homepage/viewEvents/viewBasketballEvent.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("Basketball");
	}

}
