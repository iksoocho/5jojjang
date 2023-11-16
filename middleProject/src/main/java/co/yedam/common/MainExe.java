package co.yedam.common;


import java.util.List;

import co.yedam.member.service.MemberService;
import co.yedam.member.service.MemberVO;
import co.yedam.member.serviceImpl.MemberServiceImpl;


import java.util.List;




import co.yedam.member.service.MemberService;
import co.yedam.member.service.MemberVO;
import co.yedam.member.serviceImpl.MemberServiceImpl;

public class MainExe {
	public static void main(String[] args) {
		

		
		
		//SqlSession session = DataSourceMybatis.getInstance().openSession(true);
		//MemberMapper mapper = session.getMapper(MemberMapper.class);
		
		
		MemberService svc = new MemberServiceImpl();
		
		MemberVO vo = new MemberVO();
		vo.setName("조익수");
		vo.setMid("cho");
		vo.setPass("pass");
		vo.setSsn("ssn");
		vo.setPhone("phone");
		vo.setEmail("email");
		
		System.out.println(svc.addMember(vo));
		
		
		
		

		
	}
}
