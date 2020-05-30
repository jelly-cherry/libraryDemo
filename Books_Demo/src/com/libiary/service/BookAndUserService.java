package com.libiary.service;

import java.util.List;

import com.libiary.bean.BookAndUser;

public interface BookAndUserService {
	
	public void addBorrowBook(String uid,String bid,String bookName);
	
	public List<BookAndUser> getBrrowBookById(String user_ID);
	
	public void backBook(String Bid);
}
