package co.yedam.review.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.review.Service.ReviewService;
import co.yedam.review.Service.ReviewVO;
import co.yedam.review.ServiceImpl.ReviewServiceImpl;

public class ModifyReviewControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
	//파라메터받아옴 -> 데이터수정 -> 목록이동.
		
		String title = req.getParameter("title");
		String content = req.getParameter("content");
	
		
		String rno = req.getParameter("rno");
		
		
		ReviewVO vo = new ReviewVO();
		vo.setRtitle(title);
		
		vo.setRcontent(content);
		vo.setRno(Integer.parseInt(rno));
		

		
		ReviewService svc = new ReviewServiceImpl();
		if (svc.editReview(vo)) { // 정상적으로 등록됐으면 보드목록으로 간다
			try {
				resp.sendRedirect("reviewList.do"); // 저장하고 등록 추가된 정보 나옴
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				resp.sendRedirect("modifyReviewForm.do");
			} catch (IOException e) {
			
				e.printStackTrace();
			}
		}
		
	}

}
