package co.yedam.cart.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.cart.service.CartService;
import co.yedam.cart.service.CartVO;
import co.yedam.cart.serviceImpl.CartServiceImpl;
import co.yedam.common.Command;

public class CartControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {

		String fcode = req.getParameter("fcode");
		String cid = req.getParameter("cid");
		String adcnt = (String) req.getParameter("adcnt");
		String chcnt = (String) req.getParameter("chcnt");

		
		
		CartService svc = new CartServiceImpl();

		CartVO vo = new CartVO();

		vo.setFcode(fcode);
		vo.setCid(cid);
		vo.setAdcnt(Integer.parseInt(adcnt));
		vo.setChcnt(Integer.parseInt(chcnt));
		
		System.out.println(vo);

		if (svc.addCart(vo)) {
			try {
				resp.getWriter().print("{\"retCode\" : \"OK\"}");
			} catch (IOException e) {

				e.printStackTrace();
			}
		} else {
			try {
				resp.getWriter().print("{\"retCode\" : \"NG\"}");
			} catch (IOException e) {

				e.printStackTrace();
			}
		}

	}

}
