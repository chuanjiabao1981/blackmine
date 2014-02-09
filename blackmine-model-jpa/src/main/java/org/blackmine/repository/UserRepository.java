package org.blackmine.repository;

import org.blackmine.domain.User;
import org.springframework.data.repository.CrudRepository;


public interface UserRepository extends CrudRepository<User,Long>{
	public User findByAccount(String account);
}
