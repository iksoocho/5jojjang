package co.yedam.member.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.RandomStringUtils;

import co.yedam.common.Command;
import co.yedam.member.service.MemberService;
import co.yedam.member.serviceImpl.MemberServiceImpl;

public class FindIdpasswdControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		MemberService svc = new MemberServiceImpl();
		String mid = req.getParameter("mid");
		
		if(svc.getMember(mid) == null) {
			req.setAttribute("message", "존재하지 않는 아이디입니다.");
			try {
				resp.sendRedirect("/findIdpasswdForm.do");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}else{
			String email = svc.getMember(mid).getEmail();
			//인증코드
			String crtfcNo = RandomStringUtils.randomNumeric(6); 
			System.out.println();
			//추후에 프로젝트명으로 변경하기 
			String title="비밀번호 변경 인증 메일입니다.";
			String content = req.getParameter("mid")+"님의 인증번호는 "+crtfcNo+"입니다.";
			
			svc.sendMail("Festival", email, title, content);
			
			HttpSession session = req.getSession();
			session.setAttribute("crtfcNo", crtfcNo);
			
			req.setAttribute("mid", mid);
			req.setAttribute("message", "메일이 발송되었습니다. 인증번호를 입력해주세요");

			try {
				
				RequestDispatcher dispatcher = req.getRequestDispatcher("ckNumberForm.do");
				try {
					dispatcher.forward(req, resp);
				} catch (ServletException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		
		
		
		
		
	}

}
