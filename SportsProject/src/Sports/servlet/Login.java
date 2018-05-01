package Sports.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.getRequestDispatcher( "/WEB-INF/Homepage/Login.jsp" ).forward( request, response );
		
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String user_name = request.getParameter("username");
		String user_password = request.getParameter("password");
		
		
		
		
		Connection c = null;
        try
        {
        	     String url = "jdbc:mysql://localhost/cs3220stu04";
             String username = "cs3220stu04";
             String password = "9u1ABXus";

            c = DriverManager.getConnection( url, username, password );
            Statement stmt = c.createStatement();
            ResultSet rs = stmt.executeQuery( "select * from sports_users");

            //retrieve data from result set row
            if(rs.next()) {
            	 	
            	 	String Admin = rs.getString("name");
                 String abcd = rs.getString("password");
            		 
             	//check username and password, and if correct, redirect to DepartmentLibrary
         		if(user_name.equals(Admin) && user_password.equals(abcd)) {
         			request.getSession().setAttribute("user", user_name); //check in the memebers servlet it "user" to get
         			response.sendRedirect("Soccer");
         		}else {
         			response.sendRedirect("Login");
         		}
            		
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
			
	}

}