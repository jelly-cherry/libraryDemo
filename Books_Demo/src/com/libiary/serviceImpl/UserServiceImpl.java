package com.libiary.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.libiary.bean.User;
import com.libiary.mapper.UserMapper;
import com.libiary.service.UserService;
@Service
public class UserServiceImpl implements UserService {
	@Autowired 
	private UserMapper userMapper;
	

	@Override
	public User getUserById(String username,String password) {
		return userMapper.getUserById(username,password);
		
	}

	@Override
	public List<User> getALLUser() {
		return userMapper.getALLUser();	
	}

	@Override
	public void addUser(User user) {
		userMapper.addUser(user);
	}

	@Override
	public void deleteUser(String user_ID) {
		userMapper.deleteUser(user_ID);
		
	}

	@Override
	public void deleteUsers(String[] uids) {
		for(int i=0;i<=uids.length-1;i++) {
			userMapper.deleteUser(uids[i]);
		}
		// TODO 自动生成的方法存根
		
	}

	@Override
	public void updateUser(User user) {
		userMapper.updateUser(user);
	}

	@Override
	public User getUserById2(String user_ID) {
		
		return userMapper.getUserById2(user_ID);
	}

}
