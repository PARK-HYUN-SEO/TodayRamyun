package org.zerock.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageDTO;
import org.zerock.domain.StarVO;
import org.zerock.service.StarService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@CrossOrigin
@Controller
@Log4j
@RequestMapping("/star/*")
@AllArgsConstructor
public class StarController {
	
	private StarService service;
	
	@GetMapping("/index")
	public void index() {
		
	}
	
	@GetMapping("/list")
	public void list(Criteria cri, Model model) {
		
		log.info("list : " + cri);
		
		model.addAttribute("list", service.getList(cri));
		
		int total = service.getTotal(cri);
		
		log.info("total : " + total);
		
		model.addAttribute("pageMaker", new PageDTO(cri, total));
	}
	
	@GetMapping("/register")
	public void register() {
		
	}
	
	@PostMapping("/register")
	public String register(StarVO star, RedirectAttributes rttr) {
		
		log.info("register : " + star);
		
		service.register(star);
		
		rttr.addFlashAttribute("result", star.getBno());
		
		return "redirect:/star/list";
	}
	
	@PostMapping("/modify")
	public String modify(StarVO star, RedirectAttributes rttr) {
		
		log.info("modify : " + star);
		
		if (service.modify(star)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/star/list";
	}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("bno") Long bno, RedirectAttributes rttr) {
		
		log.info("remove........" + bno);
		if (service.remove(bno)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/star/list";
	}
	
	
	
}
