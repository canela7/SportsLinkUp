package cs3337;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddBasketballEvent
 */
@WebServlet("/addFootballEvent")
public class AddFootballEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	int idSeed = 1;

    public AddFootballEvent() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.getRequestDispatcher( "/WEB-INF/Homepage/addEvents/addFootballEvent.jsp" ).forward( request, response );
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		
		Connection c = null;
        try
        {
        	String url = "jdbc:mysql://cs3.calstatela.edu/cs3337stu06?serverTimezone=UTC";
            String username = "cs3337stu06";
            String password = "3G7!PR7E";

            String sql = "insert into football_Matches (city, title, date_post, date_event, user_name, number_players, age_requirement, event_time, description, address) values (?,?, now(), ?, ?, ?, ?, ?, ?, ?)";
         	 
       
            c = DriverManager.getConnection( url, username, password );
            PreparedStatement pstmt = c.prepareStatement(sql);
           
            pstmt.setString(1, request.getParameter("city"));
            pstmt.setString(2, request.getParameter("title"));
            pstmt.setString(3, request.getParameter("date"));
            pstmt.setString(4, request.getParameter("name"));
            pstmt.setInt(5, Integer.parseInt(request.getParameter("players")));
            pstmt.setInt(6, Integer.parseInt(request.getParameter("ageLimit")));
            pstmt.setString(7, request.getParameter("time"));
            pstmt.setString(8, request.getParameter("description"));
            
            //get the entire address
            String fullAddress = request.getParameter("address") + ", " + request.getParameter("city") + ", " + request.getParameter("zip");
            
            pstmt.setString(9, fullAddress);
       
    
            pstmt.executeUpdate();
            
            
            
            c.close();
        }
        catch( SQLException e )
        {
            throw new ServletException( e );
        }
        finally
        {
            try
            {
                if( c != null ) c.close();
            }
            catch( SQLException e )
            {
                throw new ServletException( e );
            }
        }

		response.sendRedirect("Football");
		
		
	}

}
