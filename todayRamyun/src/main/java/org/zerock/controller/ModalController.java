package org.zerock.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.StarVO;
import org.zerock.service.StarService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/modals/")
@RestController
@Log4j
@AllArgsConstructor
public class ModalController {

	private StarService service;
	
	@GetMapping(value = "/{bno}",
			produces = {MediaType.APPLICATION_XML_VALUE,
						MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<StarVO> get(@PathVariable("bno") Long bno) {
		
		log.info("get : " + bno);
		
		return new ResponseEntity<>(service.get(bno), HttpStatus.OK);
	}
}
