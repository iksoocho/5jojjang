package co.yedam.reply.service;

import lombok.Data;

@Data
public class ReplyVO {

	private int rpno; // 댓글 번호
	private int rpqno; // (댓글 있는) 게시글 번호
	private String rpcontent;


}
