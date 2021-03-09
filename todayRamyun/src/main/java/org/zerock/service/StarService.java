package org.zerock.service;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.StarVO;

public interface StarService {

	public List<StarVO> getList(Criteria cri);
	
	public void register(StarVO board);
	
	public StarVO get(Long bno);
	
	public boolean modify(StarVO board);
	
	public boolean remove(Long bno);
	
	public int getTotal(Criteria cri);
}
