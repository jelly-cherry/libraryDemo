package com.libiary.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.libiary.bean.Book;

public interface BookMapper {
	//查询全部书
	public List<Book> getAllBook();
	//查询一本书
	public Book getBookById(@Param("bID")String bookID);
	//删除一本书
	public void deleteBookByID(@Param("bookID")String bookID);
	//更新
	public void updateBook(Book book);
	
	//增加
	public void addBook(Book book);

}
