package co.yedam.qna.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.qna.service.QnaService;
import co.yedam.qna.service.QnaVO;
import co.yedam.qna.serviceImpl.QnaServiceImpl;

public class AddQnaControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
QnaVO vo = new QnaVO();
		
		req.getMethod().equals("GET");
			
			// input에서 name이 파라메터임.
			String title = req.getParameter("qtitle");
			String content = req.getParameter("qcontent");
			String pass = req.getParameter("qpass");

			// form에 action넣고 일로 넘어온거임.
			vo.setQtitle(title);
			vo.setQcontent(content);
			vo.setQpass(pass);

		QnaService svc = new QnaServiceImpl();
		if(svc.addQna(vo)) { //정상적으로 등록됐으면 보드목록으로 간다
			try {
				resp.sendRedirect("qnaList.do"); // 저장하고 등록 추가된 정보 나옴
		} catch (Exception e) {

				e.printStackTrace();
			}
		}else {
			try {
				resp.sendRedirect("qnaForm.do");
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
			

	}

}
