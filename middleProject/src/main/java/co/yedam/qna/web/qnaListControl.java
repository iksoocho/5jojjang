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

public class qnaListControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		//String path = "qna/qnaList.tiles";
		
		QnaService svc = new QnaServiceImpl();
		List<QnaVO> list = svc.qnaList();
		req.setAttribute("qlist", list);
		
		// 나중에 경로 path로 바꾸기! 
		try {
			req.getRequestDispatcher("WEB-INF/qna/qnaList.jsp").forward(req, resp);
		} catch (Exception e) {
			
			e.printStackTrace();
		} 

	} //execute

}
