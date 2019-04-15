
public class main {

	public static void main(String[] args) {
		System.out.println("배열 스택 - 실습과제");
		
		ArrayStack<String> stack = new ArrayStack<String>();
		stack.push("apple");
		stack.push("orange");
		stack.push("cherry");
		System.out.println(stack.peek()+"\t[stack top]");
		stack.push("pear");
		stack.show();
		stack.pop();
		System.out.println(stack.peek()+"\t[stack top]");
		stack.push("grape");
		stack.show();
	}

}
