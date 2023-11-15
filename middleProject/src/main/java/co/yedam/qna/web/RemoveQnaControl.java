package co.yedam.qna.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.qna.service.QnaService;
import co.yedam.qna.serviceImpl.QnaServiceImpl;

public class RemoveQnaControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {

		String qno = req.getParameter("qno");
			
		
		QnaService svc = new QnaServiceImpl();
		if (svc.removeQna(Integer.parseInt(qno))) {  
			try {
				resp.sendRedirect("qnaList.do"); // 저장하고 등록 추가된 정보 나옴
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				resp.sendRedirect("modifyQnaForm.do");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

	}

}
