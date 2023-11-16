package co.yedam.festival.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.festival.service.FestivalService;
import co.yedam.festival.service.FestivalVO;
import co.yedam.festival.serviceImpl.FestivalServiceImpl;

public class FestivalInfoControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {


		
		String fcode = req.getParameter("fno");
	
		FestivalService svc = new FestivalServiceImpl();

		FestivalVO vo = svc.getfestivalInfo(fcode);
		String path = "festival/festivalInfo.tiles";

		List<FestivalVO> list = svc.selectLike(fcode);
		
		req.setAttribute("vo", vo);
		req.setAttribute("list", list);
		
		System.out.println(vo);		
		
		try {
			req.getRequestDispatcher(path).forward(req, resp);
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
