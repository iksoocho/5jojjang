package co.yedam.qna.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.common.Command;


public class AddQnaFormControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		HttpSession session = req.getSession();
		String path = "qna/addQnaForm.tiles";
		 
		if(session.getAttribute("mid") == null){
			try {
			resp.sendRedirect("loginForm.do"); // **로그인폼 주소 물어보기~ 
		}catch(IOException e) {
			e.printStackTrace();
		}
		}else {

	try {
		req.getRequestDispatcher(path) //로그인정보있으면 등록화면으로 이동.
		.forward(req, resp);
	} catch (ServletException e) {
		
		e.printStackTrace();
	} catch (IOException e) {	
		e.printStackTrace();
	}
		}
		

	} //execute

}
