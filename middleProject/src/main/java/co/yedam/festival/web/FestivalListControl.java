package co.yedam.festival.web;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.festival.service.FestivalService;
import co.yedam.festival.service.FestivalVO;
import co.yedam.festival.serviceImpl.FestivalServiceImpl;


public class FestivalListControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
	
		
		try {
			req.getRequestDispatcher("WEB-INF/festival/calendar.jsp")
			.forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		}
	}
}
		

	
		
	
	

