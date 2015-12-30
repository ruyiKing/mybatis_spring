package mybatis_spring;

import java.util.List;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;

import ry.model.User;
import ry.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring.xml", "classpath:spring-mybatis.xml" })
public class TestMybatis {
	private static final Logger logger = Logger.getLogger(TestMybatis.class);	
	@Autowired
	private UserService userService;
	
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

}
