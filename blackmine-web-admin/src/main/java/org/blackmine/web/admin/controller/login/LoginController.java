package org.blackmine.web.admin.controller.login;

import java.util.Locale;

import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.blackmine.service.UserService;
import org.blackmine.web.form.Message;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	UserService userService;
	@Autowired
	MessageSource messageSource;

	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String newLogin()
	{

		return "login/new";
	}
	
	@RequestMapping(value="/login",method = RequestMethod.POST)
	public String failLogin(@RequestParam(FormAuthenticationFilter.DEFAULT_USERNAME_PARAM) String userName, Model model,Locale locale) {

		model.addAttribute(FormAuthenticationFilter.DEFAULT_USERNAME_PARAM, userName);
		model.addAttribute("message",
				new Message("alert alert-danger", messageSource.getMessage("messageAuthenticationFail", new Object[] {}, locale)));
		System.err.println(userName);
		logger.info(userName);
		return "login/new";
	}

}
