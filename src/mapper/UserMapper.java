package mapper;

import java.util.List;

import pojo.User;

public interface UserMapper {
	
	public void add(User user);
	
	public void delete(int id);
	
	public void update(User user);
	
	public List<User> list();
	
	public User get(int id);
	
	public int count();
}
