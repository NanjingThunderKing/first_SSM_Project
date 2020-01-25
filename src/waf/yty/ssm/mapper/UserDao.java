package waf.yty.ssm.mapper;

import java.util.List;

import waf.yty.ssm.pojo.User;

public interface UserDao {
	
	// 查询所有记录
	public List<User> selectAllUsers();

}
