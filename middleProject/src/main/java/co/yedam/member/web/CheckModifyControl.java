package co.yedam.member.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.member.service.MemberService;
import co.yedam.member.service.MemberVO;
import co.yedam.member.serviceImpl.MemberServiceImpl;

public class CheckModifyControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		MemberVO vo = new MemberVO();
		vo.setName(req.getParameter("name"));
		vo.setPass(req.getParameter("pass"));
		vo.setPhone(req.getParameter("phone"));
		vo.setMid(req.getParameter("mid"));
		
		MemberService svc = new MemberServiceImpl();
		
		System.out.println(vo);
		if(svc.aditMember(vo)) {
			try {
				resp.getWriter().print("{\"retCode\":\"OK\"}");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			try {
				resp.getWriter().print("{\"retCode\":\"NG\"}");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}