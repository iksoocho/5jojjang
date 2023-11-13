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

public class FestivalListControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		FestivalService svc = new FestivalServiceImpl();
		
		
		String selectday = (String)req.getParameter("brdDate");
		
		//System.out.println(selectday);
		
		List <FestivalVO> list = svc.dayList(selectday); 
		
		System.out.println( svc.dayList(selectday) );
		
		req.setAttribute("list", list);
		
		
		try {
			req.getRequestDispatcher("WEB-INF/festival/festivalList.jsp")
			.forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		}
		
		//Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		
		//String json = gson.toJson(daylist);  
		
		//resp.setContentType("text/json;charset=utf-8");
		
		//try {
		//	resp.getWriter().print(json);  
		//} catch (IOException e) {
		//	e.printStackTrace();
		//}
		
	
		
	}
	
}
