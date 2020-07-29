package Lang;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Passanger_Details")
public class Details 
{
   @Id
   @GeneratedValue(strategy = GenerationType.AUTO)
   @Column(name="Id",updatable = true,nullable = false)
   private Long Id;
   private String Passenger_Name;
   private String Phone_No;
   private String Email_id;
public String getPassenger_Name() {
	return Passenger_Name;
}
public void setPassenger_Name(String passenger_Name) {
	Passenger_Name = passenger_Name;
}
public String getPhone_No() {
	return Phone_No;
}
public void setPhone_No(String phone_No) {
	Phone_No = phone_No;
}
public String getEmail_id() {
	return Email_id;
}
public void setEmail_id(String email_id) {
	Email_id = email_id;
}
}
