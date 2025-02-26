package member;

import java.util.ArrayList;

public class MemberDAO {

	private ArrayList<Member> list;
	private int log = -1;
	private int idx = -1;
	
	public MemberDAO() {
		list = new ArrayList<Member>();
		addDummyUser();
//		log = 1;
	}
	
	public int getLog() {
		return log;
	}
	public void setLog(int logs) {
		log = logs;
	}
	
	private void addDummyUser() {
		Member m1 = new Member("admin","admin","관리자",true);
		Member m2 = new Member("qwer","1111","홍길동",true);
		Member m3 = new Member("aaaa","2222","개똥이",true);
		Member m4 = new Member("abcd","3333","홍길순",false);
		Member m5 = new Member("test","4444","아이유",false);
		
		list.add(m1);
		list.add(m2);
		list.add(m3);
		list.add(m4);
		list.add(m5);
		System.out.println("[데이터 로드 완료]");
	}
	
	public int getListSize() {
		return list.size();
	}
	
	public Member getOneMember(int idx) {
		return list.get(idx);
	}
	public boolean isExistId(String id) {
		
		return list.stream().anyMatch(member -> member.getId().equals(id));
	}
	
	public void insertAMember(String id, String pw, String name, String gender) {
		list.add(new Member(id,pw,name,gender));
		System.out.println("[회원가입 완료]");
	}
	
	public String getListAsTableData() {
		String data = "";
		
		
		for(int i =1 ; i < list.size();i+=1) {
			Member m = list.get(i);
			data+= String.format("<tr><td>%s</td><td>%s</td><td>%s</td><td>%s</td>",
					m.getId(), m.getPw(), m.getName(), m.isGender()?"남성":"여성");
			
			data+="<td><button onClick='location.href=\""+"adminDeletePro.jsp?idx="+i+"\"' > 삭제 </button></td> </tr>";
			
		}
		
		return data;
	}

	public boolean loginCheck(String id, String pw) {
		for(int i = 0; i < list.size(); i++) {
			if(list.get(i).getId().equals(id) && list.get(i).getPw().equals(pw)) {
				idx = i;
				log = 1;
				return true;
			}
		}
		return false;
	}
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idxs) {
		idx = idxs;
	}
	
	public String getUserName(int idx) {
		
		for(int i = 0; i < list.size(); i++) {
			if(idx == i) {
				return list.get(i).getName();
			}
		}
		return "";
		
	}
	public void userUpdate(String name, String gender) {
		
		for(int i = 0; i < list.size(); i++) {
			if(idx == i) {
				list.get(i).setName(name);
				list.get(i).setGender(gender.equals("남성")? true : false);
				return;
			}
		}
	}
	public boolean delPwCheck(String pw) {
		
		for(int i = 0; i < list.size(); i++) {
			if(list.get(idx).getPw().equals(pw)) {
				list.remove(i);
				log = -1;
				idx = -1;
				return true;
			}
		}
		return false;
	}
	public void adminUserDel(int idx) {
		list.remove(idx);
	}
	public boolean adminCheck() {
		if(idx == 0) {
			return true;
		}
		return false;
	}
	
}
