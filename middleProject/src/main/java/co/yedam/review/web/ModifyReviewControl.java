package co.yedam.review.web;

import java.io.IOException;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.yedam.common.Command;
import co.yedam.review.service.ReviewService;
import co.yedam.review.service.ReviewVO;
import co.yedam.review.serviceImpl.ReviewServiceImpl;

public class ModifyReviewControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
	//파라메터받아옴 -> 데이터수정 -> 목록이동.
		
		ReviewVO vo = new ReviewVO();
		String saveDir = req.getServletContext().getRealPath("reviewResources/images");
		int size = 5 * 1024 * 1024;
		
		
		try {
			MultipartRequest mr =
					new MultipartRequest(req,
							saveDir,
							size,
							"UTF-8",
							new DefaultFileRenamePolicy());
		
		String title = mr.getParameter("title");
		String content = mr.getParameter("content");
		String rno = mr.getParameter("rno");
		String image = mr.getFilesystemName("image");
		
		
		
		vo = new ReviewVO();
		vo.setRtitle(title);
		vo.setRcontent(content);
		vo.setRno(Integer.parseInt(rno));
		vo.setRimage(image);
		
		
			System.out.println("모디파이리뷰보" + vo );
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
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
