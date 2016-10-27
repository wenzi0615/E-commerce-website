package vo;
import java.sql.Date;
public class ProductDetails {
	String number,name,manufacturer,style,category;
	int quantity;
	Date date;
	public ProductDetails(String number, String name, String manufacturer,
			String style, String category, int quantity) {
		super();
		this.number = number;
		this.name = name;
		this.manufacturer = manufacturer;
		this.style = style;
		this.category = category;
		this.quantity = quantity;
	}
	public ProductDetails(){
		
	}
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
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
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
}
