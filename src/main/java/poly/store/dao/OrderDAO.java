package poly.store.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import poly.store.entity.Order;




public interface OrderDAO extends JpaRepository<Order, Long>{
	
	@Query("SELECT o FROM Order o WHERE o.account.username=?1 ORDER BY o.id desc")
	List<Order> findByUsername(String username);
	@Query("SELECT o FROM Order o ORDER BY o.id desc")
	List<Order> sortDate();
	
	
	/*Summary*/
	@Query(value = "Select count(*) from Orders where CreateDate = CAST( GETDATE() AS Date)",nativeQuery= true)
	Long getTodayOrder();

	@Query(value = "Select t.last7Days as 'date', ISNULL(sum(price*quantity),0) as ' totalPayment' "
			+ "From (Select cast(Getdate()as Date) last7Days  "
			+ "	Union all "
			+ "	Select DateAdd(day,-1,cast(getdate()as date)) "
			+ "	Union all "
			+ "	Select DateAdd(day,-2,cast(getdate()as date)) "
			+ "	Union all "
			+ "	Select DateAdd(day,-3,cast(getdate()as date)) "
			+ "	Union all "
			+ "	Select DateAdd(day,-4,cast(getdate()as date)) "
			+ "	Union all "
			+ "	Select DateAdd(day,-5,cast(getdate()as date)) "
			+ "	Union all "
			+ "	Select DateAdd(day,-6,cast(getdate()as date)) "
			+ "	Union all "
			+ "	Select DateAdd(day,-7,cast(getdate()as date)) "
			+ ") t Left Join Orders t1 on cast(t.last7Days as date) = Cast(t1.CreateDate as date) "
			+ "left join OrderDetails dt on  t1.Id = dt.OrderId "
			+ "Group by cast(t.last7Days as Date)", nativeQuery = true)
	List<Object[]> getRevenueLast7Days();
//	@Query("SELECT o FROM Order o ORDER BY o.id desc")
//	List<Order> finAll1();

}
