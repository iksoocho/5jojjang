package co.yedam.payment.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.payment.service.PaymentService;
import co.yedam.payment.service.PaymentVO;
import co.yedam.payment.serviceImpl.PaymentServiceImpl;

public class PaymentControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		String pid = req.getParameter("pid");
		String adcnt = (String)req.getParameter("adcnt");
		String chcnt = (String)req.getParameter("chcnt");
		String fcode = req.getParameter("fcode");
		
		PaymentService svc = new PaymentServiceImpl();
		PaymentVO vo = new PaymentVO();
		List <PaymentVO> list = svc.paymentList(pid);
		
		req.setAttribute("list", list);
		
		vo.setPid(pid);
		vo.setAdcnt(Integer.parseInt(adcnt));
		vo.setChcnt(Integer.parseInt(chcnt));
		vo.setFcode(fcode);
		
		System.out.println(vo);
		try {
			req.getRequestDispatcher("payment/payment.tiles").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
