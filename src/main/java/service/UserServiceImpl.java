package service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.UserDao;
import pojo.User;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	
	//根据用户名和密码获取用户
	public User getUserByNameAndPassword(String name, String password) {
		User user = userDao.getUserByNameAndPassword(name,password);
		return user;
	}

	//创建用户
	public void createUser(User user) {
		userDao.insertUser(user);
	}

	//根据用户名查询用户
	public User getUserByName(String name) {
		User user = userDao.getUserByName(name);
		return user;
	}

	//查询所有用户
	public List<User> getAllUserForAdmin() {
		List<User> users = userDao.getAllUserForAdmin();
		return users;
	}

	//根据id修改登录时间（登录时用到）
	public void updateLoginTimeById(int id, Date loginTime) {
		userDao.updateLoginTimeById(id,loginTime);
	}

	//根据id修改用户名
	public void updateUserNameByIdForAdmin(int id, String name) {
		userDao.updateUserNameByIdForAdmin(id,name);
	}

	//根据id修改用户密码
	public void updatePasswordByIdForAdmin(int id, String password) {
		userDao.updatePasswordByIdForAdmin(id,password);
	}

	//根据id删除用户
	public void deleteUserByIdForAdmin(int id) {
		userDao.deleteUserByIdForAdmin(id);
	}

	//查询此条记录在数据库中是第几条（删除时start跳转需要用到）
	public int getUserLocation(int id) {
		int location = userDao.getUserLocation(id);
		return location;
	}

	//根据id查询user
	public User getUserById(int id) {
		User user = userDao.getUserById(id);
		return user;
	}
	
}
