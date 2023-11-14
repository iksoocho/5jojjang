package co.yedam.review.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.review.Service.ReviewService;
import co.yedam.review.Service.ReviewVO;
import co.yedam.review.ServiceImpl.ReviewServiceImpl;

public class RemoveReviewFormControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		String rno = req.getParameter("rno");

		ReviewService svc = new ReviewServiceImpl();
		ReviewVO vo = svc.getReview(Integer.parseInt(rno));
		req.setAttribute("vo", vo);
			

		try {
			req.getRequestDispatcher("WEB-INF/review/removeReviewForm.jsp").forward(req, resp);
		} catch (Exception e) {
					
			e.printStackTrace();
			}
			
	}

}
