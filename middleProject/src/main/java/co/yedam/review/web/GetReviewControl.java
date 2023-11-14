package co.yedam.review.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.review.service.ReviewService;
import co.yedam.review.service.ReviewVO;
import co.yedam.review.serviceImpl.ReviewServiceImpl;

public class GetReviewControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		//String path = "qna/qnaList.tiles";
		
		String rno = req.getParameter("rno"); 
		ReviewService svc = new ReviewServiceImpl();
		ReviewVO vo = svc.getReview(Integer.parseInt(rno));
				
		req.setAttribute("rno", vo);
				
		try {
			req.getRequestDispatcher("WEB-INF/review/getReview.jsp").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
				

	}

}
