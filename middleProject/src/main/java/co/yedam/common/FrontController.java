package co.yedam.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.festival.web.CalendarControl;
import co.yedam.festival.web.DayListControl;
import co.yedam.festival.web.FestivalInfoControl;
import co.yedam.wish.web.WishControl;





public class FrontController extends HttpServlet {
	
	
	//init - service -
	Map <String , Command> map = new HashMap<>();
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		
		map.put("/main.do", new MainControl());											
		map.put("/calendar.do" , new CalendarControl());  
		map.put("/dayList.do" , new DayListControl()); //지정된날찌에 해당하는 
		
		map.put("/festivalInfo.do" , new FestivalInfoControl());
		map.put("/wish.do" , new WishControl());
		
		
	
	}	
	
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {    
		
	
		req.setCharacterEncoding("UTF-8");
	
		String uri = req.getRequestURI(); 
		String context = req.getServletContext().getContextPath();
		String page = uri.substring(context.length());   
		Command controller = map.get(page);	
		controller.execute(req,resp);
		

	}

}
