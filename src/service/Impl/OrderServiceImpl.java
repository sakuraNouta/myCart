package service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.OrderMapper;
import pojo.Order;
import service.OrderService;

@Service
public class OrderServiceImpl implements OrderService{
	
	@Autowired
	OrderMapper orderMapper;
	
	public List<Order> list(){
		return orderMapper.list();
	}
	
	public void add(int uid) {
		orderMapper.add(uid);
	}
	
	public int getId(int uid) {
		return orderMapper.getId(uid);
	}
	
}
