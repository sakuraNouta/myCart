package mapper;

import java.util.List;
import pojo.Product;

public interface ProductMapper {
	
	public void add(Product product);
	
	public void delete(int id);
	
	public void update(Product product);
	
	public List<Product> list();
	
	public Product get(int id);
	
	public int count();
}
