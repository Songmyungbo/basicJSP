package member;

public class Member {
	private String id;
	private String pw;
	private String name;
	private boolean gender;
	public Member(String id, String pw, String name, String gender) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.gender = gender.equals("남성")? true : false;
	}
	
	public Member(String id, String pw, String name, boolean gender) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.gender = gender;
	}
	
	
	
	@Override
	public String toString() {
		return "Member [id=" + id + ", pw=" + pw + ", name=" + name + ", gender=" + gender + "]";
	}
	public String getId() {
		return id;
	}
	public String getPw() {
		return pw;
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public boolean isGender() {
		return gender;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public void setGender(boolean gender) {
		this.gender = gender;
	}
	

}