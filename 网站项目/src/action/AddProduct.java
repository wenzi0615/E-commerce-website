package action;

import model.Products;

import java.sql.Date;
import com.opensymphony.xwork2.*;

import vo.*;

public class AddProduct  extends ActionSupport{
	String number,name,price,category,path,manufacturer,style,comment,quantity;
	String err;
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getErr() {
		return err;
	}
	public void setErr(String err) {
		this.err = err;
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
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	@Override
	public String execute(){
		int i = path.lastIndexOf('\\');
		path = path.substring(i+1);
		Product p = new Product(number, name, price, comment, path, category);
		ProductDetails pd = new ProductDetails(number, name, manufacturer,
				style, category, Integer.parseInt(quantity));
		System.out.println("-------------------------------------");
		System.out.println(pd.getQuantity());
		boolean e = new Products().addProduct(p, pd);
		if(e){
			//ActionContext.getContext().getSession().put("user",username);
			return SUCCESS;
		}
		else
			return ERROR;
	}
}
/*						<input type="text" name="number">

    					<input type="text" name="name">

    					<input type="text" name="price">

    					<input type="text" name="category">

    					<input type="file" name="path" value="查看">

    					<input type="text" name="quantity">

    					<input type="text" name="manufacturer">

    					<input type="text" name="style">
    				</td>*/