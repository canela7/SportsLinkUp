package cs3337;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Basketball")
public class BasketballController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public BasketballController() {
        super();
        // TODO Auto-generated constructor stub
    }

    public void init( ServletConfig config ) throws ServletException
    {
        super.init( config );

        
    }

    protected void doGet( HttpServletRequest request,
        HttpServletResponse response ) throws ServletException, IOException
    {
        RequestDispatcher dispatcher = request.getRequestDispatcher( "/WEB-INF/Homepage/basketball.jsp" );
        dispatcher.forward( request, response );
    }

    protected void doPost( HttpServletRequest request,
        HttpServletResponse response ) throws ServletException, IOException
    {
        doGet( request, response );
    }

}
