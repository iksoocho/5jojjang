package co.yedam.qna.service;

import lombok.Data;

@Data
public class QnaVO {

	private int qno;
	private int seq_qno;
	private String qid;
	private String qtitle;
	private String qcontent;
	private String qwritedate;
	private String qlastupdate;
	private String qpass;


}
