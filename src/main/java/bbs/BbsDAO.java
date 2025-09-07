package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BbsDAO {
	private Connection conn;
	//private PreparedStatement pstmt;
	// write를 할 때 얘가 전역변수여서 왔다갔다 하는 사이에 다시 해당 객체를 반환하지 않아서 생긴 문제 -> 지역변수로 선언하자.
	private ResultSet rs;
	
	public BbsDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/OBD";
			String dbID = "root";
			String dbPassword = "lem@ndem@n123";
			Class.forName("com.mysql.cj.jdbc.Driver");//드라이버를 찾는 부분
			conn = DriverManager.getConnection(dbURL,dbID,dbPassword); //드라이버 접속 정보 담기
			
			System.out.println("DB 연결 성공");
		} catch(Exception e) {
			System.out.println("DB 연결 실패");
			e.printStackTrace();
		}
	}
	public int getNext() {
		String SQL = "SELECT bbsID FROM bbs ORDER BY bbsID DESC";
		PreparedStatement pstmt;
		try {
			pstmt=conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1)+1;
			}
			return 1; // 게시글이 첫 번쨰인 경우
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("getNext 실패");
		}
		return -1;
	}
	
	public String getDate() {
		PreparedStatement pstmt;
		String SQL = "SELECT NOW()";
		try {
			pstmt=conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();
			if (rs.next()) return rs.getString(1);
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("getDate 실패");
		}
		return "";
		
	}
	
	public int write(int bbsType, String bbsTitle, String userID, String bbsContent, int bbsWorkflow, int bbsRangeView, int bbsRangeComment) {
		//String SQL = "INSERT INTO bbs VALUES(?,0,'temp','temp','2025-06-18 15:28:52','temp',0,0,0,1)";
		String SQL = "INSERT INTO bbs VALUES(?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt;
		try {
			pstmt = conn.prepareStatement(SQL);
			
			pstmt.setInt(1, getNext());
			pstmt.setInt(2, bbsType);
			pstmt.setString(3, bbsTitle);
			pstmt.setString(4, userID);
			pstmt.setString(5, getDate());
			pstmt.setString(6, bbsContent);
			pstmt.setInt(7, bbsWorkflow);
			pstmt.setInt(8, bbsRangeView);
			pstmt.setInt(9, bbsRangeComment);
			pstmt.setInt(10, 1);
			
			return pstmt.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("write 실패");
			
		}
		return -1;
	}
}
