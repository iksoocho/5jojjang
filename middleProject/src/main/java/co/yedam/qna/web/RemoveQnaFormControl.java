package co.yedam.qna.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.qna.service.QnaService;
import co.yedam.qna.service.QnaVO;
import co.yedam.qna.serviceImpl.QnaServiceImpl;

public class RemoveQnaFormControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
	String qno = req.getParameter("qno");

	QnaService svc = new QnaServiceImpl();
	QnaVO vo = svc.getQna(Integer.parseInt(qno));
	req.setAttribute("vo", vo);
		

	try {
		req.getRequestDispatcher("WEB-INF/qna/deleteQnaForm.jsp").forward(req, resp);
	} catch (Exception e) {
				// TODO Auto-generated catch block
		e.printStackTrace();
		}
		
	


	}

}
