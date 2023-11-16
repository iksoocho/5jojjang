package co.yedam.review.service;

import java.util.List;




public interface ReviewService {
	
	public List<ReviewVO> reviewList();
	public ReviewVO getReview(int rno);
	public boolean addReview(ReviewVO vo);
	public boolean editReview(ReviewVO vo);
	public boolean removeReview(int rno);
	
	
	
}
