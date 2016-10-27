package dao;

import java.util.List;

import vo.User;

public interface UserDao {
	public String addUser(User u);
	public List findAllUser();
	public User findUserByName(String name);
	public boolean updateUser(User u);
	public String deleteUserByName(String name);
}