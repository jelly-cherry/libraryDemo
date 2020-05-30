package com.libiary.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.libiary.bean.Book;
import com.libiary.bean.BookAndUser;
import com.libiary.bean.User;
import com.libiary.service.BookAndUserService;
import com.libiary.service.BookService;
import com.libiary.service.UserService;
//用来管理用户和书籍多对多联系
@Controller
public class BookAndUserController {
	
	@Autowired
	BookAndUserService bAUS;
	@Autowired
	BookService bs;
	@Autowired
	UserService us;
	//记录用户借书
	@RequestMapping(value="/BookAndUser/{Bid}/{Uid}",method=RequestMethod.GET)
	public String borrowBook(@PathVariable("Bid")String Bid,@PathVariable("Uid")String Uid,Map<String,Object>map) {
		Book book=(Book)bs.getBookById(Bid);
		String bookName=book.getBookName();
		User user=(User)us.getUserById2(Uid);
		String userName=user.getUsername();
		map.put("Bid", Bid);
		map.put("bookName",bookName );
		map.put("userName", userName);
		bAUS.addBorrowBook(Uid, Bid, bookName);
		return"redirect:/borrowBook";
	}
	//查询用户的订阅书籍
	@RequestMapping(value="/borrowBook",method=RequestMethod.GET)
	public String getAllBorrowBooksRecord(Map<String,Object>map,HttpSession session) {
		User user=(User)session.getAttribute("user");
		String uid=user.getUser_ID();
		List<BookAndUser> list=bAUS.getBrrowBookById(uid);
		map.put("list", list);
		return"borrowBookRecord";
	}
	
	//用户还书
	@RequestMapping(value="/backBook/{Bid}",method=RequestMethod.GET)
	public String backBook(@PathVariable("Bid")String Bid) {
		bAUS.backBook(Bid);
		return"redirect:/borrowBook";
	}
}
