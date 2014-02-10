package org.blackmine.cmd.tools;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.blackmine.domain.User;
import org.blackmine.security.util.SecurityTools;
import org.blackmine.service.UserService;
import org.springframework.context.support.GenericXmlApplicationContext;



public class SystemInit {
	public  static String ADMIN_ACCOUNT ="admin";
	public  static String ADMIN_PASSWD	="12345";
			
	

	public static void main(String[] args)
	{
		GenericXmlApplicationContext ctx = new GenericXmlApplicationContext();
		ctx.load("classpath*:/application-datasource-jpa-context.xml","classpath*:/application-web-admin-security.xml");
		ctx.refresh();
		UserService							 userService			=  (UserService) ctx.getBean("userService");
		DefaultWebSecurityManager			securityManager			=  (DefaultWebSecurityManager) ctx.getBean("securityManager");
		User								user					=  new User();
		/*
		 *  由于AbstractShiroFilter默认不会设置SecurityMananger给当前线程，每次请求来才设置。(staticSecurityManagerEnabled)
		 *  且ShiroFilterFactoryBean也没有接口设置staticSecurityManagerEnabled，所以在非请求模式下，只能手动设置securityManager了。
		 */
		SecurityUtils.setSecurityManager((org.apache.shiro.mgt.SecurityManager) securityManager);
		user.setPassword_cryp(SecurityTools.getEncryptPassword(ADMIN_PASSWD));
		user.setAccount(ADMIN_ACCOUNT);
		
		
		user = userService.save(user);
		
		if (user.getId() != null){
			System.out.println("Success init admin! admin id is "+ user.getId());
		}
	}


}
