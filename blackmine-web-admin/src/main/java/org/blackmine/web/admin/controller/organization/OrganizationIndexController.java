package org.blackmine.web.admin.controller.organization;

import java.util.List;

import javax.annotation.Resource;

import org.blackmine.domain.Organization;
import org.blackmine.service.OrganizationService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class OrganizationIndexController extends OrganizationController{

	@Resource
	OrganizationService organizationService;
	
	@RequestMapping(value = "/organizations", method = RequestMethod.GET)
	public String index(Model model)
	{
		List<Organization> organizations = organizationService.findAll();
		model.addAttribute("organizations", organizations);
		return VIEW_INDEX;
	}
}
