package co.yedam.member.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.common.Command;
import co.yedam.member.service.MemberService;
import co.yedam.member.service.MemberVO;
import co.yedam.member.serviceImpl.MemberServiceImpl;

public class JoinControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		// TODO Auto-generated method stub
		MemberVO vo = new MemberVO();
		vo.setName(req.getParameter("name"));
		vo.setMid(req.getParameter("id"));
		vo.setPass(req.getParameter("pass"));
		vo.setSsn(req.getParameter("ssn"));
		vo.setPhone(req.getParameter("phone"));
		vo.setEmail(req.getParameter("email"));
		
		
		
		MemberService svc = new MemberServiceImpl();
		Map<String, Object> map = new HashMap<>();
		
		if(svc.addMember(vo)) {
			map.put("retCode", "OK");
			map.put("vo", vo);
		}else {
			map.put("retCode", "NG");
		}
		
		
	}

}
