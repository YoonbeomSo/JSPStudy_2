package actionTag;
/*
SQL> CREATE TABLE beans(
  2  id varchar2(15),
  3  pwd1 varchar2(15),
  4  name varchar2(15),
  5  addr varchar2(30),
  6  tel varchar2(15),
  7  primary key(id)
  8  );
Table created.
 */
public class MemberDTO {
	private String id;
	private String pwd1;
	private String pwd2;
	private String name;
	private String addr;
	private String tel;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd1() {
		return pwd1;
	}
	public void setPwd1(String pwd1) {
		this.pwd1 = pwd1;
	}
	public String getPwd2() {
		return pwd2;
	}
	public void setPwd2(String pwd2) {
		this.pwd2 = pwd2;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	
	
}
