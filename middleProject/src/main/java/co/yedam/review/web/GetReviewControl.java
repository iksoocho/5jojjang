package co.yedam.review.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.review.Service.ReviewService;
import co.yedam.review.Service.ReviewVO;
import co.yedam.review.ServiceImpl.ReviewServiceImpl;

public class GetReviewControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		//String path = "qna/qnaList.tiles";
		
		String rno = req.getParameter("rno"); //파라미터:qno(게시글번호) 이걸로 나중에 만들기~! 
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
