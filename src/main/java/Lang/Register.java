package Lang;

import java.io.IOException;
import java.io.PrintWriter;

import Lang.App;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.h2.bnf.Sentence;

public class Register extends HttpServlet
{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String FirstName=request.getParameter("Fn");
		String LastName=request.getParameter("Ln");
		String Phone=request.getParameter("Pn");
		String Email=request.getParameter("Em");
		String DOB=request.getParameter("DOB");
		String Cp=request.getParameter("Cp");
		String Password=request.getParameter("Pass");
		if(Cp.equals(Password))
		{
		try 
		{
			App a=new App();
			a.Add(FirstName, LastName, Phone, Email, DOB, Password);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		   PrintWriter pw=response.getWriter();
		   pw.println("Registeration is Successfully Done....!!!!!");
		}
		else
		{
			response.sendRedirect("Register.jsp");
		}
	}
}
