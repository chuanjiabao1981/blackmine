package org.blackmine.service;

import java.util.List;

import org.blackmine.domain.Organization;

public interface OrganizationService {
	public Organization 			save(Organization organization);
	public List<Organization>		findAll();
}
