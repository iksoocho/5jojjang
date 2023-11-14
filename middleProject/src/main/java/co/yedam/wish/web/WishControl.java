package co.yedam.wish.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.wish.service.WishService;
import co.yedam.wish.service.WishVO;
import co.yedam.wish.serviceImpl.WishServiceImpl;

public class WishControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
	
		String fno = req.getParameter("fno"); 
		String id = req.getParameter("id"); 
		
		WishService svc = new WishServiceImpl();
		
		WishVO vo = new WishVO();
	
		vo.setFcode(fno);
		vo.setWid(id);
		
		//뭐고 왜 커밋안되는데..?
		
		if(svc.addWish(vo)) {
			try {
				resp.getWriter().print("{\"retCode\" : \"OK\"}");
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}else {
			try {
				resp.getWriter().print("{\"retCode\" : \"NG\"}");
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
		
		
		
		
		
	
		
		
	}

}
