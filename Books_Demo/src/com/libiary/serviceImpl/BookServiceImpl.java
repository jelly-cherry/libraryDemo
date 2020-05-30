package com.libiary.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.libiary.bean.Book;
import com.libiary.mapper.BookMapper;
import com.libiary.service.BookService;
@Service
public class BookServiceImpl implements BookService{
	
	@Autowired
	private BookMapper BookMapper;
	

	@Override
	public List<Book> getAllBook() {
		
		return  BookMapper.getAllBook();
	}

	@Override
	public Book getBookById(String bID) {
		
		return BookMapper.getBookById(bID);
	}

	@Override
	public void deleteBook(String bID) {
		BookMapper.deleteBookByID(bID);
		
	}

	@Override
	public void updateBook(Book book) {
		BookMapper.updateBook(book);
		
	}

	@Override
	public void addBook(Book book) {
		BookMapper.addBook(book);
		
	}

	@Override
	public void deleteMoreBooks(String[] bids) {
		for(int i=0;i<=bids.length-1;i++) {
			BookMapper.deleteBookByID(bids[i]);
		}
	}

}
