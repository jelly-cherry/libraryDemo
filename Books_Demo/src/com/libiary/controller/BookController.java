package com.libiary.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.libiary.bean.Book;
import com.libiary.service.BookService;
import com.libiary.util.BookPageUtil;

@Controller
public class BookController {
	@Autowired
	BookService bs;
	//查
	@RequestMapping(value="/managerBook/{pageNum}",method=RequestMethod.GET)
	public String getAllBook(@PathVariable("pageNum")Integer pageNum,Map<String ,Object> map,HttpServletRequest request ) {
		PageHelper.startPage(pageNum,5);
		List<Book> bookList=bs.getAllBook();
		PageInfo<Book> pageInfo=new PageInfo(bookList,5);
		String page=BookPageUtil.getPageInfo(pageInfo, request);
		map.put("bookList", bookList);
		map.put("page", page);
		return "bookList";
	}
	//删一个
	@RequestMapping(value="managerBook_D/{bookID}",method=RequestMethod.GET)
	public String deleteBook(@PathVariable("bookID")String bookID) {
		bs.deleteBook(bookID);
		return "redirect:/managerBook/1";
	}
	//删多个
	@RequestMapping(value="/managerBook_D", method=RequestMethod.POST)
	public String deleteMoreBooks(String [] bid) {
		bs.deleteMoreBooks(bid);
		return "redirect:/managerBook/1";
	}
	//前往修改页面
	@RequestMapping(value="/managerBook_U/{bookID}",method=RequestMethod.GET)
	public String toUpdateBook(@PathVariable("bookID")String bookID,Map<String,Object> map) {
		Book book=bs.getBookById(bookID);
		map.put("book", book);
		return "updateBook";
	}
	
	//修改页面
	@RequestMapping(value="/managerBook",method=RequestMethod.PUT)
	public String updateBook(Book book) {
		bs.updateBook(book);
		return "redirect:/managerBook/1";
	}	
	//前往添加页面
	@RequestMapping(value="/addBook",method=RequestMethod.GET)
	public String toAddBook() {
		return "addBook";
	}
	//添加页面
	@RequestMapping(value="/managerBook",method=RequestMethod.POST)
	public String addBook(Book book) {
		bs.addBook(book);
		return "redirect:/managerBook/1";
	}
	
}
