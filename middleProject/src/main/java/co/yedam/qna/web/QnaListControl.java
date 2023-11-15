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
		
		String path = "qna/qnaList.tiles";
		
		//얘는 전체목록 보여줄 애
		QnaService svc = new QnaServiceImpl();
		List<QnaVO> list = svc.qnaList();
		req.setAttribute("qlist", list);
		
			System.out.println("qnalist : " + list);
		
		//페이지 계산하기
		
		String page = req.getParameter("page"); 
		page = page == null? "1" : page; //페이지 파라메터가 없으면 걍 1페이지 보여주겠음.
		/*
		 * String currentPage = req.getParameter("currentPage"); String startPage =
		 * req.getParameter("startPage"); String endPage = req.getParameter("endPage");
		 */
		
		
		PageDTO dto = new PageDTO(svc.getTotalCnt(), Integer.parseInt(page));
		req.setAttribute("paging", dto);
		
			System.out.println("dto : " + dto); 

		// 나중에 경로 path로 바꾸기! 
		try {
			req.getRequestDispatcher(path).forward(req, resp);
		} catch (Exception e) {
			
			e.printStackTrace();
		} 

	} //execute

}
