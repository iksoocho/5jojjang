package co.yedam.member.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;

public class SelectFindIdOrPasswd implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		
		String path = "WEB-INF/member/selectFindIdOrPasswd.jsp";
		
		try {
			req.getRequestDispatcher(path).forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
