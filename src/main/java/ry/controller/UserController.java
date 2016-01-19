package ry.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import ry.model.User;
import ry.service.UserService;

@Controller
@RequestMapping("/userController")
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/showUser.do")
	public String showUser(String id,HttpServletRequest request) {
		User u = userService.findUserById(id);
		request.setAttribute("user", u);
		return "showUser";
	}
	
	@RequestMapping("/userList.do")
	public String userList(String id,HttpServletRequest request) {
		List<User> userList=userService.getAll2();
		request.setAttribute("userList", userList);
		return "/jsp/user/userList";
	}
}
