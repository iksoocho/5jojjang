package co.yedam.cart.service;

import java.util.List;

public interface CartService {

	
	public boolean addCart(CartVO vo);  //장바구니추가 
	public List <CartVO> cartList (String mid);  //장바구니 목록확인 
}
