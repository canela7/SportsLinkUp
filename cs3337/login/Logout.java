package cs3337.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Logout
 */
@WebServlet("/Logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Logout() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().invalidate();
		String getSportId = request.getParameter("sportid");
		String page = "";
		
		if(getSportId.equals("1")) {
			page = "Soccer";
			response.sendRedirect(page);
		}
		else if(getSportId.equals("2")) {
			page = "Basketball";
			response.sendRedirect(page);
		}
		else if(getSportId.equals("3")) {
			page = "Football";
			response.sendRedirect(page);
		}
		else if(getSportId.equals("4")) {
			page = "Cricket";
			response.sendRedirect(page);
		}
		else if(getSportId.equals("0")) {
			response.sendRedirect("Homepage");
		}
		else {
			response.sendRedirect("Homepage");
		}
	}



}