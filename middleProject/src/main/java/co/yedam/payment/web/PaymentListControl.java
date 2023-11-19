package co.yedam.payment.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.payment.service.PaymentService;
import co.yedam.payment.serviceImpl.PaymentServiceImpl;

public class PaymentListControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		String pid = req.getParameter("pid");
		PaymentService svc = new PaymentServiceImpl();
	}

}
