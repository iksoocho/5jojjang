package co.yedam.qna.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.qna.service.QnaService;
import co.yedam.qna.service.QnaVO;
import co.yedam.qna.serviceImpl.QnaServiceImpl;

public class QnaListControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		//String path = "qna/qnaList.tiles";
		
		QnaService svc = new QnaServiceImpl();
		List<QnaVO> list = svc.qnaList();
		req.setAttribute("qlist", list);
			
		
		//** 리스트페이지에 페이징 해야함! 근데 일단 보류.. 일케하면안됨.
//		String qno = req.getParameter("qno");
//		QnaVO vo = svc.getQna(Integer.parseInt(qno));
//		req.setAttribute("qno", vo);
		
		// 나중에 경로 path로 바꾸기! 
		try {
			req.getRequestDispatcher("WEB-INF/qna/qnaList.jsp").forward(req, resp);
		} catch (Exception e) {
			
			e.printStackTrace();
		} 

	} //execute

}
