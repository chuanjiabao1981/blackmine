package org.blackmine.wechat.service.organization;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class OrganizationIndexContrller {
	
	@RequestMapping(value="/organizations",method=RequestMethod.GET)
	public String index()
	{
		return "organizations/index";
	}
}
