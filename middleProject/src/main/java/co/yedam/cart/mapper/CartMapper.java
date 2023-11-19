package co.yedam.cart.mapper;

import java.util.List;

import co.yedam.cart.service.CartVO;

public interface CartMapper {

	public int insert (CartVO vo);  //장바구니 추가
	
	public List <CartVO> cartList(String mid);  //해당아이디의 장바구니 목록 불러오기
	
	public int delete (int cno); //장바구니삭제 
	
	public int cartCnt (String cid); //장바구니 갯수 카운트
	
}