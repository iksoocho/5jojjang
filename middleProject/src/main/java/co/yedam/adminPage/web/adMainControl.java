package co.yedam.adminPage.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;

public class adMainControl implements Command {


		
		@Override
		public void execute(HttpServletRequest req, HttpServletResponse resp) {
			// TODO Auto-generated method stub
			try {
				req.getRequestDispatcher("WEB-INF/adminPage/adFvList.jsp").forward(req, resp);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();

			}
		}

	

}
