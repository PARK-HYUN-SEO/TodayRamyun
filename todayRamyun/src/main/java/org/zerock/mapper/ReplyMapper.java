package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.ReplyVO;

public interface ReplyMapper {

	public int insert(ReplyVO vo);
	
	public List<ReplyVO> getList(@Param("bno") Long bno);
	
	public int delete(Long rno);
	
	public int update(ReplyVO reply);
	
}
