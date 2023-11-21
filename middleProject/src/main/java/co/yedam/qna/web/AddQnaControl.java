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
		

		req.getMethod().equals("GET");
			
			// input에서 name이 파라메터임.
			//String qno = req.getParameter("qno");
			String title = req.getParameter("qtitle");
			String content = req.getParameter("qcontent");
			String pass = req.getParameter("qpass");
			String qid = req.getParameter("qid");
			
			
			// form에 action넣고 일로 넘어온거임.
			QnaVO vo = new QnaVO();
			//vo.setQno(Integer.parseInt(qno));
			vo.setQtitle(title);
			vo.setQcontent(content);
			vo.setQpass(pass);
			vo.setQid(qid);
			
			System.out.println("큐앤에이 vo "+ vo);

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
