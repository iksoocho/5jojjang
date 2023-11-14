package co.yedam.festival.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.festival.service.FestivalService;
import co.yedam.festival.service.FestivalVO;
import co.yedam.festival.serviceImpl.FestivalServiceImpl;

public class DayListControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		
		
		
		FestivalService svc = new FestivalServiceImpl();
		
		
		String selectday = (String)req.getParameter("brdDate");
		
	
		
		List <FestivalVO> list = svc.dayList(selectday); //선택 날짜에 해당하는 축제목록 리스트 
		
		System.out.println(svc.dayList(selectday) );
		
		req.setAttribute("list", list);
		
		

		try {  
			req.getRequestDispatcher("WEB-INF/festival/dayList.jsp") 
			.forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}


	}

}
