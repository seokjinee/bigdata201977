//�Ǻ���ġ ������ ����ϴ� �ڹٸ޼ҵ带 ��ȯ �˰������� �ۼ��Ͻÿ�. (0,1,1,2,3,5,8,13,21--)
//�Ǻ���ġ�� ��ȯ�� ������� �ʰ� �����غ���
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
