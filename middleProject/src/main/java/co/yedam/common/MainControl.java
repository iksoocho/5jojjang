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
		
		List<FestivalVO> list = svc.selectLike("F031");  // (축제코드 "F031" 제외 )메인페이지에 별점 높은거 3개 출력 
		
		req.setAttribute("list", list);
		
		
		try {

			req.getRequestDispatcher("main/main.tiles").forward(req, resp);
		} catch (Exception e) {

			e.printStackTrace();
		}

	}

}
