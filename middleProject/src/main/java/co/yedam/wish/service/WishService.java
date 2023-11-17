package co.yedam.wish.service;

import java.util.List;

public interface WishService {

  public boolean addWish(WishVO vo);  //찜추가 
  public WishVO checkWish(String wid , String fcode);  //장바구니 찜 체크 
  public List <WishVO> wishList(String mid); 
  public boolean removeWish(int wno);
}
