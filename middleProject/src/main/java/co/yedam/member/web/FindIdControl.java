package co.yedam.member.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.member.service.MemberService;
import co.yedam.member.service.MemberVO;
import co.yedam.member.serviceImpl.MemberServiceImpl;

public class FindIdControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		
		MemberService svc = new MemberServiceImpl();
		MemberVO vo = svc.getIdEmail(name, email);
		
		if(vo != null) {
			String msg = "회원님의 아이디는 "+ vo.getMid() +" 입니다. 다시 로그인 해주세요";
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
		}else  {
			String msg = "회원 정보가 없습니다. 다시 확인해 주세요.";
			String url = "SelectFindIdOrPasswd.do";
			resp.setContentType("text/html; charset=utf-8");
			PrintWriter w;
			try {
				w = resp.getWriter();
		        w.write("<script>alert('"+msg+"');window.location.href = '" + url + "';</script>");
				w.flush();
				//w.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
