package org.blackmine.domain;

import static org.junit.Assert.*;

import org.junit.Test;

public class TestOrganization {

	@Test
	public void TestEqualsWithDifferentClass()
	{
		User 			o1 = new User();
		Organization	o2 = new Organization();
		o1.setId(1L);
		o2.setId(2L);
		assertFalse(o1.equals(o2));
	}
}
