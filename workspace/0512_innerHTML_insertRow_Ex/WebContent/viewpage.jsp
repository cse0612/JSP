<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%
	request.setCharacterEncoding("UTF-8");

	String fileNames = "";
	String eName = "";
	File file = null;
	String savePath = "C:/Fileupload/filestorage";
	final String encoding = "UTF-8";
	final int maxSize = 10 * 1024 * 1024; //10mb
	MultipartRequest multi = null;
	
	try {
		/* 
		전송을 담당할 컴포넌트를 생성하고 
		파일을 전송(전송할 파일명을 가지고 있는 객체, 서버상의 절대경로, 최대 업로드될 파일 크기, 인코딩, 중복파일처리)
		*/
		multi = new MultipartRequest(request, savePath, maxSize, encoding,	new DefaultFileRenamePolicy());
		

		// 업로드 된 파일들에 대한 이름을 Enumeration객체에 String형태로 담아 반환한다. 
		Enumeration files = multi.getFileNames();
		
		//요소가 있을때까지 반복
		while (files.hasMoreElements()) {
			eName = (String)files.nextElement();   // 파일명정보 Enumeration 의 다음 요소를 변수에 저장한다.
			//getFile(String name)
			//업로드 된 파일의 File객체를 얻는다. 우리는 이 객체로부터 파일사이즈 등의 정보를 얻어낼 수 있다. 
			file = multi.getFile(eName);		  
			// 업로드파일 정보 출력 변수
			fileNames += "업로드된 파일명 : " + file.getName() + "<br>";
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동적 다중 파일 업로드</title>
</head>
<body>
작성자 : <%=multi.getParameter("name") %>  <br>
제   목 : <%=multi.getParameter("subject") %> <br><br>
<%=fileNames %>
${fileNames}
</body>
</html>

