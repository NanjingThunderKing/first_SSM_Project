package waf.yty.ssm.service;

import java.util.List;

import waf.yty.ssm.pojo.User;

public interface UserService {
	
	// 查询所有记录
	public List<User> selectAllUsers();
}
