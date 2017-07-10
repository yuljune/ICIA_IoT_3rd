<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
    <head>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
    <style>
    	.loginbtn{
    		height:50px;
    	}
    </style>
    </head>
    <body>
	    <form action="login" method="post">
	   		<table>
	   			<tr>
	   				<td>아이디</td>
	   				<td><input type="text" name="user_id"/></td>
	   				<td rowspan="2"> 
	   					<input id="login" class="loginbtn" type="submit" value="로그인"/>
	   				</td>
	   			</tr>
	   			<tr>
	   				<td>비밀번호</td>
	   				<td><input type="password" name="user_pw"/></td>
	   			</tr>
	   			<tr>
	   			</tr>
	   			<tr>
	   				<td><input type="button" value="회원가입" onclick="location.href='joinForm'"/></td>
	   				<td><input type="button" value="아이디/비밀번호 찾기" onclick="location.href='find'"/></td>
	   			</tr>
	        </table>
	    </form>
    </body>
    <script>

    </script>
</html>