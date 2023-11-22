package co.yedam.adminPage.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.adminPage.service.AdminService;
import co.yedam.adminPage.service.AdminVO;
import co.yedam.adminPage.serviceImpl.AdminServiceImpl;
import co.yedam.common.Command;

public class modAdFvControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub


		String name = req.getParameter("fname");
		String content = req.getParameter("fcontent");
		String price1 = req.getParameter("fprice1");
		String price2 = req.getParameter("fprice2");
		String code = req.getParameter("fcode");
	
				
		
		
		
		AdminVO vo = new AdminVO();
		vo.setFname(name);
		vo.setFcontent(content);
		vo.setFprice1(Integer.parseInt(price1));
		vo.setFprice2(Integer.parseInt(price2));
		vo.setFcode(code);
	
		
		

		
		AdminService svc = new AdminServiceImpl();
		if (svc.editFestival(vo)) { 
			try {
				resp.sendRedirect("adFvList.do"); 
			} catch (Exception e) {
				
				e.printStackTrace();
			}
		} else {
			try {
				resp.sendRedirect("modifyAdFvForm.do");
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}

		
		
	}

}
