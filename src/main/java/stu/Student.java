package stu;

public class Student {
	//이름, 나이, 성적
	//매개변수로 맴버를 변경하는 생성자, 
	//getter, setter
	
	private String name;
	private int age;
	private int score;
	
	//기본 생성자
	public Student() {
		
	}
	
	//매개변수를 받는 생성자
	public Student(String name, int age, int score) {
		super();
		this.name = name;
		this.age = age;
		this.score = score;
	}

	
	//getter, setter
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	
	
	
}
