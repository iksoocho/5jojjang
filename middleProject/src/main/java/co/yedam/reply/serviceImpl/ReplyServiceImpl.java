package co.yedam.reply.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.common.DataSourceMybatis;
import co.yedam.qna.service.QnaVO;
import co.yedam.reply.mapper.ReplyMapper;
import co.yedam.reply.service.ReplyService;
import co.yedam.reply.service.ReplyVO;


public class ReplyServiceImpl implements ReplyService {

	SqlSession sqlSession = DataSourceMybatis.getInstance().openSession(true); //true 넣어주면 자동 commit됨.
	ReplyMapper mapper = sqlSession.getMapper(ReplyMapper.class);//인터페이스 , 실제인스턴스
	
	@Override
	public List<ReplyVO> replyList(int rpqno) {
		return mapper.selectList(rpqno);
	}

	@Override
	public boolean addReply(ReplyVO vo) {
		return mapper.insertReply(vo) == 1;
	}

	@Override
	public boolean removeReply(int qno) {
		return mapper.deleteReply(qno) == 1;
	}

}
