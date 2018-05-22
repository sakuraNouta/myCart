package mapper;

import java.util.List;
import pojo.Order;

public interface OrderMapper {
	
	public void add(int uid);
	
	public void delete(int id);
	
	public void update(Order order);
	
	public List<Order> list();
	
	public Order get(int id);
	
	public int count();
	
	public int getId(int uid);
}
