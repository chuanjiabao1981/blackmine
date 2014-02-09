package org.blackmine.service;

import static org.junit.Assert.*;

import org.blackmine.domain.User;
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
public class TestUserService {
	@Autowired
	private UserService userService;
	
	@Test
	public void TestSave()
	{
		User user = new User();
		user.setAccount("aaa");
		assertTrue(user.getId() == null);
		user = userService.save(user);
		assertTrue(user.getId() != null);
		System.err.println(user.getId());
	}
}
