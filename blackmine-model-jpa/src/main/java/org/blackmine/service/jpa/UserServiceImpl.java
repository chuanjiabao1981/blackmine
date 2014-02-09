package org.blackmine.service.jpa;


import javax.annotation.Resource;

import org.blackmine.domain.User;
import org.blackmine.repository.UserRepository;
import org.blackmine.service.UserService;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("userService")
@Transactional
@Repository
public class UserServiceImpl implements UserService{
	@Resource
	UserRepository userRepository;
	
	@Override
	public User findByAccount(String account) {
		return userRepository.findByAccount(account);
	}

	@Override
	public User save(User user) {
		return userRepository.save(user);
	}
	

}
