package com.prac.member.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface MemberService {

	public Map<String, Object> idCheck(String id);
	public void signIn(HttpServletRequest request, HttpServletResponse response);
}
