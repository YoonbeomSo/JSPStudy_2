package center;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import member.MemberDTO;


public class CenterDAO {
	private Connection con;

	public CenterDAO() {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "oracle";
		String password = "3605";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void insert(CenterDTO center) {
		PreparedStatement ps = null;
		String sql = "INSERT INTO care_center VALUES(care_center_seq.nextval,?,?,?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, center.getId());
			ps.setString(2, center.getSubject());
			ps.setString(3, center.getContent());
			ps.setString(4, center.getFileName());
			ps.setInt(5, center.getHit());
			ps.setString(6, center.getWriteTime());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public ArrayList<CenterDTO> selectAll() {
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<CenterDTO> list = new ArrayList<CenterDTO>();
		String sql = "SELECT num, id, subject, writetime, hit FROM care_center ORDER BY num DESC";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				CenterDTO center = new CenterDTO();
				center.setNum(rs.getInt("num"));
				center.setId(rs.getString("id"));
				center.setSubject(rs.getString("subject"));
				center.setWriteTime(rs.getString("writetime"));
				center.setHit(rs.getInt("hit"));
				list.add(center);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	
	public ArrayList<CenterDTO> search(String find, String data) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		ArrayList<CenterDTO> list = new ArrayList<CenterDTO>();
		String sql = "";
		
		if(find.equals("subject"))
			sql = "SELECT num, id, subject, writetime, hit FROM care_center WHERE subject LIKE ? ORDER BY num DESC";
		else if(find.equals("content"))
			sql = "SELECT num, id, subject, writetime, hit FROM care_center WHERE content LIKE ? ORDER BY num DESC";
		else
			sql = "SELECT num, id, subject, writetime, hit FROM care_center WHERE id LIKE ? ORDER BY num DESC";
			
		
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, "%" + data + "%");
			rs = ps.executeQuery();
			while (rs.next()) {
				CenterDTO center = new CenterDTO();
				center.setNum(rs.getInt("num"));
				center.setId(rs.getString("id"));
				center.setSubject(rs.getString("subject"));
				center.setWriteTime(rs.getString("writetime"));
				center.setHit(rs.getInt("hit"));
				list.add(center);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	
	public CenterDTO selectNum(int num) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM care_center WHERE num=?";
		
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, num);
			rs = ps.executeQuery();
			if (rs.next()) {
				CenterDTO center = new CenterDTO();
				center.setNum(rs.getInt("num"));
				center.setId(rs.getString("id"));
				center.setSubject(rs.getString("subject"));
				center.setContent(rs.getString("content"));
				center.setFileName(rs.getString("filename"));
				center.setHit(rs.getInt("hit"));
				center.setWriteTime(rs.getString("writetime"));
				return center;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
	
	public void incrementHit(int hit, int num) {
		PreparedStatement ps = null;
		String sql = "UPDATE care_center SET hit=? WHERE num=?";
		
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, hit);
			ps.setInt(2, num);
			ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	public void delete(int num) {
		PreparedStatement ps = null;
		String sql = "DELETE FROM care_center WHERE num=?";
		
		try {
			ps = con.prepareStatement(sql);
			ps.setInt(1, num);
			ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(ps != null) ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public void modify(CenterDTO center) {
		PreparedStatement ps;
		String sql = "UPDATE care_center SET subject=?, content=?, fileName=? WHERE num=?";
		
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, center.getSubject());
			ps.setString(2, center.getContent());
			ps.setString(3, center.getFileName());
			ps.setInt(4, center.getNum());

			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
