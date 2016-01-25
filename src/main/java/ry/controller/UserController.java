package ry.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import ry.model.User;
import ry.service.UserService;

@Controller
@RequestMapping("/user")
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
		logger.info("跳转返回userList");
		return "/jsp/user/userList";
	}
	
	@RequestMapping("/finduserList.do")
	@ResponseBody
	public Object finduserList(HttpServletRequest request,HttpServletResponse response) {
		List<User> finduserList= new ArrayList<User>();
		String userName = request.getParameter("name");
		if(userName!=null && userName!=""){
			finduserList=userService.findUserByName(userName);
		}else {
			finduserList=userService.getAll();
		}

		String jsonArray = JSONArray.toJSONStringWithDateFormat(finduserList , "yyyy-MM-dd");
		logger.info("jsonArray= = >:"+jsonArray);
        return JSONObject.parseArray(jsonArray); 

	}
}
