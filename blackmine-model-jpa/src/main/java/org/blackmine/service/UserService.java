package org.blackmine.service;

import org.blackmine.domain.User;

public interface UserService {
	public User findByAccount(String account);
	public User save(User user);
}
