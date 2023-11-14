package co.yedam.festival.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.festival.service.FestivalService;
import co.yedam.festival.service.FestivalVO;
import co.yedam.festival.serviceImpl.FestivalServiceImpl;

public class FestivalInfoControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
			
			String fno = req.getParameter("fno");
			FestivalService svc = new FestivalServiceImpl();
			
			FestivalVO vo = svc.select(fno);
			
			req.setAttribute("fno", vo); 
			
			try {
				req.getRequestDispatcher("WEB-INF/festival/festivalInfo.jsp").forward(req, resp);
			}  catch (Exception e) {
				
				e.printStackTrace();
			}
	
			
			
	}
	}
