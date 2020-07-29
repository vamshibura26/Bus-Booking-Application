package Lang;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Pass extends HttpServlet 
{
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
		{
			String Vam10="Vam10";
			String Passenger_Name=request.getParameter("Pn");
			String Phone_No=request.getParameter("No");
			String Email_id=request.getParameter("Em");
			String Cup=request.getParameter("Cup");
			HttpSession session=request.getSession();
			session.setAttribute("Pn", Passenger_Name);
			session.setAttribute("No", Phone_No);
			session.setAttribute("Em",Email_id);
		try 
		{
		    App a=new App();
		    a.Pass(Passenger_Name, Phone_No, Email_id);
		    HttpSession session2=request.getSession();
		    int t=(Integer)session2.getAttribute("i");
		    if(Cup.equals(Vam10))
		    {
		    	double k=150;
		    	double f=(0.10*(t+1)*k);
		    	double j=(k*t+150)-f;
		    	session.setAttribute("j", j);
		    }
		    else
		    {
		    	double k=150;
		    	double j=(k*t+150);
		    	session.setAttribute("j", j);
		    	
		    }
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		 response.sendRedirect("Last.jsp");
		}
}
