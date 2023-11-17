package co.yedam.review.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.review.service.ReviewService;
import co.yedam.review.service.ReviewVO;
import co.yedam.review.serviceImpl.ReviewServiceImpl;

public class ModifyReviewFormControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		String path = "review/modifyReviewForm.tiles";
		String rno = req.getParameter("rno"); 
		
		ReviewService svc = new ReviewServiceImpl();
		ReviewVO vo = svc.getReview(Integer.parseInt(rno)); //getboard는 int 매개값으로 받음.
		req.setAttribute("vo", vo); // 요청정보에 vo값도 담아서 보낼거임. 그러면 밑에 모디파이폼ㅇ 페이지에서 읽어들일수 있음.
		
		
		//수정화면오픈
		try {
			req.getRequestDispatcher(path).forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
