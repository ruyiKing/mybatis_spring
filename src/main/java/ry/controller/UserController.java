package ry.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSONArray;

import ry.model.User;
import ry.service.UserService;

@Controller
@RequestMapping("/userController")
public class UserController {
	private static final Logger logger = Logger.getLogger(UserController.class) ;

	@Autowired
	private UserService userService;
	
	@RequestMapping("/showUser.do")
	public String showUser(String id,HttpServletRequest request) {
		User u = userService.findUserById(id);
		request.setAttribute("user", u);
		return "showUser";
	}
	
	@RequestMapping("/userList.do")
	public String userList() {
		return "/jsp/user/userList";
	}
	
	@RequestMapping("/finduserList.do")
	public String finduserList(String id,HttpServletRequest request) {
		List<User> finduserList=userService.getAll2();
		request.setAttribute("finduserList", finduserList);
		String jsonArray = JSONArray.toJSONString(finduserList);
		logger.info(jsonArray.toString());  
		request.setAttribute("jsonArray", jsonArray);
		return "/jsp/user/userList";
	}
}
