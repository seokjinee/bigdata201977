
public class Main2 {

	public static void main(String[] args) {
		System.out.println("리스트 스택 - 실습과제");
		
		ListStack<String> lstack = new ListStack<String>();
		lstack.push("apple");
		lstack.push("orange");
		lstack.push("cherry");
		System.out.println("[top]\t"+lstack.peek());
		lstack.push("pear");
		lstack.show();
		lstack.pop();
		System.out.println("[top]\t"+lstack.peek());
		lstack.push("grape");
		lstack.show();

	}

}
