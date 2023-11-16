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
		
		
			String title = req.getParameter("qtitle");
			String content = req.getParameter("qcontent");
			
			String qno = req.getParameter("qno");
			String pass = req.getParameter("qpass");
			
			
			QnaVO vo = new QnaVO();
			vo.setQtitle(title);
			vo.setQcontent(content);
			vo.setQno(Integer.parseInt(qno));
			vo.setQpass(pass);
			

			
			QnaService svc = new QnaServiceImpl();
			if (svc.editQna(vo)) { // 정상적으로 등록됐으면 보드목록으로 간다
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

	} //execute

}
