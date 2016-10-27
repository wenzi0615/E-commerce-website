package vo;

public class MenuList {
	private String content,id;
	public MenuList(String id, String content) {
		this.id = id;
		this.content = content;
	}
	public MenuList() {
		// TODO Auto-generated constructor stub
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
}
