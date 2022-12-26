package biz.board;

import java.sql.Date;

/*
문의게시판
*/
public class BoardVO {
	// 멤버변수
	private int seq;
	private String type;
	private String choice;
	private String title;
	private String content;
	private String user_name;
	private String user_email;
	private String first_tel;
	private String second_tel;
	private Date regdate;
	private int cnt;
	private int ref;
	private int re_step;
	private int re_level;
	
	// 디폴트 생성자
	public BoardVO() {}

	// Setter Getter
	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getChoice() {
		return choice;
	}

	public void setChoice(String choice) {
		this.choice = choice;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getFirst_tel() {
		return first_tel;
	}

	public void setFirst_tel(String first_tel) {
		this.first_tel = first_tel;
	}

	public String getSecond_tel() {
		return second_tel;
	}

	public void setSecond_tel(String second_tel) {
		this.second_tel = second_tel;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public int getRe_step() {
		return re_step;
	}

	public void setRe_step(int re_step) {
		this.re_step = re_step;
	}

	public int getRe_level() {
		return re_level;
	}

	public void setRe_level(int re_level) {
		this.re_level = re_level;
	}


	
}
