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

		FestivalService svc = new FestivalServiceImpl();

		String fcode = req.getParameter("fno"); 
		String path = "festival/festivalInfo.tiles";
		FestivalVO vo = svc.getfestivalInfo(fcode);
		
		
		///라라라라
		List<FestivalVO> list = svc.selectLike(fcode); // 별점 높은순 목록

		req.setAttribute("list", list);  //별점 리스트 

		req.setAttribute("vo", vo);  //상세조회 1건 

		try {
			req.getRequestDispatcher(path).forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
