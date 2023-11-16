package co.yedam.qna.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.common.Command;
import co.yedam.common.PageDTO;
import co.yedam.qna.service.QnaService;
import co.yedam.qna.service.QnaVO;
import co.yedam.qna.serviceImpl.QnaServiceImpl;

public class QnaListControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {

		String path = "qna/qnaList.tiles";

		QnaService svc = new QnaServiceImpl();
		List<QnaVO> list = svc.qnaList();
			System.out.println("list" + list);
		req.setAttribute("qlist", list);
		
		try {
			req.getRequestDispatcher(path).forward(req, resp);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try {
			req.getRequestDispatcher(path).forward(req, resp);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


	} // execute

}
