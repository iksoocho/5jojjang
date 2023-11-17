package co.yedam.qna.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.qna.service.QnaService;
import co.yedam.qna.service.QnaVO;
import co.yedam.qna.serviceImpl.QnaServiceImpl;

public class ModifyQnaControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		//파라메터받아옴 -> 데이터수정 -> 목록이동.
		
			String qno = req.getParameter("qno");
		
			String title = req.getParameter("qtitle");
			String content = req.getParameter("qcontent");
			
			String pass = req.getParameter("qpass");
			
			
			QnaVO vo = new QnaVO();
			vo.setQtitle(title);
			vo.setQcontent(content);
			vo.setQno(Integer.parseInt(qno));
			vo.setQpass(pass);
			

			
			QnaService svc = new QnaServiceImpl();
			if (svc.editQna(vo)) { 
				try {
					resp.sendRedirect("qnaList.do"); 
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

	} //execute

}
