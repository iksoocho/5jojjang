package co.yedam.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.adminPage.web.adFvListControl;
import co.yedam.adminPage.web.adMainControl;
import co.yedam.adminPage.web.addAdFvControl;
import co.yedam.adminPage.web.addAdFvFormControl;
import co.yedam.adminPage.web.delAdFvControl;
import co.yedam.adminPage.web.delAdFvFormControl;
import co.yedam.adminPage.web.getAdFvControl;
import co.yedam.adminPage.web.modAdFvControl;
import co.yedam.adminPage.web.modAdFvFormControl;
import co.yedam.cart.web.CartControl;
import co.yedam.cart.web.CartListControl;
import co.yedam.cart.web.DelCartControl;
import co.yedam.festival.web.DayListControl;
import co.yedam.festival.web.FestivalInfoControl;
import co.yedam.festival.web.FestivalListControl;
import co.yedam.festival.web.TotalListControl;
import co.yedam.member.web.CheckIdControl;
import co.yedam.member.web.CheckModifyControl;
import co.yedam.member.web.JoinControl;
import co.yedam.member.web.JoinFormControl;
import co.yedam.member.web.ModifyFormControl;
import co.yedam.member.web.ModifyMemberControl;
import co.yedam.member.web.MyPageFormControl;
import co.yedam.member.web.RemoveFormControl;
import co.yedam.member.web.RemoveMemberControl;
import co.yedam.member.web.getMemberControl;
import co.yedam.payment.web.PaymentControl;
import co.yedam.payment.web.PaymentListControl;
import co.yedam.qna.web.AddQnaControl;
import co.yedam.qna.web.AddQnaFormControl;
import co.yedam.qna.web.GetQnaControl;
import co.yedam.qna.web.ModifyQnaControl;
import co.yedam.qna.web.ModifyQnaFormControl;
import co.yedam.qna.web.QnaListControl;
import co.yedam.qna.web.RemoveQnaControl;
import co.yedam.qna.web.RemoveQnaFormControl;
import co.yedam.reply.web.AddReplyControl;
import co.yedam.reply.web.RemoveReplyControl;
import co.yedam.reply.web.ReplyListControl;
import co.yedam.review.web.AddReviewControl;
import co.yedam.review.web.AddReviewFormControl;
import co.yedam.review.web.GetReviewControl;
import co.yedam.review.web.ModifyReviewControl;
import co.yedam.review.web.ModifyReviewFormControl;
import co.yedam.review.web.RemoveReviewControl;
import co.yedam.review.web.RemoveReviewFormControl;
import co.yedam.review.web.ReviewListControl;
import co.yedam.wish.web.DelWishControl;
import co.yedam.wish.web.WishControl;
import co.yedam.wish.web.WishListControl;

public class FrontController extends HttpServlet { // ??.do 로 끝나면 항상 FrontController가 실행되는데 어떤 .do 냐 따라서 다른 매소드들을 실행해주기
	// 위해 나눠놈
	Map<String, Command> map = new HashMap<>();

	@Override
	public void init() throws ServletException {
		
		//메인
		map.put("/main.do", new MainControl());

		// 축제관련
		map.put("/festivalInfo.do", new FestivalInfoControl()); // 축제 하나 상세조회
		map.put("/dayList.do", new DayListControl()); // 지정된날짜에 해당하는 축제 보여주기
		map.put("/totalList.do", new TotalListControl()); // 전체 축제조회
		map.put("/calendar.do", new FestivalListControl()); // 전체 달력

		// 찜하기
		map.put("/wish.do", new WishControl());  //찜추가하기
		map.put("/wishList.do", new WishListControl()); // 찜목록 보기
		map.put("/delWish.do", new DelWishControl());  //찜 삭제 
		// 장바구니
		map.put("/cart.do", new CartControl()); //장바구니추가하기
		map.put("/cartList.do", new CartListControl()); //장바구니 목록 보기
		map.put("/delCart.do", new DelCartControl()); //장바구니 목록 보기'
		
		// 결제하기
		map.put("/payment.do", new PaymentControl()); //결제 정보확인
		map.put("/paymentList.do", new PaymentListControl());  //구매내역

		// 로그인
		map.put("/loginForm.do", new LoginFormControl());
		map.put("/login.do", new LoginControl());
		map.put("/logout.do", new LogoutControl());

		// 회원가입
		map.put("/joinForm.do", new JoinFormControl()); // 회원가입 화면
		map.put("/join.do", new JoinControl());
		map.put("/checkId.do", new CheckIdControl());

		// Qna
		map.put("/qnaList.do", new QnaListControl()); // 전체 목록보기
		map.put("/getQna.do", new GetQnaControl()); // 상세화면보기

		// 로그인
		map.put("/loginForm.do", new LoginFormControl());
		map.put("/login.do", new LoginControl());

		
		map.put("/logout.do", new LogoutControl());
		map.put("/checkLogin.do", new CheckLoginControl()); // 로그인 실패 경고창

		// 마이페이지(회원정보 수정, 회원 탈퇴 등등)
		map.put("/myPageForm.do", new MyPageFormControl());
		map.put("/modifyForm.do", new ModifyFormControl());
		map.put("/modifyMember.do", new ModifyMemberControl());


		// Qna
		map.put("/qnaList.do", new QnaListControl()); // 전체 목록보기
		map.put("/getQna.do", new GetQnaControl()); // 상세화면보기
		//map.put("/qnaList2.do", new QListControl()); // 상세화면보기

		

		map.put("/addQnaForm.do", new AddQnaFormControl()); // qna 글 등록폼
		map.put("/addQna.do", new AddQnaControl()); // 글 등록

		// 마이페이지(회원정보 수정, 회원 탈퇴 등등)
		map.put("/myPageForm.do", new MyPageFormControl());
		map.put("/getMember.do", new getMemberControl());
		map.put("/modifyForm.do", new ModifyFormControl());
		map.put("/modifyMember.do", new ModifyMemberControl());

		map.put("/checkModify.do", new CheckModifyControl()); // 회원 정보 수정 확인 경고창
		map.put("/removeForm.do", new RemoveFormControl());
		map.put("/removeMember.do", new RemoveMemberControl());

		map.put("/modifyQnaForm.do", new ModifyQnaFormControl()); // 수정 폼
		map.put("/modifyQna.do", new ModifyQnaControl()); // qna글 수정하기

		map.put("/removeQnaForm.do", new RemoveQnaFormControl()); // qna 삭제 폼
		map.put("/removeQna.do", new RemoveQnaControl()); // qna 삭제

		// Reply
		map.put("/replyList.do", new ReplyListControl());
		map.put("/addReply.do", new AddReplyControl());
		map.put("/removeReply.do", new RemoveReplyControl());

		// Review
		map.put("/reviewList.do", new ReviewListControl()); // 전체 리뷰
		map.put("/getReview.do", new GetReviewControl()); // 상세화면보기

		map.put("/addReviewForm.do", new AddReviewFormControl()); // 리뷰 등록 폼
		map.put("/addReview.do", new AddReviewControl()); // 리뷰 등록

		map.put("/modifyReviewForm.do", new ModifyReviewFormControl()); // 수정 폼
		map.put("/modifyReview.do", new ModifyReviewControl()); // 리뷰글 수정하기

		map.put("/removeReviewForm.do", new RemoveReviewFormControl()); // 리뷰 삭제 폼
		map.put("/removeReview.do", new RemoveReviewControl()); // 리뷰 삭제


		map.put("/main.do", new MainControl());
		// map.put("/qnaList.do", new QnaListControl()); //전체 목록보기

		map.put("/getQna.do", new GetQnaControl()); // 상세화면보기

		map.put("/addQnaForm.do", new AddQnaFormControl()); // qna 글 등록폼
		map.put("/addQna.do", new AddQnaControl()); // 글 등록

		map.put("/modifyQnaForm.do", new ModifyQnaFormControl()); // 수정 폼
		map.put("/modifyQna.do", new ModifyQnaControl()); // qna글 수정하기

		map.put("/main.do", new MainControl());

		

		map.put("/calendar.do", new FestivalListControl());
		map.put("/dayList.do", new DayListControl());
		map.put("/festivalInfo.do", new FestivalInfoControl());


		map.put("/dayList.do", new DayListControl()); // 지정된날찌에 해당하는

		map.put("/main.do", new MainControl());
		map.put("/calendar.do", new FestivalListControl());
		map.put("/dayList.do", new DayListControl());
		
		//관리자 축제관리페이지 
		map.put("/admain.do", new adMainControl());
		map.put("/adFvList.do", new adFvListControl());
		map.put("/getadFv.do", new getAdFvControl());
		map.put("/addAdFvForm.do", new addAdFvFormControl());
		map.put("/addAdFv.do", new addAdFvControl());
		map.put("/modifyAdFvForm.do", new modAdFvFormControl());
		map.put("/modifyAdFv.do", new modAdFvControl());
		map.put("/deleteAdFvForm.do", new delAdFvFormControl());
		map.put("/deleteAdFv.do", new delAdFvControl());
	
		
		
		

	}


	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 요청정보의 한글 인코딩 방식
		req.setCharacterEncoding("UTF-8");

		System.out.println("FrontController");
		String uri = req.getRequestURI(); // http://localhost:8080/helloJSP/??.do 에서 helloJSP/??.do가 uri >>어떤 url이 들어오냐에
		// 따라 다른 매소드들을 적용하기위해
		String context = req.getServletContext().getContextPath(); // =helloJSP
		String page = uri.substring(context.length());
		System.out.println(page);

		Command controller = map.get(page);
		controller.execute(req, resp);
	}

}
