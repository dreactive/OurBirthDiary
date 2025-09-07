package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {//생성자 : 실행 시 제일 먼저 실행되는 거
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
	
	public int login(String userID, String userPassword) {
		String SQL = "SELECT userPassword FROM user WHERE userID=?";
		try {
			pstmt= conn.prepareStatement(SQL);
			pstmt.setString(1, userID);
			rs=pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString(1).equals(userPassword)) {
					return 1;
				}
				return 0;
			}
			else {
				return -1;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2;
	}
	
	public int join(User user) {
		String SQL = "INSERT INTO user VALUES(?,?,?,?,?,?,?,?,?,0,?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserType());
			pstmt.setString(3, user.getUserPassword());
			pstmt.setString(4, user.getUserEmail());
			pstmt.setString(5, user.getUserName());
			pstmt.setString(6, user.getUserPhone());
			pstmt.setString(7, user.getUserAddress1());
			pstmt.setString(8, user.getUserAddress2());
			pstmt.setString(9, user.getUserBirth());
			pstmt.setString(10, "http://imageSource");
			
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //PK 중복
	}
	
	public User getUser(String userID) {
	    User user = null;
	    String SQL = "SELECT * FROM USER WHERE userID = ?";
	    try {
	        PreparedStatement pstmt = conn.prepareStatement(SQL);
	        pstmt.setString(1, userID);
	        ResultSet rs = pstmt.executeQuery();
	        if (rs.next()) {
	            user = new User();
	            user.setUserID(rs.getString("userID"));
	            user.setUserName(rs.getString("userName"));
	            user.setUserPassword(rs.getString("userPassword"));
	            user.setUserPhone(rs.getString("userPhone"));
	            user.setUserEmail(rs.getString("userEmail"));
	            user.setUserBirth(rs.getString("userBirth"));
	            user.setUserAddress1(rs.getString("userAddress1"));
	            user.setUserAddress2(rs.getString("userAddress2"));
	            user.setUserType(rs.getString("userType"));
	            // 기타 필요한 필드들
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return user;
	}
	public int getUserWorkflow(String userID) {
	    int userWorkflow = 0;
	    String SQL = "SELECT userWorkflow FROM user WHERE userID = ?";
	    try {
	        PreparedStatement pstmt = conn.prepareStatement(SQL);
	        pstmt.setString(1, userID);
	        ResultSet rs = pstmt.executeQuery();
	        if (rs.next()) {
	            userWorkflow = rs.getInt("userWorkflow");
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return userWorkflow;
	}
	
	public int updateWorkflow(int num, String userID) {
	    String SQL = "UPDATE user SET userWorkflow=? WHERE userID = ?";
	    try {
        	PreparedStatement pstmt = conn.prepareStatement(SQL);
	        pstmt.setInt(1, num);
	        pstmt.setString(2, userID);
			return pstmt.executeUpdate();
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return -1;
	}
}
