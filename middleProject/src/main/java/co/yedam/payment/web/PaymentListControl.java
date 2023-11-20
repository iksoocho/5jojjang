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

public class PaymentListControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		String mid = req.getParameter("pid");
		System.out.println(mid);
		PaymentService svc = new PaymentServiceImpl();
		List <PaymentVO> list = svc.paymentList(mid);
		req.setAttribute("list", list);
		
		try {
			req.getRequestDispatcher("payment/paymentList.tiles").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
