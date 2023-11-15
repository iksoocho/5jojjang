package co.yedam.adminPage.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.adminPage.service.AdminService;
import co.yedam.adminPage.service.AdminVO;
import co.yedam.adminPage.serviceImpl.AdminServiceImpl;
import co.yedam.common.Command;

public class getAdFvControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		String path = "adminPage/getAdFv.tiles";
		
		
		String fcode = req.getParameter("fcode");
			System.out.println("fcode : " + fcode);
		AdminService svc = new AdminServiceImpl();
		AdminVO vo = svc.getFestival(fcode);
		
			System.out.println("f vo : " + vo);
			
		
		req.setAttribute("fcode", vo);
		
		try {
			req.getRequestDispatcher(path).forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
