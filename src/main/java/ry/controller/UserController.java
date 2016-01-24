package ry.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.LookAndFeel;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;

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
//		Map<String, Object> data = new HashMap<String, Object>(2);   
		List<User> finduserList=userService.getAll2();
//		request.setAttribute("finduserList", finduserList);
//		String jsonArray = JSONArray.toJSONString(finduserList);
//		logger.info("返回JSON："+jsonArray.toString());  
//		request.setAttribute("jsonArray", jsonArray);
//		data.put("rows", jsonArray);  
//		JSONArray jsonArray = new JSONArray();
//		for(User user:finduserList){  
//	         JSONObject jsonObject = new JSONObject();  
//	         jsonObject.put("id",user.getId()) ;  
//	         jsonObject.put("name",user.getName());  
//	         jsonObject.put("createTime", user.getCreateTime());  
//	         jsonObject.put("updateTime",user.getUpdateTime());  
//	         jsonArray.add(jsonObject) ;  
//    	}  
//
//		
//		User u = userService.findUserById("1");
//		request.setAttribute("user", u);
//		data.put("total", finduserList.size());  
//		data.put("rows",jsonArray) ;
		String jsonArray = JSONArray.toJSONString(finduserList);
		logger.info("jsonArray= = >:"+jsonArray);
        return JSONObject.parseArray(jsonArray); 

	}
}
