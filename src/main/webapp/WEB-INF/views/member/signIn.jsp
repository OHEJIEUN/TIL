<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignIn</title>
</head>
<body>
	
	<form action="${contextPath}/member/signInMember" method="post">
		<table align="center">
			<caption>회원가입</caption>
			<tbody>
				<tr>
					<td>ID : <input type="text" name="id" id="id"></td>
					<td><input type="button" value="중복체크"></td>
				</tr>
				<tr>
					<td>비밀번호 : <input type="text" name="pw" id="pw"></td>
				</tr>
				<tr>
					<td>비밀번호 확인 : <input type="text" name="pwConfirm" id="pwConfirm"></td>
				</tr>
				<tr>
					<td>이름 : <input type="text" name="name" id="name"></td>
				</tr>
				<tr>
					<td>이메일 : <input type="text" name="email1" id="email1">@<input type="text" name="email2" id="email2"></td>
				</tr>
				<tr>
					<td>휴대폰 : 
						<select name="phone1">
							<option value=""010">010</option>
							<option value=""011">011</option>
							<option value=""016">016</option>
							<option value=""017">017</option>
							<option value=""019">019</option>
						</select>
						-
						<input type="text" name="phone1" id="phone2">
						-
						<input type="text" name="phone2" id="phone3">
					</td>
				</tr>
				<tr>
					<td>성별 : 
						<input type="radio" name="gender" value="남자" id="male">
						<label for="male">남자</label> 
						<input type="radio" name="gender" value="여자" id="female">
						<label for="female">여자</label> 
					</td>
				</tr>
				<tr>
					<td>주민번호 : <input type="text" name="socialNum" id="socialNum"></td>
				</tr>
				<tr>
					<td>주소 : <input type="text" name="address" id="address"></td>
				</tr>
				<tr>
					<td>* 주소는 (시/도)만 입력해주세요 (예: 경기도, 서울특별시, 경상남도 등)</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td><input type="button" value="가입신청"></td>
					<td><input type="button" value="다시입력"></td>
					<td><input type="button" value="취소"></td>
				</tr>
			</tfoot>
		</table>
	</form>
	

</body>
</html>