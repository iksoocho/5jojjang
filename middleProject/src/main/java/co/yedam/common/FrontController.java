package co.yedam.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import co.yedam.festival.web.FestivalListControl;



public class FrontController extends HttpServlet {
	
	
	//init - service -
	Map <String , Command> map = new HashMap<>();
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		
		 													
		map.put("/festivalList.do" , new FestivalListControl());  
		map.put("/main.do", new MainControl());
		map.put("/main.dddddo", new MainControl());
		
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
