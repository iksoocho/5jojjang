package co.yedam.cart.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.cart.service.CartService;
import co.yedam.cart.serviceImpl.CartServiceImpl;
import co.yedam.common.Command;

public class DelCartControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		String cno = req.getParameter("cno");
		CartService svc =  new CartServiceImpl();
		
		
		if(svc.removeCart(Integer.parseInt(cno))) {
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
