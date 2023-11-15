package co.yedam.qna.service;

import java.util.List;

public interface QnaService {
	
	public List<QnaVO> qnaList();
	public QnaVO getQna(int qno);
	public boolean addQna(QnaVO vo);
	public boolean editQna(QnaVO vo);
	public boolean removeQna(int qno);
	
	//전체 게시글 건수
	public int getTotalCnt(int qno);
	
}
