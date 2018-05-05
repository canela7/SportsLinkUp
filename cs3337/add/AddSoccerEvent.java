package cs3337.add;

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
 * Servlet implementation class AddEvents
 */
@WebServlet("/addSoccerEvent")
public class AddSoccerEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	int idSeed = 1;

    public AddSoccerEvent() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.getRequestDispatcher( "/WEB-INF/Homepage/addEvents/addSoccerEvent.jsp" ).forward( request, response );
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection c = null;
        try
        {
        	String url = "jdbc:mysql://cs3.calstatela.edu/cs3337stu06?serverTimezone=UTC";
            String username = "cs3337stu06";
            String password = "3G7!PR7E";

            String sql = "insert into matches (city, title, date_post, date_event, user_name, number_players, age_requirement, event_time, description, address) values (?,?, now(), ?, ?, ?, ?, ?, ?, ?)";
         	 
       
            c = DriverManager.getConnection( url, username, password );
            PreparedStatement pstmt = c.prepareStatement(sql);
           
            pstmt.setString(1, request.getParameter("city"));
            pstmt.setString(2, request.getParameter("title"));
            pstmt.setString(3, request.getParameter("date"));     
            pstmt.setString(4, request.getParameter("name"));
            pstmt.setString(5, request.getParameter("players"));
            pstmt.setString(6, request.getParameter("ageLimit"));
            
            String time1 = request.getParameter("time1");
            String time2 = request.getParameter("time2");
            String theTime = time1 + " - " + time2;
            
            pstmt.setString(7, theTime);
            pstmt.setString(8, request.getParameter("description"));
            
            //get the entire address
            String fullAddress = request.getParameter("address") + request.getParameter("city") + request.getParameter("zip");
            if(fullAddress != "") {
            	fullAddress = request.getParameter("address") + ", " + request.getParameter("city") + ", " + request.getParameter("zip");
            }
            
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

		response.sendRedirect("Soccer");
		
		
	}

}
