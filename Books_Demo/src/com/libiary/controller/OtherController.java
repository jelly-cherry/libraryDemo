package com.libiary.controller;

import java.util.List;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.libiary.bean.Book;
import com.libiary.bean.User;
import com.libiary.service.BookService;
import com.libiary.util.BookPageUtil;
//管理其他与book和use没太大关系的控制视图
@Controller
public class OtherController {
	@Autowired
	BookService bs;
			//前往about页面
			@RequestMapping(value="/aboutUs",method=RequestMethod.GET)
			public String toAboutUS() {
				return "aboutUs";
			}
			//前往可借阅书籍页面，传入uid是为了用户点击借书时传入当前借阅者
			@RequestMapping(value="/borrowBook/{pageNum}",method=RequestMethod.GET)
			public String borrowBook(Map<String,Object> map,HttpSession session) {
				List<Book> bookList=bs.getAllBook();
				User user=(User)session.getAttribute("user");//获取已登录的用户信息
				String uid=user.getUser_ID();//获取已登录的用户id	
				map.put("bookList", bookList);
				map.put("uid", uid);//将获取已登录的用户id传到借阅书籍页面，为借阅书籍和用户联系做准备
				return "successLogin";
			}
			//前往个人信息页面
			@RequestMapping(value="/personalInformation" ,method=RequestMethod.GET)
			public String getPersonalInformation(HttpSession session,Map<String,Object>map) {
				User user=(User)session.getAttribute("user");
				map.put("user", user);
				return "personalInformation";
				
			}
}
