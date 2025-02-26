package board;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class BoardDAO {
	
	private ArrayList<Board> list;
	static int num = 1;
	
	public BoardDAO() {
		list = new ArrayList<Board>();
		addDummyUser();
	}
	
	public void addDummyUser() {
		DateFormat sdFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date now = new Date();
		String today = sdFormat.format(now);
		Board b1 = new Board(num, "작성자"+num++,"제목1","내용1",today);
		Board b2 = new Board(num, "작성자"+num++,"제목2","내용2",today);
		Board b3 = new Board(num, "작성자"+num++,"제목3","내용3",today);
		
		list.add(b1);
		list.add(b2);
		list.add(b3);
		System.out.println("[데이터 로드 완료]");
		
	}
	
	public String getListAsTableData() {
		String data = "";
		
		for(int i = 0; i < list.size(); i++) {
			Board b = list.get(i);
			data += String.format("<tr><td>%d</td><td>%s</td><td>%s</td><td>%s</td><td>%s</td>",
					b.getNo(),b.getWriter(),b.getRegDate(),b.getSubject(),b.getContents());
			data+="<td><button onClick='location.href=\""+"_06_deleteBoardPro.jsp?idx="+(i+1)+"\"' > 삭제 </button></td> </tr>";
			
		}
		
		return data;
	}
	public int getListSize() {
		return list.size();
	}
	
	
}
