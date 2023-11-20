package co.yedam.reply.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.common.Command;
import co.yedam.reply.service.ReplyService;
import co.yedam.reply.service.ReplyVO;
import co.yedam.reply.serviceImpl.ReplyServiceImpl;

public class AddReplyControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		
		//파라메터
		
		String rpqno = req.getParameter("rpqno"); //게시글번호
		String rpcontent = req.getParameter("rpcontent"); //내용
		
		
		
		ReplyVO vo = new ReplyVO();
		vo.setRpqno(Integer.parseInt(rpqno)); //게시글 번호 받아서
		vo.setRpcontent(rpcontent); //댓글내용
		//vo.setReplyer(replyer);
		
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
				
		Map<String, Object> map = new HashMap<>();
		ReplyService svc = new ReplyServiceImpl();
		
		if(svc.addReply(vo)) {
			map.put("retCode", "OK");
			map.put("vo", vo);

		} else {
			map.put("retCode", "NG");
		}
		
		resp.setContentType("text/json;charset=utf-8");
		
		try {
			resp.getWriter().print(gson.toJson(map));
		} catch (Exception e) {
			e.printStackTrace();
		}


	}

}
