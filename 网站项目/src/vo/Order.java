package vo;

public class Order {
	String number,name,address,mail,phone;
	double total_price;
	
	public Order(String name, String address, String mail,
			String phone, double totalPrice) {
		super();
		this.number = number;
		this.name = name;
		this.address = address;
		this.mail = mail;
		this.phone = phone;
		total_price = totalPrice;
	}
	public Order(){
		
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public double getTotal_price() {
		return total_price;
	}
	public void setTotal_price(double totalPrice) {
		total_price = totalPrice;
	}
}
