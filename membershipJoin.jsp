<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
    <title>Insert title here</title>
    <link rel="stylesheet" href="resources/css/membershipJoin.css">
	<link rel="icon" href="resouces/img/iconA.png">
    </head>
    <body>
    	<table id="table">
            
            <tr>
                <td>▶이름</td>
                <td><input type="text" id="user_name" placeholder=""/></td>  
            </tr>
            
            <tr>
                <td>▶아이디</td>
                <td><input type="text" id="user_id" placeholder=""/></td>
                
            </tr>
           
            <tr>
                <td>▶비밀번호</td>
                <td><input type="password" id="user_pw" placeholder=""/></td>
            </tr>
            <tr>
                <td>▶비밀번호확인</td>
                <td>
                	<input type="password" id="pw_chk" placeholder=""/>
                	<span id="matchMsg"></span>
                </td>
            </tr>
            <tr>
                <td>▶이메일</td>
                <td>
                	<input type="email" id="email" placeholder=""/> @
                	<input type="text" id="dotcom" style="width:100;"/>
                	<select id="address" onchange="addMail(this)">
                		<option id="direct">직접입력</option>
                		<option id="google" value="google.com">google.com</option>
                		<option id="naver" value="naver.com">naver.com</option>
                		<option id="daum" value="daum.net">daum.net</option>
                		<option id="nate" value="nate.com">nate.com</option>
                	</select>
                
                </td>
            </tr>
            <tr>
                <td>▶생년월일</td>
                <td>
                    <select id="year">
                        <%for(int i = 2017; i >= 1901; i--){ %>
                        <option value="<%=i %>"><%=i %></option>
                    
                        <%} %>
                    </select>년
                    <select id="month">
                        <%for(int i = 1;i <= 12; i++){ %>
                        <option value="<%=i %>"><%=i %></option>
                        <%} %>
                    </select>월
                    <select id="date">
                    	<%for(int i = 1;i <= 31; i++){ %>
                        <option value="<%=i %>"><%=i %></option>
                        <%} %>
                    </select>일
                </td>
            </tr>
            <tr>
                <td>▶성별</td>
                <td>
                	<select id="gender">
                		<option selected="selected">성별</option>
                		<option >남성</option>
                		<option>여성</option>
                	</select>
                </td>
            </tr>
            
        </table>
    </body>
    <script>
    	var chkSum = 0;
    	
 		function addMail(elem){
 			console.log(elem.value);
 			var addr = elem.value;
 			if(addr == "직접입력"){
 				$("#dotcom").val("");
 			}else{
 				$("#dotcom").val(addr);
 			}
 		}
 		$("#user_pw").keyup(function(){
			if($("#user_pw").val() != $("#pw_chk").val()){
				$("#matchMsg").html("일치 하지 않습니다.");
				$("#matchMsg").css("color","red");
			}else{
				$("#matchMsg").html("일치 합니다.");
				$("#matchMsg").css("color","green");
				chkSum ++;
			}
			if($("#pw_chk").val() == "" || $("#user_pw").val() == ""){
				$("#matchMsg").html("");
			}
		});
 		
 		$("#pw_chk").keyup(function(){
			if($("#user_pw").val() != $("#pw_chk").val()){
				$("#matchMsg").html("일치 하지 않습니다.");
				$("#matchMsg").css("color","red");
			}else{
				$("#matchMsg").html("일치 합니다.");
				$("#matchMsg").css("color","green");
				chkSum ++;
			}
			if($("#pw_chk").val() == "" || $("#user_pw").val() == ""){
				$("#matchMsg").html("");
			}
		});
 		
    </script>
</html>