package service;

import java.util.List;
import pojo.Product;

public interface ProductService {

	List<Product> list();
	
	Product get(int id);
}
