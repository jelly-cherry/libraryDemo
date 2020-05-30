package com.libiary.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.libiary.bean.BookAndUser;

public interface BookAndUserMapper {

	public void addBorrowBook(@Param("uid")String user_ID,@Param("bid")String bookID,@Param("bookName")String bookName);//增

	public List<BookAndUser> getBrrowBookById(@Param("user_ID")String user_ID);//查
	
	public void backBook(@Param("Bid")String bookID);//删
}
