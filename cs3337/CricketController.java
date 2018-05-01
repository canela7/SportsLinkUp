package cs3337;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Cricket")
public class CricketController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public CricketController() {
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
		List<EventData> cricket_events = new ArrayList<EventData>();
		
		Connection c = null;
        try
        {
        	String url = "jdbc:mysql://cs3.calstatela.edu/cs3337stu06?serverTimezone=UTC";
            String username = "cs3337stu06";
            String password = "3G7!PR7E";

            c = DriverManager.getConnection( url, username, password );
            Statement stmt = c.createStatement();
            ResultSet rs = stmt.executeQuery( "select * from cricket_Matches" );

//            while( rs.next() ) {
//                entries.add( new DepartmentLibraryEntry( rs.getInt( "id" ),
//                    rs.getString( "item_type" ), rs.getString( "name" ), rs.getString("additional_info"),
//                    rs.getString("available")));
//            }
            
            while( rs.next() ) {
            	cricket_events.add( new EventData( rs.getInt( "id" ),
                    rs.getString( "city" ), rs.getString( "title" ), rs.getDate("date_post"),
                    rs.getString("date_event"), rs.getString("user_name"), rs.getInt("number_players"), rs.getInt("age_requirement"), rs.getString("event_time"), rs.getString("description"), rs.getString("address")));
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

        request.setAttribute( "cricket_events", cricket_events );
		request.getRequestDispatcher( "/WEB-INF/Homepage/cricket.jsp" ).forward( request, response );


	}

    protected void doPost( HttpServletRequest request,
        HttpServletResponse response ) throws ServletException, IOException
    {
        doGet( request, response );
    }

}
