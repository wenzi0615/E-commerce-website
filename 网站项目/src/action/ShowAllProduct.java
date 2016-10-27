package action;

import java.util.List;

import com.opensymphony.xwork2.*;
import model.Products;
import vo.Product;

public class ShowAllProduct extends ActionSupport {
	public List<Product> GetAllProducts(){
		return new Products().GetAllProducts();
	}
}
