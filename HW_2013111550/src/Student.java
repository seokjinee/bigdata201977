
public class Student implements Comparable<Student>{
	private int ID;
	private String name;
	private String dept;
	private int grade;
	public int compareTo(Student a) {  //������� 0, -1, 1 �� ������ ������ ������  int
		return this.dept.compareTo(a.dept);
	}

	public Student(int ID, String name,String dept,int grade) { 
		this.ID = ID;
		this.name = name;
		this.dept = dept;
		this.grade = grade;
	}
	public int getID() {
		return ID;
	}
	public String getName() {
		return name;
	}
	public String getDept() {
		return dept;
	}
	public int getGrade() {
		return grade;
	}

}
