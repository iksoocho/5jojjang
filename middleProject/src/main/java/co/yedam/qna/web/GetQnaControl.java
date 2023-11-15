package co.yedam.qna.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.qna.service.QnaService;
import co.yedam.qna.service.QnaVO;
import co.yedam.qna.serviceImpl.QnaServiceImpl;

public class GetQnaControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		String path = "qna/getQna.tiles";
		
		
		String qno = req.getParameter("qno"); //파라미터:qno(게시글번호) 이걸로 나중에 만들기~! 
		System.out.println("qno" + qno);
		QnaService svc = new QnaServiceImpl();
		QnaVO vo = svc.getQna(Integer.parseInt(qno));
		
			System.out.println("vo" + vo);
			
		
		req.setAttribute("qno", vo);
		
		try {
			req.getRequestDispatcher(path).forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
	}

}
