package service;

import java.util.Date;
import java.util.List;

import pojo.User;

public interface UserService {
	//根据id查询user
	public User getUserById(int id);
	//根据用户名和密码获取用户
	public User getUserByNameAndPassword(String name,String password);
	//创建用户
	public void createUser(User user);
	//根据id修改登录时间（登录时用到）
	public void updateLoginTimeById(int id,Date loginTime);
	//根据用户名查询用户
	public User getUserByName(String name);
	//查询所有的用户
	public List<User> getAllUserForAdmin();
	//根据id修改用户名
	public void updateUserNameByIdForAdmin(int id,String name);
	//根据id修改密码
	public void updatePasswordByIdForAdmin(int id,String password);
	//根据id删除用户
	public void deleteUserByIdForAdmin(int id);
	//查询此条记录在数据库中是第几条（删除时start跳转需要用到）
	public int getUserLocation(int id);
}
