package co.yedam.wish.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.wish.service.WishService;
import co.yedam.wish.serviceImpl.WishServiceImpl;

public class DelWishControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {

		String wno = req.getParameter("wno");
		System.out.println(wno);
		WishService svc = new WishServiceImpl();
		
		if(svc.removeWish(Integer.parseInt(wno))) {
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
