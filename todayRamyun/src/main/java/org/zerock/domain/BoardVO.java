package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {

	private Long bnonp;
	private Long bnofr;
	private String boardid;
	private String boardnm;
	
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	private Date updateDate;
}
