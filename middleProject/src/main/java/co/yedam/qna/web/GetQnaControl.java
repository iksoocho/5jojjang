package co.yedam.qna.web;

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

		/*
		 * try { String qno = req.getParameter("qno");
		 * System.out.println("getqno컨트롤1 : " + qno); QnaService svc = new
		 * QnaServiceImpl(); QnaVO vo = svc.getQna(Integer.parseInt(qno));
		 * req.setAttribute("qno", vo); System.out.println("getqno컨트롤2  vo : " + vo);
		 * }catch(NumberFormatException e) {
		 * 
		 * }catch(Exception e) {
		 * 
		 * }
		 */

		
		 String qno = req.getParameter("qno"); //파라미터:qno(게시글번호) 이걸로 나중에 만들기~!
		  System.out.println("getqno컨트롤1 : " + qno); 
		  QnaService svc = new QnaServiceImpl(); 
		  QnaVO vo = svc.getQna(Integer.parseInt(qno));
		 
		  System.out.println("getqno컨트롤2  vo : " + vo);
		

		 req.setAttribute("qno", vo);

		try {
			req.getRequestDispatcher(path).forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
