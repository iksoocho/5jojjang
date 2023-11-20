package co.yedam.common;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.member.service.MemberService;
import co.yedam.member.service.MemberVO;
import co.yedam.member.serviceImpl.MemberServiceImpl;
import co.yedam.member.web.UserSha256;



public class LoginControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		
		String id = req.getParameter("mid");
		String pass = req.getParameter("pass");
		String pw = UserSha256.encrypt(req.getParameter("pass"));
		String mag = "아이디 혹은 비밀번호를 확인해 주세요";
		String mag2 = "로그인 성공";
		
		//session > 서버와 클라이언트(웹브라우저) 연결되면 캐쉬를 삭제하거나 페이지를 닫지 않는 이상 사라지지 않고 가지고 있음
		
		MemberService svc = new MemberServiceImpl();
		
		MemberVO vo = svc.loginCheck(id, pw);
		if (vo != null) {
			//session > 서버와 클라이언트(웹브라우저) 연결되면 캐쉬를 삭제하거나 페이지를 닫지 않는 이상 사라지지 않고 가지고 있음
			HttpSession session = req.getSession();
			session.setAttribute("loginId", id);
			session.setAttribute("loginPass", pass);
			session.setAttribute("name", vo.getName());
			session.setAttribute("responsibility", vo.getResponsibility());
		
			
			try {
				
				resp.sendRedirect("main.do");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			try {
				
				resp.sendRedirect("loginForm.do");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
	}

}
