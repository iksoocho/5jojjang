package co.yedam.wish.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.wish.service.WishService;
import co.yedam.wish.service.WishVO;
import co.yedam.wish.serviceImpl.WishServiceImpl;

public class WishControl implements Command {

	
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {

		String fcode = req.getParameter("fcode");
		String wid = req.getParameter("wid");

		// System.out.println(wid);
		// System.out.println(fcode);

		WishService svc = new WishServiceImpl();

		if (svc.checkWish(wid, fcode) == null) {
			WishVO vo = new WishVO();
			vo.setFcode(fcode);
			vo.setWid(wid);
			svc.addWish(vo);
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
