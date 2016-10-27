package model;

import java.util.*;

import daoimpl.UserDaoImpl;

public class User{
	public static String verify(String name,String pwd){
		List<vo.User> users=new daoimpl.UserDaoImpl().findAllUser();
		
		System.out.println(name + ',' + pwd);
		
		for(vo.User o:users){
			if(o.getName().equals(name)){
				if(o.getPassword().equals(pwd))
					return "";
				else
					return "密码错误!";
			}
		}
		return "用户名错误!";
	}
	public String register(String name,String password,String mail){
		List<vo.User> users=new daoimpl.UserDaoImpl().findAllUser();
		for(vo.User u:users){
			if(u.getName().equals(name))
					return "用户名已存在";
		}
		vo.User u=new vo.User();
		u.setName(name);
		u.setPassword(password);
		u.setMail(mail);
		if(!new daoimpl.UserDaoImpl().addUser(u).equals("")){
			return "register fail.";
		}
		
		return "";
	}
	public String changePassword(String name,String oldPassword,String newPassword){
		Object user=new daoimpl.UserDaoImpl().findUserByName(name);
		vo.User u=(vo.User)user;
		if(u.getPassword().equals(oldPassword)){
			u.setPassword(newPassword);
			if(!new daoimpl.UserDaoImpl().updateUser(u))
				return "update fail";
			else
				return "";
			}
		else
			return "密码不正确 ";
	}
	public String delUser(String username){
	           UserDaoImpl use=new UserDaoImpl();
	           return use.deleteUserByName(username);
			
	}
}