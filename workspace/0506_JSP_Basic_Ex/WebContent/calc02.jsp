<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--  추가 -->
<jsp:useBean id="calc" class="calculator.ex.CalcBean" scope="page" />
<jsp:setProperty name="calc" property="*" />

<%	calc.calculator(); %>

<html>
<head>
<meta charset="UTF-8">
<title>사칙연산 계산기 구현 => 디지안과 프로그램 로직 처리를 분리하여 구현</title>
</head>
<body>
<h3>계산기</h3>
<hr>
<form name="form1"  method="POST"> 
<input type="text"name="num1"> 
<select name="operator">  
<option selected>+</option>
<option>-</option>
<option>*</option>
<option>/</option>
</select>
<input type="text"name ="num2"size="5">

<!-- 버튼 입력시 값 넘어감 -->
<input type="submit" value="계산"name="B1">
<input type="reset" value="다시입력" name="B2">
</form>
계산결과 : <jsp:getProperty name="calc" property="result" /> 
</body>
</html>