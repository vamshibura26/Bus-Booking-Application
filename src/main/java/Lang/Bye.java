package Lang;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class Bye extends HttpServlet
{
		protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
		{
		    RequestDispatcher rt=request.getRequestDispatcher("Good.jsp");
		    rt.forward(request, response);
	    }

}
