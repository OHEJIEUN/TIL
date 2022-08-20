package com.prac.member.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.prac.member.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@GetMapping("/")
	public String main() {
		return "main";
	}
	
	@GetMapping("/member/signInPage")
	public String signInPage() {
		return "member/signIn";
	}
	
	@ResponseBody
	@PostMapping(value ="/member/idCheck", produces ="application/json; charset=UTF-8")
	public Map<String, Object> idCheck(@RequestParam String id) {
		Map<String, Object> member = memberService.idCheck(id);
		return member;
	}
	
	@PostMapping("/member/signInMember")
	public void signInMember(HttpServletRequest request, HttpServletResponse response) {
		memberService.signIn(request, response);
	}
	
}
