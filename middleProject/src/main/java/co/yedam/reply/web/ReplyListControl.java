package co.yedam.reply.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.common.Command;
import co.yedam.reply.service.ReplyService;
import co.yedam.reply.service.ReplyVO;
import co.yedam.reply.serviceImpl.ReplyServiceImpl;

public class ReplyListControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
	
		//String path = "reply/replyList.tiles";
		
		String rpqno = req.getParameter("rpqno"); //원본 글 번호 알면 목록 가져오도록 파라메터 하나 받아옴


		ReplyService svc = new ReplyServiceImpl();
		

		List<ReplyVO> list = svc.replyList(Integer.parseInt(rpqno));
		
		//list 넘겨주기
		Map<String, Object> map = new HashMap();
		map.put("list", list);
		

		//json으로 변환해주는 작업.
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		String json = gson.toJson(map);
		
		resp.setContentType("text/json;charset=utf-8"); //한글 
		
		try {
			resp.getWriter().print(json); //요청한 곳에 응답데이터 넣어줌
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		

	}

}
