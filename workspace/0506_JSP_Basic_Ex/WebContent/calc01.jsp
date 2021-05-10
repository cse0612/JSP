<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!	int result;	// 전역변수 초기화
	//함수는 선언부에서 사용
	public int calc(int num1, int num2, String operator) {
		if(operator.equals("+")) {
			result= num1 + num2 ;
		} else if(operator.equals("-")) {
			result=  num1 = num2;
		} else if(operator.equals("*")) {
			result=  num1 * num2 ;
		} else if(operator.equals("/")) {
			result=  num1 / num2 ;
		}
		return result;
	}
%>

<%	
	if(request.getMethod().equals("POST")) {
		String operator = request.getParameter("operator");
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		result = calc(num1, num2, operator);
	}
%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>하나의 jsp파일로 사칙연산 계산기 구현</title>
</head>
<body>
<h3>계산기</h3>
<hr>
<form name="form1"  method="POST"> 
<input type="text"name="num1"> 
<select name="operator">  
<option selected>+</option>
<option>+</option>
<option>*</option>
<option>/</option>
</select>
<input type="text"name ="num2"size="5">

<!-- 버튼 입력시 값 넘어감 -->
<input type="submit" value="계산"name="B1">
<input type="reset" value="다시입력" name="B2">
</form>
<%= result %>
</body>
</html>