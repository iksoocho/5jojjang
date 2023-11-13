package co.yedam.reply.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.yedam.reply.service.ReplyVO;



public interface ReplyMapper {

	public List<ReplyVO> selectList(@Param("rpqno")int rpqno); // 전체 댓글 helloJSP reply 참고.
	public int insertReply(ReplyVO vo); // 댓글등록
	public int deleteReply(int rpno); // 댓글 삭제


}
