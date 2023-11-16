package co.yedam.qna.mapper;

import java.util.List;

import co.yedam.qna.service.QnaVO;

public interface QnaMapper {

	public List<QnaVO> selectList(int page);
	public QnaVO select(int qno);
	public int insert(QnaVO vo);
	public int update(QnaVO vo);
	public int delete(int qno);

	//페이징하려고
	public int getTotalCnt();
	
	//public int updateCnt(int boardNo); //조회수
}
