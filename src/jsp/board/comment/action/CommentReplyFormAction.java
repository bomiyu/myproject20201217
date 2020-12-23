package jsp.board.comment.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jsp.board.comment.model.CommentBean;
import jsp.board.comment.model.CommentDAO;
import mvc.command.Action;
import mvc.command.ActionForward;

public class CommentReplyFormAction implements Action
{
	@Override
	public ActionForward execute(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		ActionForward forward = new ActionForward();
		
		// �θ���� �۹�ȣ�� �����´�.
		int comment_num = Integer.parseInt(request.getParameter("num"));

		CommentDAO dao = CommentDAO.getInstance();
		CommentBean comment = dao.getComment(comment_num);
		
		// ��� ������ request�� �����Ѵ�.
		request.setAttribute("comment", comment);
		
		forward.setRedirect(false);
		forward.setNextPath("board/comment/CommentReplyFrom.jsp");
		
		return forward;
	}
}
