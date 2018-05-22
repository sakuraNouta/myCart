package mapper;

import java.util.List;
import pojo.Category;

public interface CategoryMapper {
	
	public void add(Category category);
	
	public void delete(int id);
	
	public void update(Category category);
	
	public List<Category> list();
	
	public Category get(int id);
	
	public int count();
	
}
