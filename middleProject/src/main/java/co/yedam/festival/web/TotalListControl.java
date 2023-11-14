package co.yedam.festival.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.common.Command;
import co.yedam.festival.service.FestivalService;
import co.yedam.festival.service.FestivalVO;
import co.yedam.festival.serviceImpl.FestivalServiceImpl;

public class TotalListControl implements Command {

	
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		FestivalService svc = new FestivalServiceImpl();
		List<FestivalVO> list = svc.festivalList();
		Gson gson = new GsonBuilder().create();
        try {
			resp.getWriter().println(gson.toJson(list));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		req.setAttribute("list", list);
		System.out.println(list);
		try {
			req.getRequestDispatcher("WEB-INF/festival/calendar.jsp")
			.forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		}
	}

}
