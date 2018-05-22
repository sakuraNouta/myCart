package pojo;

public class Product {
	private int id;
	private String name;
	private float price;
	private int cid;
	
	public void setId(int id) {
		this.id = id;
	}
	
	public int getId() {
		return id;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
	
	public void setPrice(float price) {
		this.price = price;
	}
	
	public float getPrice() {
		return price;
	}
	
	public void setCid(int cid) {
		this.cid = cid;
	}
	
	public int getCid() {
		return cid;
	}
}
