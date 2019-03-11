import java.util.Arrays;
import java.util.Comparator;
public class HW_1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("실습과제1");
		Student[] a = {
				new Student(12051,"황**","경영",4),
				new Student(15002,"백**","디자인",2),
				new Student(14069,"박**","수학",3),
				new Student(12481,"박**","수학",4),
				new Student(16962,"정**","수학",1),
				new Student(15505,"장**","영문",2),
				new Student(14758,"이**","컴퓨터",2)
		};
			
		Arrays.sort(a);
		print(a);

		}

	public static void print(Student[] a) {
		System.out.println();
		for(Student temp:a) {
			System.out.println(temp.getID()+" "+temp.getName()+" "+temp.getDept()+" "+temp.getGrade());
		}
		}
		
	public static void print(int[] a) {
		for(int val: a) {
			System.out.print(val+" ");
		}
		System.out.println();
		

	}

}
