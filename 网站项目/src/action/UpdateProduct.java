package action;

import java.sql.Date;

import com.opensymphony.xwork2.*;
import model.Products;

public class UpdateProduct extends ActionSupport {
	String number,name,price,category,path,manufacturer;
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getErr() {
		return err;
	}
	public void setErr(String err) {
		this.err = err;
	}
	int quantity;
	Date date;
	String err;
	@Override
	public String execute(){
		vo.Product p = new vo.Product();
		vo.ProductDetails pd = new vo.ProductDetails();
		//number,name,price,category,path,manufacturer,style;
		p.setNumber(number);
		p.setName(name);
		p.setPrice(price);
		p.setCategory(category);
		p.setImgpath(path);
		
		pd.setNumber(number);
		pd.setName(name);
		pd.setCategory(category);
		pd.setDate(date);
		pd.setManufacturer(manufacturer);
		
		boolean e = new model.Products().updateProduct(p,pd);
		
		if(e){
			//ActionContext.getContext().getSession().put("user",username);
			return SUCCESS;
		}
		else
			return ERROR;
	}
}
