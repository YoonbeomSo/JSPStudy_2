package center;
/*
SQL> CREATE TABLE care_center(
  2  num number,
  3  id varchar2(15),
  4  subject varchar2(100),
  5  content varchar2(500),
  6  filename varchar2(256),
  7  hit number,
  8  writetime varchar2(20),
  9  primary key(num)
 10  );
Table created.

SQL> CREATE SEQUENCE care_center_seq INCREMENT BY 1 START WITH 1;
Sequence created.

SQL> commit;
Commit complete.
 */
public class CenterDTO {
	private int num; // 게시글 번호
	private String id; // 작성자
	private String subject; //제목
	private String content; // 내용
	private String fileName; // 파일이름
	private int hit; //조회수
	private String writeTime; //작성일
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getWriteTime() {
		return writeTime;
	}
	public void setWriteTime(String writeTime) {
		this.writeTime = writeTime;
	}
	
	
}
