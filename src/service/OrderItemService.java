package service;

import java.util.List;
import pojo.OrderItem;

public interface OrderItemService {

	List<OrderItem> list();
	
	void add(OrderItem orderItem);
	
}
