package com.final2.petopia.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CommonController {
	@RequestMapping(value="/index1.pet", method= {RequestMethod.GET})
	public void index1(HttpServletRequest req) {
		System.out.println("확인");
	}
	
	@RequestMapping(value="/index.pet", method= {RequestMethod.GET})
	public String index(HttpServletRequest req) {
		System.out.println("확인");
		return "main/index.tiles2";
	}
}
