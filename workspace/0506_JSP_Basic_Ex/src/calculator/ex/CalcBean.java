package calculator.ex;

public class CalcBean {
	//첫번째 => 필드(프로퍼티) 선언
	private int num1 = 0;
	private int num2 = 0;
	private String operator = "";
	private int result = 0;
	
	
	//세번째 => 구현 매서드
	public void calculator() {
		if(operator.equals("+")) {
			result = num1 + num2 ;
		} else if(operator.equals("-")) {
			result =  num1 = num2;
		} else if(operator.equals("*")) {
			result =  num1 * num2 ;
		} else if(operator.equals("/")) {
			result =  num1 / num2 ;
		}
	}
	
	//필드 하나당 getter, setter 메서드
	public int getNum1() {		return num1;	}
	public void setNum1(int num1) {		this.num1 = num1;	}
	public int getNum2() {		return num2;	}
	public void setNum2(int num2) {		this.num2 = num2;	}
	public String getOperator() {		return operator;	}
	public void setOperator(String operator) {		this.operator = operator;	}
	public int getResult() {		return result;	}
	public void setResult(int result) {		this.result = result;	}
}
