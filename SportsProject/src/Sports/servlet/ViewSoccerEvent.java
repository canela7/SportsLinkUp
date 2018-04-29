package Sports.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sport.model.SportEntry;

/**
 * Servlet implementation class ViewSoccerEvent
 */
@WebServlet("/ViewSoccerEvent")
public class ViewSoccerEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewSoccerEvent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get the entry id
		int id = Integer.parseInt(request.getParameter("id"));
			
		
		
		Connection c = null;
        try
        {

        	      String url = "jdbc:mysql://localhost/cs3220stu04";
              String username = "cs3220stu04";
              String password = "9u1ABXus";

             //sql to get the specific entry
            String sql = "select * from matches where id=" + (id);
             
            c = DriverManager.getConnection( url, username, password );
            Statement stmt = c.createStatement();
            
           // PreparedStatement pstmt = c.prepareStatement(sql);
            //set the paramter inside the sql ? 
            //pstmt.setInt(1, id);
            
           //execute statement
            ResultSet rs = stmt.executeQuery(sql);
            
            //retrieve data from result set row
            if(rs.next()) {
            	 	
            	 	String city = rs.getString("city");
                 String title = rs.getString("title");
            		Date date_post = rs.getDate("date_post"); 
            	 	String date_event = rs.getString("date_event");
            	 	String user_name = rs.getString("user_name");
            	 	Integer number_players = rs.getInt("number_players");
            	 	Integer age_requierment = rs.getInt("age_requierment");
            	 	String event_time = rs.getString("event_time");
            	 	String description = rs.getString("description");
            	 	String address = rs.getString("address");
            	 	Integer zipcode = rs.getInt("zipcode");
            		
            	
            	 	SportEntry entry = new SportEntry(id, city, title, date_post, date_event, user_name, number_players, age_requierment, event_time, description, zipcode,address);
            		request.setAttribute("entry", entry);
            }
            
    
            
            
            
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
		
		
		
	
		request.getRequestDispatcher( "/WEB-INF/Homepage/ViewSoccerEvent.jsp" ).forward( request, response );

		
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("Soccer");
	}

}
