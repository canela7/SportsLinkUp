package Sports.servlet;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sport.model.SportEntry;

@WebServlet("/Soccer")
public class SoccerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public SoccerController() {
        super();
        // TODO Auto-generated constructor stub
    }


	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		
	    try
        {
            Class.forName( "com.mysql.jdbc.Driver" );
        }
        catch( ClassNotFoundException e )
        {
            throw new ServletException( e );
        }
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		List<SportEntry> soccer_events = new ArrayList<SportEntry>();
		
		Connection c = null;
        try
        {
        	     String url = "jdbc:mysql://localhost/cs3220stu04";
             String username = "cs3220stu04";
             String password = "9u1ABXus";

            c = DriverManager.getConnection( url, username, password );
            Statement stmt = c.createStatement();
            ResultSet rs = stmt.executeQuery( "select * from matches" );


            
            while( rs.next() ) {
                soccer_events.add( new SportEntry( rs.getInt( "id" ),
                    rs.getString( "city" ), rs.getString( "title" ), rs.getDate("date_post"),
                    rs.getString("date_event"), rs.getString("user_name"), rs.getInt("number_players"), rs.getString("age_requierment"), rs.getString("event_time"), rs.getString("description"), rs.getInt("zipcode"), rs.getString("address")));
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

        request.setAttribute( "soccer_events", soccer_events );
		request.getRequestDispatcher( "/WEB-INF/Homepage/soccer.jsp" ).forward( request, response );


	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}


