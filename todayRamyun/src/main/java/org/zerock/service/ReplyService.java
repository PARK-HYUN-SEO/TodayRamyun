package org.zerock.service;

import java.util.List;

import org.zerock.domain.ReplyVO;

public interface ReplyService {

	public int register(ReplyVO vo);
	
	public List<ReplyVO> getList(Long bno);
	
	public int modify(ReplyVO vo);
	
	public int remove(Long rno);
}
