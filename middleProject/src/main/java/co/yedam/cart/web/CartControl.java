package co.yedam.cart.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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

		// adcnt 와 chcnt가 0이라면 ng날려서 최소 한개이상의 수량을 선택하세요알람창
		// 그게 아니면 장바구니 추가 실행

		int adCnt = Integer.parseInt(adcnt);
		int chCnt = Integer.parseInt(chcnt);

		CartService svc = new CartServiceImpl();

		if (adCnt == 0 && chCnt == 0) {
			try {
				resp.getWriter().print("{\"retCode\" : \"NG\"}");
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			CartVO vo = new CartVO();
			vo.setFcode(fcode);
			vo.setCid(cid);
			vo.setAdcnt(Integer.parseInt(adcnt));
			vo.setChcnt(Integer.parseInt(chcnt));
			svc.addCart(vo);
			try {
				resp.getWriter().print("{\"retCode\" : \"OK\"}");
			} catch (IOException e) {
				e.printStackTrace();
			}

		}

		int sum = svc.cartCnt(cid); // sum에 카트에 든 총 갯수가 들어감
		System.out.println("카트합계" + sum);

		HttpSession session = req.getSession(); // session 객체 생성
		session.setAttribute("cartcnt", sum); // 카트에 담긴 갯수 저장

	}//

}//
