package com.libiary.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.libiary.bean.BookAndUser;
import com.libiary.mapper.BookAndUserMapper;
import com.libiary.service.BookAndUserService;

@Service
public class BookAndUserServiceImpl implements BookAndUserService {
		@Autowired
		BookAndUserMapper bookAndUserMapper;
	
	
	@Override
	public void addBorrowBook(String uid,String bid,String bookName) {
		bookAndUserMapper.addBorrowBook(uid,bid,bookName);
		
	}

	@Override
	public List<BookAndUser> getBrrowBookById(String user_ID) {
		return bookAndUserMapper.getBrrowBookById(user_ID);
	}

	@Override
	public void backBook(String Bid) {
		bookAndUserMapper.backBook(Bid);
	}

	

}
