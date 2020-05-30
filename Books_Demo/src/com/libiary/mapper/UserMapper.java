package com.libiary.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.libiary.bean.User;

public interface UserMapper {
	public User getUserById(@Param("username")String username,@Param("password")String password);
	
	public List<User> getALLUser();//查
	
	public void addUser(User user);//增
	
	public void deleteUser(@Param("uid")String uid);//删
	
	public void updateUser(User user);//改 User不能用Param，Param只针对一个属性，对引用类型无效，而且会影响效果!!!!!!,改一到两个属性可用Param，像改整个类对象引用的不能用
	
	//@Param注解的作用是给参数命名,参数命名后就能根据名字得到参数值,
	public User getUserById2(@Param("user_ID")String user_ID);//根据ID查

}
