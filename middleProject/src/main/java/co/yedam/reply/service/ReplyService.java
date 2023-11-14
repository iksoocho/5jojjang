package co.yedam.reply.service;

import java.util.List;



public interface ReplyService {
	
	public List<ReplyVO> replyList(int rpqno);
	public boolean addReply(ReplyVO vo);
	public boolean removeReply(int rpno);
	
	
	
}
