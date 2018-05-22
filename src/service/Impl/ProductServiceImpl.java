package service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.ProductMapper;
import pojo.Product;
import service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	ProductMapper productMapper;
	
	public List<Product> list(){
		return productMapper.list();
	};
	
	public Product get(int id) {
		return productMapper.get(id);
	}
}
