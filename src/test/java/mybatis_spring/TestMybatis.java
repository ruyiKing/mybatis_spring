package mybatis_spring;

import java.util.List;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;

import UserRole.UserRoleService;
import ry.model.User;
import ry.model.UserRole;
import ry.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring.xml", "classpath:spring-mybatis.xml" })
public class TestMybatis {
	private static final Logger logger = Logger.getLogger(TestMybatis.class);	
	@Autowired
	private UserService userService;
	
	@Autowired
	private UserRoleService userRoleService;
	
	@Test
	public void test1(){
		User u = userService.findUserById("1");
		System.out.println(u.getName());
		logger.info(JSON.toJSONStringWithDateFormat(u, "yyyy-MM-dd"));
		/*String s = userService.getuserid("1");
		System.out.println(s);*/
	}

	@Test
	public void test2() {
		List<User> list=userService.getAll();
		logger.info(JSON.toJSONStringWithDateFormat(list, "yyyy-MM-dd"));
	}
	
	@Test
	public void test3() {
		for(int i=1;i<=5;i++){
			UserRole userRole = new UserRole();
			userRole.setId(String.valueOf(i));
			userRole.setRoleId("1");
			userRole.setUserId("1");
			userRoleService.addUserRole(userRole);
			
		}
	}

}
