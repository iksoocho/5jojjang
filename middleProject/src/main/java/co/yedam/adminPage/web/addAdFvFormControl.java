package co.yedam.adminPage.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;

public class addAdFvFormControl implements Command {

		public void execute(HttpServletRequest req, HttpServletResponse resp) {
			//HttpSession session = req.getSession();
			
			 String path = "adminPage/addAdFv.tiles";
			 


		try {
			req.getRequestDispatcher(path) //로그인정보있으면 등록화면으로 이동.
			.forward(req, resp);
		} catch (Exception e) {
			
			e.printStackTrace();
		} 
			
			

	}

}
