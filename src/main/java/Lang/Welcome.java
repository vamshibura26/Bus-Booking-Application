package Lang;

import java.io.Serializable;

import javax.persistence.Cacheable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.Check;

@Entity
@Table(name="TimePass_Details")
public class Welcome 
{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "Id" ,updatable = true,nullable = false)
    private Long Id;
    private String Fro;
	private String To;
    private String Date;
    private String S;
    private String Time;
    public String getFro() {
		return Fro;
	}
	public void setFro(String fro) {
		Fro = fro;
	}
	public String getTo() {
		return To;
	}
	public void setTo(String to) {
		To = to;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	public String getS() {
		return S;
	}
	public void setS(String s) {
		S = s;
	}
	public String getTime() {
		return Time;
	}
	public void setTime(String time) {
		Time = time;
	}
}
