package co.yedam.review.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.review.service.ReviewService;
import co.yedam.review.service.ReviewVO;
import co.yedam.review.serviceImpl.ReviewServiceImpl;

public class RemoveReviewFormControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		String path = "review/removeReviewForm.tiles";
		
		String rno = req.getParameter("rno");

		ReviewService svc = new ReviewServiceImpl();
		ReviewVO vo = svc.getReview(Integer.parseInt(rno));
		req.setAttribute("vo", vo);
			

		try {
			req.getRequestDispatcher(path).forward(req, resp);
		} catch (Exception e) {
					
			e.printStackTrace();
			}
			
	}

}
