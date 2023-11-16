package co.yedam.member.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.member.service.MemberService;

import co.yedam.member.serviceImpl.MemberServiceImpl;

public class CheckIdControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		MemberService svc = new MemberServiceImpl();
		String mid = req.getParameter("mid");
		//MemberVO vo = new MemberVO();
		//vo.setMid(mid);
		
		if(svc.getMember(mid)==null) {
			try {
				resp.getWriter().print("{\"retCode\":\"OK\"}");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			try {
				resp.getWriter().print("{\"retCode\":\"NG\"}");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	

}
