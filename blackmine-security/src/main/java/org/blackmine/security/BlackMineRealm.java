package org.blackmine.security;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authc.credential.PasswordMatcher;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.blackmine.domain.User;
import org.blackmine.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;



public class BlackMineRealm extends AuthorizingRealm{

	@Autowired
	UserService userService;
	
	
	public BlackMineRealm()
	{
		super(new PasswordMatcher());
	}
	
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(
			PrincipalCollection principals) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		UsernamePasswordToken upToken 	= (UsernamePasswordToken) token;
	    String account 					= upToken.getUsername();
	    User   user 					= userService.findByAccount(account);
//	        user.getOrganizationPosts();
	    if (user != null ){
//	        	Logger.info(account);
//	        	Logger.info(String.valueOf(upToken.getPassword()));
	        	return new SimpleAuthenticationInfo(user,user.getPassword_cryp().toCharArray(),account);
	    }
		return null;
	}

}
