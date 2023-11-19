package co.yedam.review.service;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewVO {

	private int rno;
	private int seq_rno;
	private String rid;
	private String rtitle;
	private String rcontent;
	private String rwriteDate;
	private String rlastUpdate;
	private String rimage;


}
