package co.yedam.member.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.member.service.MemberService;
import co.yedam.member.serviceImpl.MemberServiceImpl;

public class RemoveMemberControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		
		String mid = req.getParameter("mid");
		
		MemberService svc = new MemberServiceImpl();
		
		if(svc.removeMember(mid)) {
			try {
				resp.sendRedirect("logout.do");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			try {
				resp.sendRedirect("modyfyMember.do");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
	}

}
