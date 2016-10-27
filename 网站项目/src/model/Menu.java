package model;

import java.util.Calendar;
import java.util.List;

import vo.*;

import daoimpl.MenuListDaoImpl;

public class Menu {
	public boolean addMenuList(MenuList m){
		MenuListDaoImpl mdi = new MenuListDaoImpl();
		if(mdi.addMenuList(m))
			return true;
		return false;
	}
	public boolean updateMenuList(MenuList m){
		MenuListDaoImpl mdi = new MenuListDaoImpl();
		if(mdi.updateMenuList(m))
			return true;
		return false;
	}
	public boolean delMenuList(MenuList m){
		MenuListDaoImpl mdi = new MenuListDaoImpl();
		if(mdi.delMenuList(m))
			return true;
		return false;
	}
	public List<MenuList> GetAllMenuLists()
	{
		return new MenuListDaoImpl().getAllMenuLists();
	}
}
