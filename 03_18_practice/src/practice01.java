//피보나치 수열을 출력하는 자바메소드를 순환 알고리즘으로 작성하시오. (0,1,1,2,3,5,8,13,21--)
//피보나치를 순환을 사용하지 않고 구현해봐라
public class practice01 {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		for(int n=0;n<=10;n++)
			System.out.println(fib(n));

	}
	public static int fib(int n) {
		if(n==0 || n==1) 
			return n;
		else
			return fib(n-1) + fib(n-2);	

		}
		
	
}
