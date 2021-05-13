<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동적 다중 파일 업로드</title>
</head>
<body>
	<h3>동적 다중 파일 업로드 하기</h3>
	<form name="myForm" method="post" enctype="multipart/form-data" action="viewpage.jsp" onsubmit="return check();">

		<table border="1">
			<tr>
				<td>작성자</td>
				<td><input type="text" name="name" id="name"></td>
			</tr>
			<tr>
				<td>제 목</td>
				<td><input type="text" name="subject" id="subject"></td>
			</tr>
		</table>
		<br><br>
		<hr>
		<input type="button" value="행추가" onclick="addRow();"> 
		<input type="button" value="행삭제" onclick="deleteRow();"> 
		<br><br>

		check &nbsp;&nbsp;&nbsp;업로드할 파일 이름
		<table id="dynamic_table" border="1">
		</table>

		<br>
		<br> <font color="red">업로드할 파일은 최대 10M까지 가능함</font><br>
		<br> <input type="submit" value="파일 올리기">
	</form>
	<!-- JavaScript -->
	<script>
		var count = 0; // 전역 변수
		//행추가
		function addRow() {
			// table element 찾기
			var dynamicTable = document.getElementById('dynamic_table');
			// 새행(Row) 추가
			var newRow = dynamicTable.insertRow(); //tr tag
			// 새행에 cell 추가
			var cell1 = newRow.insertCell(); //td tag
			var cell2 = newRow.insertCell(); //td tag
			// cell에 텍스트 추가
			cell1.innerHTML = '<input type="checkbox" name="checkboxobj">';
			// file tag name속성값 할당
			cell2.innerHTML = "<input type='file' name='fileUpload" + count + "' id='file'>";	
			count++;
		}
		
		//행삭제
		function delRow() {
			
			var dynamicTable = document.getElementById('dynamic_table');
			
			//  row 갯수만큼 반복하여 checked된 속성값 가져오기
			for(var i = dynamicTable.rows.length-2; i = 0; i--) {
				//체크된값을 가져오기
				var chkbox = dynamicTable.rows[i].cells[0].childNodes[0].checked;
				// 값이 있으면 행 삭제하기 
				if(chkbox) {
					dynamicTable.deleteRow(i);
					count--;
				}
					
			}
		}
		
		// 교수님 소스  -=> 소스 문제 있음
        function deleteRow() {
       
               var table = document.getElementById('dynamic_table');
              /* 
                            기존문제: deleteRow실행시 list 인덱싱의 영향을 줘서 인덱싱이 변경됨
                            해결방법 : 역순으로 삭제 (이유 : list를 반대로 삭제해야 인덱스에 영향을 안주므로)
              */
                for(var i = table.rows.length-1; i >= 0; i--) {
                    var checkbox = document.getElementsByName('checkboxobj');
                    var check = checkbox[i].checked;
                    if(check) {
					//	alert("true i값:" + i);	
                    	table.deleteRow(i);  
                    } else {
                    //	alert("false i값:" + i);
                    }
                }
		}
		
		//파일올리기전 입력값 체크
		function check() {
			if(document.getElementById('name').value == "") {
				alert("작성자를 입력해주세요");
				return false;
			} 
			if(document.getElementById('subject').value == "") {
				alert("제목을 입력해주세요");
				return false;
			}
			
			var file = document.getElementById('file');
			if(file) {
				var fileCheck = file.value;
			
				if(!fileCheck) {
					alert("선택된 파일이 없습니다!!");
					return false;
				}
			} else {
				alert("파일 행을 추가해주세요!");
				return false;
			}
			
			return true;
		}
	</script>
</body>
</html>