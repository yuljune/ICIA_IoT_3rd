<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
    <head>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <style>
    
    </style>
    </head>
    <body>
    	<table>
			<tr>
				<td>아이디</td>
				<td>
					<input type="text" id="user_id"/>
					<input id="overlay" type="button" value="중복확인"/>
				</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" id="user_pw"/></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td>
					<input type="password" id="pwChk"/><br/>
					<span id="matchMsg"></span>
				</td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" id="user_name"/></td>
			</tr>
			<tr>
				<td>멘토/멘티</td>
				<td>
					<input type="radio" name="user_type" value="mento"/>멘토
					<input type="radio" name="user_type" value="mentee"/>멘티
				</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email"/></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="phone"/> *번호 입력시 '-'를 제외</td>
			</tr>
			<tr>
				<td>소속</td>
				<td><input type="text" name="assign"/> *소속이 없으면 '없음'이라 입력 ex)OO대학교</td>
			</tr>
			<tr>
				<td>최종학력</td>
				<td>
					<select name="grade">
						<option value="grade">고등학교</option>
						<option value="grade">대학(2,3년제)</option>
						<option value="grade">대학교(재학, 졸업)</option>
						<option value="grade">석사</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2">전문 분야</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="checkbox" name="skill1" value=""/>ASP
					<input type="checkbox" name="skill2" value=""/>java,JSP
					<input type="checkbox" name="skill3" value=""/>PHP
					<input type="checkbox" name="skill4" value=""/>XML
					<input type="checkbox" name="skill5" value=""/>HTML<br>
					<input type="checkbox" name="skill6" value=""/>.NET
					<input type="checkbox" name="skill7" value=""/>APM
					<input type="checkbox" name="skill8" value=""/>Ajax
					<input type="checkbox" name="skill9" value=""/>PERL
					<input type="checkbox" name="skill10" value=""/>Rudy<br>
					<input type="checkbox" name="skill11" value=""/>Python
					<input type="checkbox" name="skill12" value=""/>프론트엔드
					<input type="checkbox" name="skill13" value=""/>백엔드
					<input type="checkbox" name="skill14" value=""/>Linux
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input id="regist" type="button" value="회원가입"/>
					<input type="reset" value="취소" />
				</td>
			</tr>
		</table>
    </body>
    <script>

    </script>
</html>