package dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import pojo.User;

public interface UserDao {
	//根据id查询user
	public User getUserById(Integer id);
	//根据用户名查询用于（登录的时候用到）
	public User getUserByNameAndPassword(@Param("name") String name,@Param("password") String password);
	//根据用户名和密码创建用户（注册时用到）
	public void insertUser(User user);
	//根据id修改登录时间（登录时用到）
	public void updateLoginTimeById(@Param("id") int id,@Param("loginTime") Date loginTime);
	//根据用户名查询用户
	public User getUserByName(String name);
	//查询所有用户
	public List<User> getAllUserForAdmin();
	//根据id修改用户名
	public void updateUserNameByIdForAdmin(@Param("id") int id,@Param("name") String name);
	//根据用户名修改密码
	public void updatePasswordByIdForAdmin(@Param("id") int id,@Param("password") String password);
	//根据id删除用户
	public void deleteUserByIdForAdmin(int id);
	//查询此条记录在数据库中是第几条（删除时start跳转需要用到）
	public int getUserLocation(int id);
}
