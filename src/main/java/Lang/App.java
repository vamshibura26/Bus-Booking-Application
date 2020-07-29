package Lang;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.*;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import Lang.Welcome;

public class App
{
    public void  Add(String FirstName,String LastName,String Phone,String Email,String DOB,String Password)
    {
    	Configuration con= new Configuration().configure().addAnnotatedClass(Example.class);
    	SessionFactory sf=con.buildSessionFactory();
    	Session session=sf.openSession();
    	
    	Transaction tr=session.beginTransaction();
    	Example e=new Example();
    	e.setFirstName(FirstName);
    	e.setLastName(LastName);
    	e.setPhone(Phone);
    	e.setEmail(Email);
    	e.setDOB(DOB);
    	e.setPassword(Password);
    	session.save(e);
    	tr.commit();
    	session.close();
    }
    public void Sub(String Fro,String To,String Date,String S,String Time)
    {
        Configuration con=new Configuration().configure().addAnnotatedClass(Welcome.class);
        SessionFactory sf=con.buildSessionFactory();
        Session session=sf.openSession();
        
        Transaction tr=session.beginTransaction();
        Welcome w=new Welcome();
        w.setDate(Date);
        w.setFro(Fro);
      	w.setS(S);
        w.setTime(Time);
        w.setTo(To);
        session.save(w);
        tr.commit();
        session.close();
    }
    public void Pass(String Passenger_Name,String Phone_No,String Email_id)
    {
    	Configuration con= new Configuration().configure().addAnnotatedClass(Details.class);
    	SessionFactory sf=con.buildSessionFactory();
    	Session session=sf.openSession();
    	
    	Transaction tr=session.beginTransaction();
    	Details d=new Details();
    	d.setEmail_id(Email_id);
    	d.setPassenger_Name(Passenger_Name);
    	d.setPhone_No(Phone_No);
    	session.save(d);
    	tr.commit();
    	session.close();
   }
}
