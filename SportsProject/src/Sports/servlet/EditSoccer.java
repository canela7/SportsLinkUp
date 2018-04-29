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


@WebServlet("/EditSoccer")
public class EditSoccer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public EditSoccer() {
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
		
		
		
	
		request.getRequestDispatcher( "/WEB-INF/Homepage/EditSoccer.jsp" ).forward( request, response );


			
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			

		
		 int id = Integer.parseInt(request.getParameter("id"));
		 String city = request.getParameter("editcity"); 
		
		 String title = request.getParameter("title"); 
		 
		 String date_event = request.getParameter("dateofEvent");
		 
		 String user_name = request.getParameter("soccerName");
		 
		 Integer number_players = Integer.parseInt(request.getParameter("numberOfSoccerPlayers")); 
		 Integer age_requierment = Integer.parseInt(request.getParameter("ageLimitSoccer"));
		 
		 Integer zipcode = Integer.parseInt(request.getParameter("zipcode")); 
		 
		 String event_time = request.getParameter("event_time");
		 
		 String description = request.getParameter("soccerDescription");
		 
		 String address = request.getParameter("parkAddress");
		 
		
		
		Connection c = null;
        try
        {
        	     String url = "jdbc:mysql://localhost/cs3220stu04";
             String username = "cs3220stu04";
             String password = "9u1ABXus";

             //sql to update after the edit save button
            String sql = "update matches set city=?, title=?, date_event=?, number_players=?,  age_requierment=?, description=?, address=?, zipcode=? where id=?";
                 
            
            c = DriverManager.getConnection( url, username, password );
            Statement stmt = c.createStatement();
            
            PreparedStatement pstmt = c.prepareStatement(sql);
            
            //set the paramter inside the sql ? 
            pstmt.setString(1, city);
            pstmt.setString(2, title);
            pstmt.setString(3, date_event);
            pstmt.setInt(4, number_players);
            pstmt.setInt(5, age_requierment);
            pstmt.setString(6, description);
            pstmt.setString(7, address);
            pstmt.setInt(8, zipcode);
            pstmt.setInt(9, id);
            
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
