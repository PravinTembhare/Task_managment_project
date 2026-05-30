package com.controller1;

import java.security.interfaces.RSAKey;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.Model.Task;
import com.Model.User;
import com.service.userS;

import ch.qos.logback.core.model.Model;

@Controller
public class Controller1 {
	User u;
	@Autowired
	userS s;
@RequestMapping("/")
public String Default() {
	return "Login";
}
@RequestMapping("/Register")
public String Reg() {
	return "Register";
}
@RequestMapping("/Login2")
public String Login2(@ModelAttribute User u) {
	s.Usersave(u);
	return"redirect:/Login5";
}
@GetMapping("/Login5")
public String Login3() {
	return"Login";
}
@RequestMapping("/Success")
public String Success(@RequestParam("username") String username,@RequestParam("password") String password,ModelMap m) {
	 u=s.Userfind(username, password);
	if(u!=null) {
		
		m.put("data", u);
		return"success";
		
	}else {
		m.put("msg", "wrong password and user name");
		m.put("msg2","alert alert-danger");
		return"Login";
	}
	
}
@RequestMapping("Sub2")
public String Task1(@ModelAttribute Task t) {
	s.AddTask(t, u.getUid());
	return "redirect:/Sub3";
}
@GetMapping("/Sub3")
public String Task2() {
	return"success";
}
@RequestMapping("/List")
public String ListView(ModelMap m) {
	m.put("data", s.getSet(u.getUid()));
	return "List";
}
@RequestMapping("Done")
public String Done(@RequestParam("tid") int tid,ModelMap m) {
	s.Remove(tid, u.getUid());
	m.put("data", s.getSet(u.getUid()));
	return "List";
}
@RequestMapping("/Update")
public String Update2(@RequestParam("tid") int tid,ModelMap m) {
	Task t=s.Update(tid);
	m.put("data", t);
	m.put("data1",u);
	return "Update";
}

@RequestMapping("/Sub7")
public String Sub3(@ModelAttribute Task t) {
	
	s.TaskUpdate(t);

	return "redirect:/Sub4";
}

@GetMapping("/Sub4")
public String List9(ModelMap m) {
	
	m.put("data", s.getSet(u.getUid()));
	return "List";
}
}
