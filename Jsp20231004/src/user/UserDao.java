package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import config.DBconfig;

public class UserDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	DBconfig dbconfig=new DBconfig();
	
	public UserDao() {
		try {
			String dbURL=dbconfig.getDBUrl();
			String dbID=dbconfig.getDBId();
			String dbPW=dbconfig.getDBPw();
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection(dbURL,dbID,dbPW);
					
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String userId, String userPw) {
		StringBuilder sb=new StringBuilder();
		sb.append("SELECT userPW FROM user \n");
		sb.append("WHERE userID=?");
		
		try {
			pstmt=conn.prepareStatement(sb.toString());
			pstmt.setString(1, userId);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPw)) {
					return 1;//로그인 성공
				}
				else return 0;//비밀번호 틀림
			}
			return -1;// ID 가 없을때
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2;// 데이터베이스 오류
	}
}
