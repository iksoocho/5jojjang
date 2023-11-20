package co.yedam.member.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.member.service.MemberService;
import co.yedam.member.service.MemberVO;
import co.yedam.member.serviceImpl.MemberServiceImpl;

public class modifyPasswdControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		MemberService svc  = new MemberServiceImpl();
		String mid = req.getParameter("mid");
		String pass = UserSha256.encrypt(req.getParameter("pass"));
		
		MemberVO vo = new MemberVO();
		vo.setMid(mid);
		vo.setPass(pass);
		
		svc.editPass(vo);
		
		String msg = "비밀번호가 변경되었습니다. 재 로그인 해주세요";
		String url = "loginForm.do";
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter w;
		try {
			w = resp.getWriter();
	        w.write("<script>alert('"+msg+"');window.close();</script>");
			w.flush();
			w.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}