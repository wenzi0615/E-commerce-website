package model;

import java.util.*;
import java.util.List;

import vo.*;
import daoimpl.ProductDaoImpl;

public class Products {
	public boolean addProduct(Product p, ProductDetails pd){
		
		ProductDaoImpl pdi = new ProductDaoImpl();
		List<ProductDetails> pld = pdi.getProductDetailsByNumber(p.getNumber());
		if(pld.isEmpty()){
			pdi.addGood(p);
		}
		Calendar c = Calendar.getInstance();
		pd.setDate(java.sql.Date.valueOf(c.YEAR+"-"+c.MONTH+"-"+c.DAY_OF_MONTH));
		return pdi.addProductDetails(pd);
	}
	public boolean updateProduct(Product p, ProductDetails pd){
		ProductDaoImpl pdi = new ProductDaoImpl();
		if( !pdi.updateGood(p) || pdi.updateProductDetails(pd))
			return true;
		return false;
	}
	public boolean delProduct(Product p){
		ProductDaoImpl pdi = new ProductDaoImpl();
		return !pdi.delGood(p);
	}
	public List<Product> GetAllProducts()
	{
		return new ProductDaoImpl().getAllGoods();
	}
}
