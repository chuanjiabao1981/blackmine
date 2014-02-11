package org.blackmine.web.admin.controller.organization;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.blackmine.domain.Organization;
import org.blackmine.service.OrganizationService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class OrganizationCreateController extends OrganizationController{
	
	private static final Logger logger = LoggerFactory.getLogger(OrganizationCreateController.class);

	@Resource
	OrganizationService organizationService;
	
	@RequestMapping(value="/organizations/new",method=RequestMethod.GET)
	public String newForm()
	{
		return VIEW_NEW;
	}
	@RequestMapping(value="/organizations",method=RequestMethod.POST)
	public String create(@ModelAttribute("organization") @Valid Organization organization,
 						 BindingResult bindingResult, 
 						 HttpServletRequest httpServletRequest,
 						 Model model)
	{
		logger.info("------------------");
		if (bindingResult.hasErrors()){
			logger.info(" has error ------------------");

			return VIEW_NEW;
		}
		organizationService.save(organization);
		return "redirect:/organizations";
	}
	
	@ModelAttribute("organization")
	public Organization populateOrganization()
	{
		return new Organization();
	}


}
