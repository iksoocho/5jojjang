package co.yedam.festival.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.velocity.tools.view.WebappUberspector.GetAttributeExecutor;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.yedam.common.Command;
import co.yedam.festival.service.FestivalService;
import co.yedam.festival.service.FestivalVO;
import co.yedam.festival.serviceImpl.FestivalServiceImpl;

public class CalendarControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
	
		
		
		
		
		try {
			req.getRequestDispatcher("WEB-INF/festival/calendar.jsp")
			.forward(req, resp);
		} catch (Exception e) {
			;  
			e.printStackTrace();
		
		}
		

	
		
	}
	
}
