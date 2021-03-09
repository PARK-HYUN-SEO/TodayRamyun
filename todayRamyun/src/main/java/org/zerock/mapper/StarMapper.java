package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.StarVO;

public interface StarMapper {

	public List<StarVO> getList();
	
	public List<StarVO> getListWithPaging(Criteria cri);
	
	public void insert(StarVO board);
	
	public StarVO read(Long bno);
	
	public int delete(Long bno);
	
	public int update(StarVO board);
	
	public int getTotalCount(Criteria cri);
	
}
