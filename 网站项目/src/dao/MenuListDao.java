package dao;

import java.util.List;

import vo.*;

public interface MenuListDao {
	public boolean addMenuList(MenuList m);
	public boolean delMenuList(MenuList m);										//名字或编号删除一个
	public boolean updateMenuList(MenuList m);
	public List<Product> getAllMenuLists();										//获取所有种类
}
