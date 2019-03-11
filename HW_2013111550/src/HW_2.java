import java.util.Arrays;

public class HW_2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//String s[] ={"Banana","Kiwi","Apple","Pear","Cherry","Grape","Lemon"};
		String[] Fruits = {
				new String("Banana"),new String("Kiwi"),
				new String("Apple"),new String("Mango")
		};
		Arrays.sort(Fruits);
		System.out.print(Arrays.toString(Fruits));


	}

}
