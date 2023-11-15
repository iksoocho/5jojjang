package co.yedam.adminPage.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.adminPage.service.AdminService;
import co.yedam.adminPage.service.AdminVO;
import co.yedam.adminPage.serviceImpl.AdminServiceImpl;
import co.yedam.common.Command;
import co.yedam.common.PageDTO;


public class adFvListControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {

		//String path = "admin/adFvList.tiles";
		
		//얘는 전체목록 보여줄 애
		AdminService svc = new AdminServiceImpl();
		List<AdminVO> list = svc.festivalList();
		req.setAttribute("flist", list);
		
			System.out.println("페스티발list : " + list);
		
		

		// 나중에 경로 path로 바꾸기! 
		try {
			req.getRequestDispatcher("WEB-INF/admin/adFvList.jsp").forward(req, resp);
		} catch (Exception e) {
			
			e.printStackTrace();
		} 


	}

}
