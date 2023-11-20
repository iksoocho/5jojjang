package co.yedam.review.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.yedam.common.Command;

public class AddReviewFormControl implements Command {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) {
		
		HttpSession session = req.getSession();
		
		String path = "review/addReviewForm.tiles";
		
		
		
		/*
		 * try { req.getRequestDispatcher(path).forward(req, resp); } catch
		 * (ServletException e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); } catch (IOException e) { // TODO Auto-generated catch
		 * block e.printStackTrace(); }
		 */
		
	
		if(session.getAttribute("loginId") == null){
			try {
			resp.sendRedirect("loginForm.do"); // **로그인폼 주소 물어보기~ 
		}catch(IOException e) {
			e.printStackTrace();
		}
		} else {

	try {
		req.getRequestDispatcher(path) //로그인정보있으면 등록화면으로 이동.
		.forward(req, resp);
	} catch (ServletException e) {
		e.printStackTrace();
	} catch (IOException e) {	
		e.printStackTrace();
	}
		}
		

	}

}
