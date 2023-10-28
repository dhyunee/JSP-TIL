package config;

public class DBconfig {
	
	private String DBUrl="jdbc:mysql://localhost:3306/BBS";
	private String DBId="root";
	private String DBPw="root";
	

	public DBconfig(String dBUrl, String dBId, String dBPw) {
		DBUrl = dBUrl;
		DBId = dBId;
		DBPw = dBPw;
	}
	
	public DBconfig() {
	}
	
	public String getDBUrl() {
		return this.DBUrl;
	}
	public String getDBId() {
		return this.DBId;
	}
	public String getDBPw() {
		return this.DBPw;
	}

}


