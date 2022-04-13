//package poly.store.entity;
//
//import java.util.List;
//
//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.OneToMany;
//import javax.persistence.Table;
//
//import com.fasterxml.jackson.annotation.JsonIgnore;
//
//import lombok.Data;
//
//@Data
//@Entity
//@Table(name="Payments")
//public class Payment {
//
//	@Id
//	@GeneratedValue(strategy=GenerationType.IDENTITY)
//	Integer id;
//	String name;
//	
//	@JsonIgnore
//	@OneToMany(mappedBy="payment")
//	List<Order> orders;
//
//}
