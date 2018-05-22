package service;

import java.util.List;

import pojo.Order;

public interface OrderService {
	
	List<Order> list();
	
	void add(int uid);
	
	int getId(int uid);
}
