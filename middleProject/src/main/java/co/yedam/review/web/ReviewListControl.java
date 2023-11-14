package co.yedam.review.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.review.Service.ReviewService;
import co.yedam.review.Service.ReviewVO;
import co.yedam.review.ServiceImpl.ReviewServiceImpl;

public class ReviewListControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		//String path = "qna/qnaList.tiles";
		
		ReviewService svc = new ReviewServiceImpl();
		List<ReviewVO> list = svc.reviewList();
		req.setAttribute("rlist", list);
				
		// 나중에 경로 path로 바꾸기! 
		try {
			req.getRequestDispatcher("WEB-INF/review/reviewList.jsp").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
			} 

	}

}
