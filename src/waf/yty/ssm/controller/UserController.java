package waf.yty.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import waf.yty.ssm.pojo.User;
import waf.yty.ssm.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/list")
	public String list(Model model) {
		
		List<User> usersList = userService.selectAllUsers();
		model.addAttribute("usersList", usersList);
		return "list";
	}

}
