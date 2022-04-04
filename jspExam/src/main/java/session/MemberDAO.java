package session;

import java.util.ArrayList;

public class MemberDAO {
	private static ArrayList<MemberDTO> members = new ArrayList<>();
	
	public MemberDTO selectId(String id) {
		for(MemberDTO member : members) {
			if(member.getId().equals(id))
				return member;
		}
		return null;
	}
	
	public void insert(MemberDTO member) {
		members.add(member);
	}
	
	public ArrayList<MemberDTO> selectAll() {
		return members;
	}
	
	public void update(MemberDTO member) {
		MemberDTO old = selectId(member.getId());
		int index = members.indexOf(old);
		members.set(index, member);
	}
	
	public void delete(MemberDTO member) {
		members.remove(member);
	}
}
