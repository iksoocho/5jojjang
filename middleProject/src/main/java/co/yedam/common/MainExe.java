package co.yedam.common;


import java.util.List;

import co.yedam.member.service.MemberService;
import co.yedam.member.service.MemberVO;
import co.yedam.member.serviceImpl.MemberServiceImpl;
import co.yedam.member.web.UserSha256;

import java.util.List;




import co.yedam.member.service.MemberService;
import co.yedam.member.service.MemberVO;
import co.yedam.member.serviceImpl.MemberServiceImpl;

public class MainExe {
	public static void main(String[] args) {
		

		
		
		//SqlSession session = DataSourceMybatis.getInstance().openSession(true);
		//MemberMapper mapper = session.getMapper(MemberMapper.class);
		
		

		
		MemberService svc = new MemberServiceImpl();
		String pass = UserSha256.encrypt("hodu");
		
		MemberVO vo = svc.getMemberForPass(pass);
		
		System.out.println(vo.getMid());
		
		
		

		
	}
}
