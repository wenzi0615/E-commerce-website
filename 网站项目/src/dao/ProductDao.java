package dao;

import java.util.List;
import vo.Product;
import vo.ProductDetails;

public interface ProductDao {
	public boolean addGood(Product g);
	public boolean addProductDetails(ProductDetails pd);
	public boolean delGood(Product g);										//名字或编号删除一个
	public boolean updateGood(Product g);
	public boolean updateProductDetails(ProductDetails pd);
	public List<Product> getAllGoods();										//获取所有种类的商品,不含商品详细信息
	public List<ProductDetails> getProductDetailsByNumber(String number);	//通过编号获取商品详细信息
}