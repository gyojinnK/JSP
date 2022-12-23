package Week6;

public class Calculator {
	private int num1;
	private int num2;
	private String op;
	
	public int calc() {
		int res = 0;
		
		switch(op) {
		case "+" : res = num1 + num2; break;
		case "-" : res = num1 - num2; break;
		case "*" : res = num1 * num2; break;
		case "/" : res = num1 / num2; break;
		}
		return res;
	}
	
	public int getNum1() {
		return num1;
	}
	public void setNum1(int num1) {
		this.num1 = num1;
	}
	public int getNum2() {
		return num2;
	}
	public void setNum2(int num2) {
		this.num2 = num2;
	}
	public String getOp() {
		return op;
	}
	public void setOp(String op) {
		this.op = op;
	}
}
