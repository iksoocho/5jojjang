package co.yedam.qna.service;

import lombok.Data;

@Data
public class QnaVO {

	private int qno;
	private String qid;
	private String qtitle;
	private String qcontent;
	private String qwriteDate;
	private String qlastUpdate;
	private String qpass;


}
