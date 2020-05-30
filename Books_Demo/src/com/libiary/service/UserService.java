package com.libiary.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.libiary.bean.User;

public interface UserService {
	
	public User getUserById(String username ,String password);//查一个
	
	public List<User> getALLUser();//查全部
	
	public void addUser(User user);//加一个
	
	public void deleteUser(String user_ID);//删一个

	public void deleteUsers(String [] uids);//删多个
	
	public void updateUser(User user);
	
	public User getUserById2(String user_ID);//根据ID查
}
