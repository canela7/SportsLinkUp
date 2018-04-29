package Sports.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddSoccerEvents
 */
@WebServlet("/AddSoccerEvents")
public class AddSoccerEvents extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	int idSeed = 1;

    public AddSoccerEvents() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.getRequestDispatcher( "/WEB-INF/Homepage/AddSoccerEvents.jsp" ).forward( request, response );
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
	
		
		Connection c = null;
        try
        {
        
        	  	String url = "jdbc:mysql://localhost/cs3220stu04";
              String username = "cs3220stu04";
              String password = "9u1ABXus";

            String sql = "insert into matches (city, title, date_post, date_event, user_name, number_players, age_requierment, event_time, description, zipcode, address) values (?,?, now(), ?, ?, ?, ?, ?, ?, ?, ?)";
         	 
       
            c = DriverManager.getConnection( url, username, password );
            PreparedStatement pstmt = c.prepareStatement(sql);
           
            pstmt.setString(1, request.getParameter("cityState"));
            pstmt.setString(2, request.getParameter("title"));
            pstmt.setString(3, request.getParameter("soccerDate"));
            pstmt.setString(4, request.getParameter("soccerName"));
            pstmt.setInt(5, Integer.parseInt(request.getParameter("numberOfSoccerPlayers")));
            pstmt.setString(6, request.getParameter("ageLimitSoccer"));
            pstmt.setString(7, request.getParameter("event_time"));
            pstmt.setString(8, request.getParameter("soccerDescription"));
            pstmt.setInt(9, Integer.parseInt(request.getParameter("zipCode")));
            pstmt.setString(10, request.getParameter("parkAddress"));
       
    
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