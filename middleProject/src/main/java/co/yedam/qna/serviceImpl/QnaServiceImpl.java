package co.yedam.qna.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.common.DataSourceMybatis;
import co.yedam.qna.mapper.QnaMapper;
import co.yedam.qna.service.QnaService;
import co.yedam.qna.service.QnaVO;

public class QnaServiceImpl implements QnaService {

	SqlSession sqlSession = DataSourceMybatis.getInstance().openSession(true); //true 넣어주면 자동 commit됨.
	QnaMapper mapper = sqlSession.getMapper(QnaMapper.class);//인터페이스 , 실제인스턴스
	
	@Override
	public List<QnaVO> qnaList(int page) {
		return mapper.selectList(page);
	}

	@Override
	public QnaVO getQna(int qno) {
		return mapper.select(qno);
	}

	@Override
	public boolean addQna(QnaVO vo) {
		return mapper.insert(vo) == 1;
	}

	@Override
	public boolean editQna(QnaVO vo) {
		return mapper.update(vo) == 1; 
	}

	@Override
	public boolean removeQna(int qno) {
		return mapper.delete(qno) == 1;
	}
	
	@Override
	public int getTotalCnt() {
		return mapper.getTotalCnt();
	}

}
