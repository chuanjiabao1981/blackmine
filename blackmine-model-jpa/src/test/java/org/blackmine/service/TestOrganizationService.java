package org.blackmine.service;

import org.blackmine.domain.Organization;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:application-datasource-jpa-context.xml"})
@Transactional
@TransactionConfiguration(defaultRollback=true,transactionManager="transactionManager") 
public class TestOrganizationService {
	@Autowired
	OrganizationService organizationService;
	@Test
	public void TestSave()
	{
		Organization organization = new Organization();
		organization.setName("name");
		organization.setDesc("desc");
		organization.setLat(0);
		organization.setLng(0);
		organizationService.save(organization);
	}
}
