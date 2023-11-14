package co.yedam.member.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.member.service.MemberService;
import co.yedam.member.service.MemberVO;
import co.yedam.member.serviceImpl.MemberServiceImpl;

public class JoinControl implements Command {
//	 private void showMessageAndRedirect(HttpServletResponse resp, String message, String target) {
//		  try {
//		        resp.setContentType("text/html; charset=UTF-8");
//		        PrintWriter out = resp.getWriter();
//		        out.println("<html><head><meta charset=\"UTF-8\"></head><body>");
//		        out.println("<script>alert('" + message + "'); setTimeout(function(){ window.location='" + target + "'; }, 100);</script>");
//		        out.println("</body></html>");
//		    } catch (IOException e) {
//		        e.printStackTrace();
//		    }
//	    }
	
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		MemberVO vo = new MemberVO();
		vo.setName(req.getParameter("name"));
		vo.setMid(req.getParameter("mid"));
		vo.setPass(req.getParameter("pass"));
		vo.setSsn(req.getParameter("ssn"));
		vo.setPhone(req.getParameter("phone"));
		vo.setEmail(req.getParameter("email"));
		
		
		
		MemberService svc = new MemberServiceImpl();
		
		List<MemberVO> list = svc.memberList();
		List<String> midList = new ArrayList<>();
		for (MemberVO member : list) {
		    midList.add(member.getMid());
		}
		
		System.out.println(midList);
		 req.setAttribute("midList", midList);
		
		
		
		
		if(svc.addMember(vo)) {
			try {
				resp.sendRedirect("main.do");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			try {
				resp.sendRedirect("memberJoin.do");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

}
