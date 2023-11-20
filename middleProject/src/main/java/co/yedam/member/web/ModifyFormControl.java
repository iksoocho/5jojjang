package co.yedam.member.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.member.service.MemberService;
import co.yedam.member.service.MemberVO;
import co.yedam.member.serviceImpl.MemberServiceImpl;

public class ModifyFormControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		String mid = req.getParameter("mid");
		MemberService svc = new MemberServiceImpl();
		MemberVO vo = svc.getMember(mid);
		
		
		req.setAttribute("mid", vo);
		//String path = "WEB-INF/member/modifyForm.jsp";
		
		
		try {
			req.getRequestDispatcher("member/modifyForm.tiles").forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
