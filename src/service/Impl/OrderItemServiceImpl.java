package service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.OrderItemMapper;
import pojo.OrderItem;
import service.OrderItemService;


@Service
public class OrderItemServiceImpl implements OrderItemService{

	@Autowired
	OrderItemMapper orderItemMapper;
	
	public List<OrderItem> list(){
		return orderItemMapper.list();
	}
	
	public void add(OrderItem orderItem) {
		orderItemMapper.add(orderItem);
	}
}
