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
<script src="../resources/js/jquery-3.6.0.js"></script>
<script>
	$(function(){
		fnIdCheck();
	})
	
	function fnIdCheck(){
		var reg = /^[a-zA-Z0-9]{8,12}$/;
		$('#id').on('keyup', function(e){
			if(reg.test($('#id').val()) == false){
				$('#idResult').text('아이디는 영문,숫자조합 8자리 이상 12자리 이하입니다.');
				$('#idResult').css('color', 'red');
				$('#id').focus();
				e.preventDefault();
				return;
			} else if($('#id').val() == ''){
				alert('아이디를 입력하세요.');
				$('#idResult').text('아이디를 입력해주세요.');
				$('#idResult').css('color', 'red');
				$('#id').focus();
			}
		})
		
		if($('#id').val() != '') {
			$('#btn_id').on('click', function(){
				$.ajax({
					type : 'post',
					url :  '${contextPath}/member/idCheck',
					data : 'id=' + $('#id').val(),
					dataType : 'json',
					success : function(data){
						if(data == null){
							$('#idResult').text('사용가능한 아이디입니다.');
							$('#idResult').css("color", "blue");
						} else {
							alert('아이디가 존재합니다. 다른 아이디를 입력해주세요.');
							$('#idResult').text("사용중인 아이디입니다.");
							$('#idResult').css("color", "red");
							$('#id').val('');
							$('#id').focus();
						}
					}, 
					error : function(error){
						alert('error : ' + idCehck.text(error.responseText));
						$('#id').val('');
						$('#id').focus();
					}
				});
			})
		}
	}
	
</script>
<body>
	
	<form id="signForm" action="${contextPath}/member/signInMember" method="post">
		<table align="center">
			<caption>회원가입</caption>
			<tbody>
				<tr>
					<th scope="row">
						<label for="id">ID</label>
					</th>
					<td>
						<input type="text" name="id" id="id" placeholder="영문,숫자 조합(8~12자)">
						<input type="button" value="중복체크" id="btn_id">
						<div id="idResult"></div>
					</td>
				</tr>
				<tr>
					<th scope="row">
						<label for="pw">비밀번호</label>
					</th>
					<td>
						<input type="password" name="pw" id="pw" placeholder="영문,숫자,특수기호 중 2가지 이상 조합">
					</td>
				</tr>
				<tr>
					<th scope="row">
						<label for="pwConfirm">비밀번호 확인</label>
					</th>
					<td>
						<input type="password" name="pwConfirm" id="pwConfirm" placeholder="영문,숫자,특수기호 중 2가지 이상 조합">
					</td>
				</tr>
				<tr>
					<th scope="row">
						<label for="name">이름</label>
					</th>
					<td>
						<input type="text" name="name" id="name">
					</td>
				</tr>
				<tr>
					<th scope="row">
						<label for="email1">이메일</label>
					</th>
					<td>
						<input type="text" name="email1" id="email1">@<input type="text" name="email2" id="email2">
					</td>
				</tr>
				<tr>
					<th scope="row">
						<label for="phone1">휴대폰</label>
					</th>
					<td>
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
					<th scope="row">
						<label for="gender">성별</label>
					</th>
					<td>
						<input type="radio" name="gender" value="남자" id="male">
						<label for="male">남자</label> 
						<input type="radio" name="gender" value="여자" id="female">
						<label for="female">여자</label> 
					</td>
				</tr>
				<tr>
					<th scope="row">
						<label for="socialNum">주민번호</label>
					</th>
					<td>
						<input type="text" name="socialNum" id="socialNum">
					</td>
				</tr>
				<tr>
					<th scope="row">
						<label for="address">주소</label>
					</th>
					<td>
						<input type="text" name="address" id="address">
						<div>
							* 주소는 (시/도)만 입력해주세요 (예: 경기도, 서울특별시, 경상남도 등)
						</div>
					</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td>
						<button>가입신청</button>
						<input type="reset" value="다시입력">
						<input type="button" value="취소" onclick="location.href='${contextPath}'">
					</td>
				</tr>
			</tfoot>
		</table>
	</form>
	
</body>
</html>