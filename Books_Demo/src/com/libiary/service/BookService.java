package com.libiary.service;

import java.util.List;

import com.libiary.bean.Book;

public interface BookService {

	public List<Book> getAllBook(); 
	
	public Book getBookById(String bID);
	
	public void deleteBook(String bID);
	
	public void updateBook(Book book);
	
	public void addBook(Book book);
	
	public void deleteMoreBooks(String[] bids) ;
}
