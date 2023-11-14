package co.yedam.common;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {

		// TODO Auto-generated method stub
		
		try {
			req.getRequestDispatcher("WEB-INF/main/main.jsp").forward(req, resp);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		

	

		
				try {  
					req.getRequestDispatcher("WEB-INF/main/main.jsp") 
					.forward(req, resp);
				} catch (Exception e) {
					
					e.printStackTrace();
				}
		
		
		
		
	}	
		
}

