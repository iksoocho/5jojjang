package co.yedam.adminPage.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.adminPage.service.AdminService;
import co.yedam.adminPage.service.AdminVO;
import co.yedam.adminPage.serviceImpl.AdminServiceImpl;
import co.yedam.common.Command;

public class modAdFvFormControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		String path = "adminPage/modAdFvForm.tiles";
		
		String fcode = req.getParameter("fcode"); //게시글번호를 하나 알고있으면 전체 정보를 알수있는 method 이용할거임
		
		AdminService svc = new AdminServiceImpl();
		AdminVO vo = svc.getFestival(fcode); //getboard는 int 매개값으로 받음.
		req.setAttribute("vo", vo); // 요청정보에 vo값도 담아서 보낼거임. 그러면 밑에 모디파이폼ㅇ 페이지에서 읽어들일수 있음.
		
		
		//수정화면오픈
		try {
			try {
				req.getRequestDispatcher(path).forward(req, resp);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

	}

}
