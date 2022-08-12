<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
</head>
<body>
	
	<!--
		var="contextPath"                           contextPath 속성(attribute)으로 저장합니다.
		value="${pageContext.request.contextPath}"  contextPath 속성에 저장되는 값입니다.
		scope="application"                         application에 저장된 속성은 애플리케이션(프로젝트)에서 공유합니다.
		                                            즉, 모든 JSP가 contextPath 속성을 사용할 수 있습니다.
	-->
	
	
	<jsp:include page="./layout/header.jsp"></jsp:include>
	<br>
	메인페이지 입니다.

</body>
</html>