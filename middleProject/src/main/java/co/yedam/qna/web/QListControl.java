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

public class QListControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		//혹시몰라서 일단 둠.. paging 때문에

		/*
		String qno = req.getParameter("qno");
		
		String page = req.getParameter("page");
		page = page == null ? "1" : page;
			System.out.println("page : " + page);
		
		QnaService svc = new QnaServiceImpl();

		PageDTO dto = new PageDTO(svc.getTotalCnt(), Integer.parseInt(page));
			System.out.println("dto : " + dto);
		List<QnaVO> list = svc.qnaList(Integer.parseInt(page));
			System.out.println("list " + list);
		
		Map<String, Object> map = new HashMap();
		map.put("list", list);
		map.put("dto", dto); // dto란 이름으로 dto를 담아서 넘김

		
		  Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create(); String
		 json = gson.toJson(map);
		 
		  System.out.println(json);
		  
		  resp.setContentType("text/json;charset=utf-8"); //
		  try {
			resp.getWriter().print(json);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		*/
		
	}

}
