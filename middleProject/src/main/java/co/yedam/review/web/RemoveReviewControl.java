package co.yedam.review.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.review.Service.ReviewService;
import co.yedam.review.ServiceImpl.ReviewServiceImpl;

public class RemoveReviewControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		String rno = req.getParameter("rno");
			
		
		ReviewService svc = new ReviewServiceImpl();
		if (svc.removeReview(Integer.parseInt(rno))) {  
			try {
				resp.sendRedirect("reviewList.do"); // 저장하고 등록 추가된 정보 나옴
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				resp.sendRedirect("modifyremoveForm.do");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

	}

}
