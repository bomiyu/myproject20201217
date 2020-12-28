package reply.service;

import java.sql.Connection;
import java.sql.SQLException;

import jdbc.ConnectionProvider;
import jdbc.JdbcUtil;
import reply.dao.ReplyDao;
import reply.model.Reply;

public class ReplyCountService {
private ReplyDao dao = new ReplyDao();
public Reply Count(int replycount) {
	Connection conn = ConnectionProvider.getConnection();
	
	try {
		Reply count = dao.replyCount(conn, replycount);
		
		return count;
		
	} catch (SQLException e) {
		e.printStackTrace();
		throw new RuntimeException(e);
	}finally {
		JdbcUtil.close(conn);
	}
}

}
