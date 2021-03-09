package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.Criteria;
import org.zerock.domain.StarVO;
import org.zerock.mapper.StarMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class StarServiceImpl implements StarService {
	
	private StarMapper mapper;
	
	@Override
	public List<StarVO> getList(Criteria cri) {
		
		log.info("get List with criteria : " + cri);
		
		return mapper.getListWithPaging(cri);
	}
		
	@Override
	public void register(StarVO board) {
		
		log.info("register..........." + board);
		
		mapper.insert(board);
	}
	
	@Override
    public StarVO get(Long bno) {
		
		log.info("get............." + bno);
		
		return mapper.read(bno);
	}
	
	@Override
	public boolean modify(StarVO board) {
		
		log.info("modify......" + board);
		
		return mapper.update(board) == 1;
	}
	
	@Override
	public boolean remove(Long bno) {
		
		log.info("remove..." + bno);
		
		return mapper.delete(bno) == 1;
	}
	
	@Override
	public int getTotal(Criteria cri) {
		
		log.info("get total count");
		
		return mapper.getTotalCount(cri);
	}
}
