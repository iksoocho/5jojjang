package co.yedam.cart.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.cart.service.CartService;
import co.yedam.cart.serviceImpl.CartServiceImpl;
import co.yedam.common.Command;

public class DelCartControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		String cno = req.getParameter("cno");
		String cid = req.getParameter("cid");
		
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
		
		
		
		int sum = svc.cartCnt(cid);  //sum에 카트에 든 총 갯수가 들어감
		HttpSession session = req.getSession(); // session 객체 생성
		session.setAttribute("cartcnt", sum); // 카트에 담긴 갯수 저장 
	
		
		
		

	}

}
