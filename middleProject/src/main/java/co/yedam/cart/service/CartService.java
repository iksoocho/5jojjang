package co.yedam.cart.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface CartService {

	
	public boolean addCart(CartVO vo);  //장바구니추가 
	public List <CartVO> cartList (String mid);  //장바구니 목록확인 
	public boolean removeCart (int cno);  //장바구니삭제
	public int cartCnt (String cid); //장바구니 갯수 카운트
	
	
	
}


