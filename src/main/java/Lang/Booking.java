package Lang;
import Lang.App;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Booking extends HttpServlet
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String Seats="";
		String Fro=request.getParameter("From");
		String To=request.getParameter("To");
		String Date=request.getParameter("Date");
		String S[]=request.getParameterValues("S");
		String Time=request.getParameter("Time");
        HttpSession session=request.getSession();
        session.setAttribute("From", Fro);
        session.setAttribute("To",To);
        session.setAttribute("Date", Date);
        session.setAttribute("Time", Time);
		try
		{
		    App a=new App();
		    for(int i=0;i<S.length;i++)
		    {
		    	HttpSession session2=request.getSession();
		    	session.setAttribute("i",i);
		          Seats+=S[i]+",";
		          session.setAttribute("Seats", Seats);
		          a.Sub(Fro, To, Date, Seats, Time);
		        		  double k=150;
		        		  double j=k*i+150;
		        		  session.setAttribute("j", j);
		    }
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		response.sendRedirect("Details.jsp");
	}
}