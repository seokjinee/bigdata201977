import java.util.Arrays;
import java.util.Comparator;
public class HW_1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("�ǽ�����1");
		Student[] a = {
				new Student(12051,"Ȳ**","�濵",4),
				new Student(15002,"��**","������",2),
				new Student(14069,"��**","����",3),
				new Student(12481,"��**","����",4),
				new Student(16962,"��**","����",1),
				new Student(15505,"��**","����",2),
				new Student(14758,"��**","��ǻ��",2)
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
