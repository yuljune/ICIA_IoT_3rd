package com.spring.main.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.main.service.membershipService;

@Controller("membershipController")
public class membershipController {
	
	@Autowired membershipService service;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	//회원가입 폼으로 이동
	@RequestMapping(value = "/joinForm")
	public String joinForm() {
		logger.info("회원가입 페이지로 이동");		
		return "joinForm";
	}
}
