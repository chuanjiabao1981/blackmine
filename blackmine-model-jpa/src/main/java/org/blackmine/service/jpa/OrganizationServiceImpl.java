package org.blackmine.service.jpa;

import java.util.List;

import javax.annotation.Resource;

import org.blackmine.domain.Organization;
import org.blackmine.repository.OrganizationRepository;
import org.blackmine.service.OrganizationService;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.common.collect.Lists;


@Service("organizationService")
@Transactional
@Repository
public class OrganizationServiceImpl implements OrganizationService {
	@Resource
	OrganizationRepository organizationRepository;
	@Override
	public Organization save(Organization organization) {
		return organizationRepository.save(organization);
	}
	@Override
	public List<Organization> findAll() {
		return  Lists.newArrayList(organizationRepository.findAll());
	}

}
