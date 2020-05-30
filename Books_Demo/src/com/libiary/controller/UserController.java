package com.libiary.controller;
import java.util.Arrays;
import java.util.HashMap;
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
import com.libiary.service.UserService;
import com.libiary.util.BookPageUtil;
import com.libiary.util.PageUtil;

/* controller->service->serviceImpl->mapper*/
@Controller
public class UserController {
		@Autowired
		UserService us;
		@Autowired
		BookService bs;
		//验证用户登录
	@RequestMapping(value="/login", method=RequestMethod.POST)
		public String logincheck(Map<String,Object> map,String username,String password,HttpSession session) {
		User user=us.getUserById(username, password);
		String flag=user.getManager();//flag是个信号量 判断用户和管理员的区别,用户默认为1，管理员为manage
		 if(flag.equals("manage")) {
//			System.out.print("登陆成功");
			return "managerUser";
		}
		else if(flag.equals("1")) {
				session.setAttribute("user", user);//将用户的信息保存在session中
			return "/aboutUs";//若为普通用户返回关于我们页面
		}
		else {
			return "redirect:/managerUsers/1";//若为管理员返回管理页面
		}
		
	}
	
	//用户注册
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String addUser(User user) {
//		System.out.println("----------------------------------------");
//		System.out.println(user);
		us.addUser(user);//添加员工
		return "redirect:login.jsp";//注册成功返回登录页面
	}
	
	//管理用户
	@RequestMapping(value="/managerUsers/{pageNum}",method=RequestMethod.GET)
	public String getAllUser(Map<String,Object> map,@PathVariable("pageNum")Integer pageNum,HttpServletRequest request) {
		//通过PageHelper设置页面信息，第一个参数为页数，第二个参数为每页显示的条数
		PageHelper.startPage(pageNum,10);
		List<User> userList = us.getALLUser();
		//PageInfo中封装了分页相关的所有信息，当前页的页数，上一页的页数，下一页的页数，总页数，总条数...
		PageInfo<User> pageInfo =new PageInfo(userList,5);
		String page =PageUtil.getPageInfo(pageInfo, request);
		map.put("page", page);
		map.put("userList",userList);
		return "userList";//返回用户列表
	}
	
	//删除用户
	@RequestMapping(value="/managerUser_D/{uid}",method=RequestMethod.GET)
	public String  deleteUser(@PathVariable("uid")String uid) {
		us.deleteUser(uid);
		return "redirect:/managerUsers/1";//重定向管理页面
	}
	//批量删除
	@RequestMapping(value="/anagerUsers",method=RequestMethod.POST)
	public String deleteUsers(String[] uid) {
		System.out.println(Arrays.toString(uid));
		us.deleteUsers(uid);
		return "redirect:/managerUsers/1";
	}
	
	//通过username找到用户前往修改页面
	@RequestMapping(value="/managerUser/{user_ID}",method=RequestMethod.GET)
	public String toUpdateUser(@PathVariable("user_ID")String uid,Map<String,Object> map) {
		User user=us.getUserById2(uid);
//		System.out.println("-------------------------------------------------");
//		System.out.println("-------------------------------------------------");
//		System.out.println(user);
		map.put("user", user);
		Map<String,String> sex=new HashMap<>();
		sex.put("男","男");
		sex.put("女", "女");
		map.put("sex", sex);//性别设置为下单选框
		return "updateUser";
	}
	
	//修改用户
	@RequestMapping(value="/managerUser",method=RequestMethod.PUT)
	public String updateUser(User user) {
//		System.out.println("-------------------------------------------------");
//		System.out.println(user);
		us.updateUser(user);
		return "redirect:managerUsers/1";
	}
	
	
}

