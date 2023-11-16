package co.yedam.payment.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;

public class paymentFormControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {

		String fcode = req.getParameter("fcode");
		String pid = req.getParameter("pid");
		String adcnt = (String) req.getParameter("adcnt");
		String chcnt = (String) req.getParameter("chcnt");
		
		
		
		
		
		
	}

}
