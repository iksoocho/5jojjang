package co.yedam.qna.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.common.PageDTO;
import co.yedam.qna.service.QnaService;
import co.yedam.qna.service.QnaVO;
import co.yedam.qna.serviceImpl.QnaServiceImpl;




public class QnaListControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		//String path = "qna/qnaList.tiles";
		
		//얘는 전체목록 보여줄 애
		QnaService svc = new QnaServiceImpl();
		List<QnaVO> list = svc.qnaList();
		req.setAttribute("qlist", list);
		
		System.out.println("qnalist : " + list);
		
		//페이지 계산하기
		String rpqno = req.getParameter("rpqno"); //원본 글 번호 알면 목록 가져오도록 파라메터 하나 받아옴
		String page = req.getParameter("page"); 
		page = page == null? "1" : page; //페이지 파라메터가 없으면 걍 1페이지 보여주겠음.
		
	
		PageDTO dto = new PageDTO(Integer.parseInt(rpqno), svc.getTotalCnt(Integer.parseInt(rpqno)), Integer.parseInt(page));
		
		System.out.println("dto : " + dto); 

		// 나중에 경로 path로 바꾸기! 
		try {
			req.getRequestDispatcher("WEB-INF/qna/qnaList.jsp").forward(req, resp);
		} catch (Exception e) {
			
			e.printStackTrace();
		} 

	} //execute

}
