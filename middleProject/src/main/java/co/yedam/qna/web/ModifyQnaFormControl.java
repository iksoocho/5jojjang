package co.yedam.qna.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.qna.service.QnaService;
import co.yedam.qna.service.QnaVO;
import co.yedam.qna.serviceImpl.QnaServiceImpl;

public class ModifyQnaFormControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		String path = "qna/modifyQnaForm.tiles";
		
		String qno = req.getParameter("qno"); 
		
		QnaService svc = new QnaServiceImpl();
		QnaVO vo = svc.getQna(Integer.parseInt(qno));
		req.setAttribute("vo", vo); //  vo값 담아서 modify페이지에서 정보 읽게
		
		
		//수정폼열기
		try {
			req.getRequestDispatcher("path").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}


	}

}
