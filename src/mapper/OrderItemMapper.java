package mapper;

import java.util.List;
import pojo.OrderItem;

public interface OrderItemMapper {
	
	public void add(OrderItem orderItem);
	
	public void delete(int id);
	
	public void update(OrderItem OrderItem);
	
	public List<OrderItem> list();
	
	public OrderItem get(int id);
	
	public int count();
}
