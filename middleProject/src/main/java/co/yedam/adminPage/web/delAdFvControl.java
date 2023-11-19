package co.yedam.adminPage.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.adminPage.service.AdminService;
import co.yedam.adminPage.serviceImpl.AdminServiceImpl;
import co.yedam.common.Command;

public class delAdFvControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
	String fcode = req.getParameter("fcode");
			
		
		AdminService svc = new AdminServiceImpl();
		if (svc.removeFestival(fcode)) {  
			try {
				//resp.getWriter().print("{\"retCode\" : \"OK\"}");
				resp.sendRedirect("adFvList.do"); // 저장하고 등록 추가된 정보 나옴
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				//resp.getWriter().print("{\"retCode\" : \"NG\"}");
				resp.sendRedirect("modifyAdFvForm.do");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

	}

}
