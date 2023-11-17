package co.yedam.adminPage.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.adminPage.service.AdminService;
import co.yedam.adminPage.service.AdminVO;
import co.yedam.adminPage.serviceImpl.AdminServiceImpl;
import co.yedam.common.Command;

public class delAdFvFormControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
	String path = "adminPage/deleteFvForm.tiles";
		
	String fcode = req.getParameter("fcode");


	AdminService svc = new AdminServiceImpl();
	AdminVO vo = svc.getFestival(fcode);
	
	req.setAttribute("vo", vo);
		

	try {
		req.getRequestDispatcher(path).forward(req, resp);
	} catch (Exception e) {
				// TODO Auto-generated catch block
		e.printStackTrace();
		}
	}

}
