package lastindexOf_Ex;

public class Test {

	public static void main(String[] args) {
		
		String url = "http://localhost:8080/Model2_Board/login.do";
		
		int lastIndexOf = url.lastIndexOf("/");
		System.out.println(url.substring(lastIndexOf));	// 마지막 /가 34번째 문자
		
		
	}
	
	
}
