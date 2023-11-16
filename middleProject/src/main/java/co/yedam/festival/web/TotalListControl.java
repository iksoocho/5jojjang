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

		List<FestivalVO> list = svc.festivalList(); // 선택 날짜에 해당하는 축제목록 리스트

		req.setAttribute("list", list);
		try {
			req.getRequestDispatcher("WEB-INF/festival/dayList.jsp").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}

		System.out.println(list);
		

	}
}
