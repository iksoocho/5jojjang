package co.yedam.review.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.review.service.ReviewService;
import co.yedam.review.service.ReviewVO;
import co.yedam.review.serviceImpl.ReviewServiceImpl;

public class ReviewListControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		String path = "review/reviewList.tiles";
		
		ReviewService svc = new ReviewServiceImpl();
		List<ReviewVO> list = svc.reviewList();
		req.setAttribute("rlist", list);
				
		// 나중에 경로 path로 바꾸기! 
		try {
			req.getRequestDispatcher(path).forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
			} 

	}

}
