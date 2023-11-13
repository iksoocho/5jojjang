package co.yedam.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.qna.web.QnaListControl;
import co.yedam.qna.web.getQnaControl;

public class FrontController extends HttpServlet{

	Map<String, Command> map = new HashMap<>(); // url값이랑 인터페이스구현클래스.(*command는 인터페이스)

	// init -> service
	@Override
	public void init() throws ServletException {
		
		
		System.out.println("오후7시  1번 커밋! ");
		
		
		map.put("/main.do", new MainControl());
		
		
		map.put("/qnaList.do", new QnaListControl()); //전체 목록보기
		map.put("/getQna.do", new getQnaControl()); //상세화면보기
		
		map.put("/tQna.do", new getQnaControl()); //수정 폼
		map.put("/getQna.do", new getQnaControl());  //qna글 수정하기
		
		
		

	} //init

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//Post방식으로 하면 이렇게 해줘야함
		req.setCharacterEncoding("UTF-8"); //요청정보의 한글 인코딩 방식
		
		String url = req.getRequestURI(); // 어떤 정보요청했는지 반환함 :getRequestURI- http://localhost:8080/helloJSP/??.do 에서
		String context = req.getServletContext().getContextPath(); // helloJSP;		
		String page = url.substring(context.length()); // 프로젝트명. 콘솔 : /firstServlet.do
			
		
		Command controller = map.get(page); //키값이 들어오면 value 반환. 
		controller.execute(req, resp); //인터페이스 구현한걸 여기서 실행하도록! 
		
	
	}

}
