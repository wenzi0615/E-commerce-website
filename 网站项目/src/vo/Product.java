package vo;

public class Product {
	String number,name,price,comment,imgpath,category;

	public Product(String number, String name, String price, String comment,
			String imgpath, String category) {
		super();
		this.number = number;
		this.name = name;
		this.price = price;
		this.comment = comment;
		this.imgpath = imgpath;
		this.category = category;
	}
	public Product(){
		
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
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

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getImgpath() {
		return imgpath;
	}

	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}

}
