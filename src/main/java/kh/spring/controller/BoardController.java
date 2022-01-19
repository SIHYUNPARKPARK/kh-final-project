package kh.spring.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kh.spring.dto.BoardDTO;
import kh.spring.dto.CommentDTO;
import kh.spring.service.BoardService;
import kh.spring.service.CommentService;

@Controller
@RequestMapping("/board/")
public class BoardController {
	
	@Autowired
	public BoardService bservice;
	
	@Autowired
	public CommentService cservice;	
	
	@Autowired
	private HttpSession session;
	
	@RequestMapping("boardList")
	public String boardList(Model model) {
		System.out.println("boardList 로 들어온 요청은 이 메서드를 실행합니다.");

		List<BoardDTO> list = bservice.selectAll();
		model.addAttribute("list", list);
		return "board/boardList";
	}
	
	@RequestMapping("writeForm")
	public String writeForm() {
		System.out.println("writeForm 로 들어온 요청은 이 메서드를 실행합니다.");

		return "board/writeForm";
	}

	@RequestMapping("toDetail")
	public String toDetail(int seq, Model model) {
		System.out.println("toDetail 로 들어온 요청은 이 메서드를 실행합니다.");

		BoardDTO dto = bservice.selectBySeq(seq);
		model.addAttribute("dto", dto);
		
		List<CommentDTO> list = cservice.selectBySeq(dto.getBoard_seq());
		model.addAttribute("list", list);
		
		return "board/boardDetail";
	}
	
	@RequestMapping("writeProc")
	public String writeProc(BoardDTO dto) throws Exception {
		System.out.println("writeProc 로 들어온 요청은 이 메서드를 실행합니다.");

//		dto.setWriter((String) session.getAttribute("loginID"));
		dto.setWriter("테스트 계정");
		int parentSeq = bservice.insert(dto);

		return "redirect:boardList";
	}
	
	@RequestMapping("deleteProc")
	public String deleteProc(int seq) {
		System.out.println("deleteProc 로 들어온 요청은 이 메서드를 실행합니다.");
		
		// 게시물 삭제되면 게시물 댓글 및 좋아요 삭제 구현 필요

		int result = bservice.delete(seq);
		return "redirect:boardList";
	}
	
	@RequestMapping("modify")
	public String modify(int seq, Model model) {
		System.out.println("modify 로 들어온 요청은 이 메서드를 실행합니다.");

		BoardDTO dto = bservice.selectBySeq(seq);
		model.addAttribute("dto", dto);
		return "board/modifyForm";
	}

	@RequestMapping("modifyProc")
	public String modifyProc(BoardDTO dto) {
		System.out.println("modifyProc 로 들어온 요청은 이 메서드를 실행합니다.");
		
//		dto.setWriter((String) session.getAttribute("loginID"));
		dto.setWriter("테스트 계정");

		int result = bservice.modify(dto);
		return "redirect:/board/toDetail?seq=" + dto.getBoard_seq();
	}
	
	
	@ResponseBody
	@RequestMapping(value = "likeProc", produces = "text/html; charset=utf8")
	public String likeProc(int seq) {
		System.out.println("likeProc 로 들어온 요청은 이 메서드를 실행합니다.");
		
//		String user_id = (String) session.getAttribute("loginID");
		String user_id = "테스트 계정";

		int result = bservice.like(seq, user_id);
		return String.valueOf(result);
	}
	
	@ResponseBody
	@RequestMapping(value = "dislikeProc", produces = "text/html; charset=utf8")
	public String dislikeProc(int seq) {
		System.out.println("dislikeProc 로 들어온 요청은 이 메서드를 실행합니다.");
		
//		String user_id = (String) session.getAttribute("loginID");
		String user_id = "테스트 계정";

		int result = bservice.dislike(seq, user_id);
		return String.valueOf(result);
	}

}
