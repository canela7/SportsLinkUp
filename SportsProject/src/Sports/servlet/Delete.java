package Sports.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Delete
 */
@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		int id = Integer.parseInt(request.getParameter("id"));
		
		
				
		//make two sql's  one for update to yes in department library.
		
		Connection c = null;
        try
        {
        	     String url = "jdbc:mysql://localhost/cs3220stu04";
             String username = "cs3220stu04";
             String password = "9u1ABXus";

             //sql to update after the edit save button
            String sql = "delete from matches where id=?";
             
            c = DriverManager.getConnection( url, username, password );
            Statement stmt = c.createStatement();
            
            PreparedStatement pstmt = c.prepareStatement(sql);
            
            
            
            
            //set the paramter inside the sql ? 
            pstmt.setInt(1, id);
            
            pstmt.execute();
             
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


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
