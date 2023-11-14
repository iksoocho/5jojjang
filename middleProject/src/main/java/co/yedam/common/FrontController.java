package co.yedam.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.qna.web.AddQnaControl;
import co.yedam.qna.web.AddQnaFormControl;
import co.yedam.qna.web.RemoveQnaControl;
import co.yedam.qna.web.RemoveQnaFormControl;
import co.yedam.qna.web.GetQnaControl;
import co.yedam.qna.web.ModifyQnaControl;
import co.yedam.qna.web.ModifyQnaFormControl;
import co.yedam.qna.web.QnaListControl;
import co.yedam.reply.web.AddReplyControl;
import co.yedam.reply.web.RemoveReplyControl;
import co.yedam.reply.web.ReplyListControl;
import co.yedam.review.web.AddReviewControl;
import co.yedam.review.web.AddReviewFormControl;
import co.yedam.review.web.RemoveReviewFormControl;
import co.yedam.review.web.GetReviewControl;
import co.yedam.review.web.ModifyReviewControl;
import co.yedam.review.web.ModifyReviewFormControl;
import co.yedam.review.web.RemoveReviewControl;
import co.yedam.review.web.ReviewListControl;

public class FrontController extends HttpServlet{

	Map<String, Command> map = new HashMap<>(); // url값이랑 인터페이스구현클래스.(*command는 인터페이스)

	@Override
	public void init() throws ServletException {
		
		map.put("/main.do", new MainControl());
		
	//Qna	
		map.put("/qnaList.do", new QnaListControl()); //전체 목록보기
		map.put("/getQna.do", new GetQnaControl()); //상세화면보기
		
		map.put("/addQnaForm.do", new AddQnaFormControl()); //qna 글 등록폼
		map.put("/addQna.do", new AddQnaControl()); // 글 등록
		
		map.put("/modifyQnaForm.do", new ModifyQnaFormControl()); //수정 폼
		map.put("/modifyQna.do", new ModifyQnaControl());  //qna글 수정하기
		
		map.put("/removeQnaForm.do", new RemoveQnaFormControl()); //qna 삭제 폼
		map.put("/removeQna.do", new RemoveQnaControl()); //qna 삭제
		
	//Reply
		map.put("/replyList.do", new ReplyListControl()); 
		map.put("/addReply.do", new AddReplyControl());
		map.put("/removeReply.do", new RemoveReplyControl());
		
	
	//Review
		map.put("/reviewList.do", new ReviewListControl()); //전체 리뷰
		map.put("/getReview.do", new GetReviewControl()); //상세화면보기
		
		map.put("/addReviewForm.do", new AddReviewFormControl()); // 리뷰 등록 폼
		map.put("/addReview.do", new AddReviewControl()); // 리뷰 등록
		
		map.put("/modifyReviewForm.do", new ModifyReviewFormControl()); //수정 폼
		map.put("/modifyReview.do", new ModifyReviewControl());  //리뷰글 수정하기
		
		map.put("/removeReviewForm.do", new RemoveReviewFormControl()); // 리뷰 삭제 폼
		map.put("/removeReview.do", new RemoveReviewControl()); //리뷰 삭제
		
		

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
