package Lang;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String Email=request.getParameter("Em");
		String Password=request.getParameter("Pass");
		try
		{
			Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/vamshi","vamshi","Damodar99");
			PreparedStatement pt=con.prepareStatement("select * from TimePass where Email=? and Password=?");
			pt.setString(1, Email);
			pt.setString(2,Password);
			ResultSet rs=pt.executeQuery();
			if(rs.next())
			{
				request.setAttribute("name",rs.getString(4));
				RequestDispatcher rd=request.getRequestDispatcher("Welcome.jsp");
				rd.forward(request, response);
			}
			else
			{
				PrintWriter pw=response.getWriter();
				pw.println("Incorrect Details");
			}
			HttpSession session=request.getSession();
			session.setAttribute("Email", Email);
			con.close();
		}
		catch(SQLException s)
		{
			s.printStackTrace();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
