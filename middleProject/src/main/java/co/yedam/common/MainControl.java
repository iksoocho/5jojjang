package co.yedam.common;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.festival.service.FestivalService;
import co.yedam.festival.service.FestivalVO;
import co.yedam.festival.serviceImpl.FestivalServiceImpl;

public class MainControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {

		
		FestivalService svc = new FestivalServiceImpl();
		
		List <FestivalVO> list = svc.festivalList();
		
		req.setAttribute("list", list);
		
		
		try {

			req.getRequestDispatcher("main/main.tiles").forward(req, resp);
		} catch (Exception e) {

			e.printStackTrace();
		}

	}

}
