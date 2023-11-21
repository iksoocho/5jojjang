package co.yedam.review.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.common.DataSourceMybatis;

import co.yedam.review.mapper.ReviewMapper;
import co.yedam.review.service.ReviewService;
import co.yedam.review.service.ReviewVO;

public class ReviewServiceImpl implements ReviewService {

	SqlSession sqlSession = DataSourceMybatis.getInstance().openSession(true); //true 넣어주면 자동 commit됨.
	ReviewMapper mapper = sqlSession.getMapper(ReviewMapper.class);//인터페이스 , 실제인스턴스
	
	@Override
	public List<ReviewVO> reviewList() {
		return mapper.selectList();
	}

	@Override
	public ReviewVO getReview(int rno) {
		return mapper.select(rno);
	}

	@Override
	public boolean addReview(ReviewVO vo) {
		return mapper.insertReview(vo) == 1;
	}

	@Override
	public boolean editReview(ReviewVO vo) {
		return mapper.updateReview(vo) == 1; 
	}

	@Override
	public boolean removeReview(int rno) {
		return mapper.deleteReview(rno) == 1;
	}

	
	@Override
	public List<ReviewVO> myReview(String rid) {
		
		return mapper.selectReview(rid);
	}
}
