package waf.yty.ssm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import waf.yty.ssm.mapper.UserDao;
import waf.yty.ssm.pojo.User;

public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;

	// 查询所有记录
	public List<User> selectAllUsers() {
		return userDao.selectAllUsers();
	}

}
