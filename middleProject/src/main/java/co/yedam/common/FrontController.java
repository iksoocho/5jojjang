package co.yedam.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.member.web.JoinControl;
import co.yedam.member.web.JoinFormControl;
import co.yedam.member.web.ModifyFormControl;
import co.yedam.member.web.ModifyMemberControl;
import co.yedam.member.web.MyPageFormControl;

public class FrontController extends HttpServlet {   //??.do 로 끝나면 항상 FrontController가 실행되는데 어떤 .do 냐 따라서 다른 매소드들을 실행해주기 위해 나눠놈

	Map<String, Command> map = new HashMap<>();

	@Override
	public void init() throws ServletException {
		//메인페이지
		map.put("/main.do", new MainControl());
		
		//로그인
		map.put("/loginForm.do", new LoginFormControl());
		map.put("/login.do", new LoginControl());
		map.put("/logout.do", new LogoutControl());
		
		//회원가입
		map.put("/joinForm.do", new JoinFormControl()); //회원가입 화면
		map.put("/join.do", new JoinControl());
		
		//마이페이지(회원정보 수정, 회원 탈퇴 등등)
		map.put("/myPageForm.do", new MyPageFormControl());
		map.put("/modifyForm.do", new ModifyFormControl());
		map.put("/modifyMember.do", new ModifyMemberControl());
		

	}

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//요청정보의 한글 인코딩 방식
		req.setCharacterEncoding("UTF-8");
		
		System.out.println("FrontController");
		String uri = req.getRequestURI(); // http://localhost:8080/helloJSP/??.do 에서 helloJSP/??.do가 uri    >>어떤 url이 들어오냐에 따라 다른 매소드들을 적용하기위해
		String context = req.getServletContext().getContextPath(); // =helloJSP
		String page = uri.substring(context.length());
		System.out.println(page);

		Command controller = map.get(page);
		controller.execute(req, resp);

	}

}
