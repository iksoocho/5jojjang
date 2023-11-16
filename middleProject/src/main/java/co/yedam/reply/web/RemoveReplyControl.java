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
import co.yedam.reply.serviceImpl.ReplyServiceImpl;

public class RemoveReplyControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		String rpno = req.getParameter("rpno"); // 넘긴 파라메터 값을 받아옴
		ReplyService svc = new ReplyServiceImpl();
		
		
		Map<String, String> map = new HashMap<>();
		
		if(svc.removeReply(Integer.parseInt(rpno))) {
			map.put("retCode", "OK");
		}else {
			map.put("retCode", "NG");
		}
		
		
		Gson gson = new GsonBuilder().create();
		try {
			resp.getWriter().print(gson.toJson(map));
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
