package cs3337;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/editBasketballEvent")
public class EditBasketballEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public EditBasketballEvent() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		
		//get the entry id
		int id = Integer.parseInt(request.getParameter("id"));
	
		
		Connection c = null;
        try
        {

   	     String url = "jdbc:mysql://cs3.calstatela.edu/cs3337stu06?serverTimezone=UTC";
   	     String username = "cs3337stu06";
   	     String password = "3G7!PR7E";

             //sql to get the specific entry
            String sql = "select * from basketball_Matches where id=" + (id);
             
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
            	 	Integer age_requierment = rs.getInt("age_requirement");
            	 	String event_time = rs.getString("event_time");
            	 	String description = rs.getString("description");
            	 	String address = rs.getString("address");
            		
            		//DepartmentLibraryEntry(Integer id, String type, String name, String additionInfo, String available)
            	 	EventData entry = new EventData(id, city, title, date_post, date_event, user_name, number_players, age_requierment, event_time, description, address);
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
		
		
		
		
		
		//request.setAttribute("entry", entry);
		//request.setAttribute("user", userName);
		request.getRequestDispatcher( "/WEB-INF/Homepage/editEvents/editBasketballEvent.jsp" ).forward( request, response );


			
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			

		
	
		 String city = request.getParameter("city"); 
		 
		 String title = request.getParameter("title"); 

		 String date_post = request.getParameter("date_post");
		 
		 String user_name = request.getParameter("name");
		 
		 Integer number_players = Integer.parseInt(request.getParameter("players")); 
		 Integer age_requirement = Integer.parseInt(request.getParameter("ageLimit"));
		 
		 String date_event = request.getParameter("date_event");
		 
		 String event_time = request.getParameter("event_time");
		 
		 String description = request.getParameter("description");
		 
		 String address = request.getParameter("address");
		 
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		//
		
		Connection c = null;
        try
        {
        	String url = "jdbc:mysql://cs3.calstatela.edu/cs3337stu06?serverTimezone=UTC";
            String username = "cs3337stu06";
            String password = "3G7!PR7E";

             //sql to update after the edit save button
            String sql = "update basketball_Matches set user_name=?, city=?, title=?, date_post=?, number_players=?, age_requirement=?, date_event=?, event_time=?, description=?, address=? where id=?";
                 
            
            c = DriverManager.getConnection( url, username, password );
            
            PreparedStatement pstmt = c.prepareStatement(sql);
            
            //set the paramter inside the sql ? 
            pstmt.setString(1, user_name);
            pstmt.setString(2, city);
            pstmt.setString(3, title);
            pstmt.setString(4, date_post);
            pstmt.setInt(5, number_players);
            pstmt.setInt(6, age_requirement);
            pstmt.setString(7, date_event);
            pstmt.setString(8, event_time);
            pstmt.setString(9, description);
            pstmt.setString(10, address);
            pstmt.setInt(11, id);
            
            pstmt.executeUpdate();
            
           //execute statement
           // ResultSet rs = pstmt.executeQuery();

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
		
			
		//send user back to departmentlibrary display
		response.sendRedirect("Basketball");
		
		
		
	}

}