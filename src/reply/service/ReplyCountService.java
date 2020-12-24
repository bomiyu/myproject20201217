package reply.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.ConnectionProvider;
import jdbc.JdbcUtil;
import reply.dao.ReplyDao;

public class ReplyCountService {
private ReplyDao dao = new ReplyDao();
public int Count(int replyid) {
	Connection conn = ConnectionProvider.getConnection();
	
	try {
		int count = dao.replyCount(conn, replyid);
		
		return count;
		
	} catch (SQLException e) {
		e.printStackTrace();
		throw new RuntimeException(e);
	}finally {
		JdbcUtil.close(conn);
	}
}

}
