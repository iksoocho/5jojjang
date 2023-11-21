package co.yedam.review.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.yedam.common.Command;
import co.yedam.review.service.ReviewService;
import co.yedam.review.service.ReviewVO;
import co.yedam.review.serviceImpl.ReviewServiceImpl;

public class AddReviewControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		ReviewVO vo = new ReviewVO();
		
		req.getMethod().equals("POST");
		
		String saveDir = req.getServletContext().getRealPath("reviewResources/images"); // 이 경로에 파일 업로드 (webapp밑에 images 폴더 생성했음)
		int size = 5 * 1024 * 1024; // 최대 사이즈	
	
			
			try {
				MultipartRequest mr = //
						new MultipartRequest(req, // 요청정보
								saveDir, // 파일이 저장될 정보
								size, // 파일크기
								"UTF-8", // 인코딩방식
								new DefaultFileRenamePolicy());// 리네임정책
				
				String rid = mr.getParameter("rid");
;				String title = mr.getParameter("rtitle");
				String content = mr.getParameter("rcontent");
				String date = mr.getParameter("rwritedate");
				
				String image = mr.getFilesystemName("rimage");


				// 이 네개의 값을 담아줌
				vo = new ReviewVO();
			
				vo.setRid(rid);
				vo.setRtitle(title);
				vo.setRcontent(content);
				vo.setRimage(image);
				vo.setRwriteDate(date);
				
				req.setAttribute("vo", vo);
				
				System.out.println("addReview control " + vo);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
			
			
		ReviewService svc = new ReviewServiceImpl();
		if(svc.addReview(vo)) { //정상적으로 등록됐으면 보드목록으로 간다
			try {
				resp.sendRedirect("reviewList.do"); // 저장하고 등록 추가된 정보 나옴
		} catch (Exception e) {
				e.printStackTrace();
			}
		}else {
			try {
				resp.sendRedirect("reviewForm.do");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
			

	}

}
