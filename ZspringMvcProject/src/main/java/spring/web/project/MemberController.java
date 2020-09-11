package spring.web.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import member.data.MemberDTO;
import member.data.MemberDaoInter;

@Controller
public class MemberController {
	
	@Autowired
	MemberDaoInter dao;
	
	@GetMapping("/member/list")
	public ModelAndView list() 
	{
		ModelAndView model=new ModelAndView();
		List<MemberDTO>list=dao.getAllDatas();
		model.addObject("list", list);
		model.addObject("cnt", list.size());
		
		model.setViewName("/member/memberList"); 
		return model;
		
		
	}
	
	
	
	@GetMapping("/member/insertform")
	public String memberform() 
	{
		
		return "/member/memberForm";
		
	}
	
	@PostMapping("/member/insert")
	public String insert (MemberDTO dto)
	{
		
		dao.insertmember(dto);
		return "redirect:list";
		
	}
	
	@GetMapping("/member/updateform")
	public ModelAndView update(@RequestParam String num) 
	
	{
		ModelAndView model = new ModelAndView();
		MemberDTO dto= dao.getdata(num);
		model.addObject("dto",	dto);
		
		model.setViewName("/member/updateForm");
		return 	model;
		
		
		
	}
	@PostMapping("/member/update")
	public String updateform(@ModelAttribute MemberDTO dto)
	{
		
		dao.updatemember(dto);
		return "redirect:list";
		
		
		
		
	}
	
	@GetMapping("/member/delete")
	public String delete (@RequestParam String num)
	{
		
		dao.deletemember(num);
		return "redirect:list";
		
	}
	
}
