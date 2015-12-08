package mybatis_spring;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import ry.model.User;
import ry.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring.xml", "classpath:spring-mybatis.xml" })
public class TestMybatis {
	
	@Autowired
	private UserService userService;
	
	@Test
	public void test1(){
		User u = userService.findUserById("1");
		System.out.println(u.getName());
		/*String s = userService.getuserid("1");
		System.out.println(s);*/
	}


}
