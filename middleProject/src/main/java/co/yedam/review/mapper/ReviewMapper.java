package co.yedam.review.mapper;

import java.util.List;

import co.yedam.review.service.ReviewVO;


public interface ReviewMapper {

	public List<ReviewVO> selectList(); //전체
	public ReviewVO select(int rno); //하나
	public int insertReview(ReviewVO vo); // 등록
	public int updateReview(ReviewVO vo); //수정
	public int deleteReview(int rno); //삭제

}
