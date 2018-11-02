package kr.co.spring.board;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.spring.board.model.BoardVO;
import kr.co.spring.board.model.CommentVO;

@Controller
@RequestMapping("board")
public class BoardController {

	@Autowired
    private BoardService service;
	
	@RequestMapping("list")
	public String list(Locale locale, Model model) {		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("list", service.getBoardList());		
		model.addAttribute("title", "리스트");
		model.addAttribute("target", "list");		
		return "list";
	}
	
	@RequestMapping(value="/detail", method=RequestMethod.GET)
	public String detailGet(@RequestParam int board_no, Model model) {		
		System.out.println("BoardController.detailGet() [START]");
		System.out.println("board_no : " + board_no);
		
		BoardVO vo = service.getBoardDetail(board_no);
		System.out.println(vo);
		
		model.addAttribute("vo", vo);
		
		List<CommentVO> commentList = service.getCommentList(board_no);		
		model.addAttribute("commentList", commentList);
		
		System.out.println("BoardController.detailGet() [END]");
		return "detail";
	}
	
	@RequestMapping(value="/detail", method=RequestMethod.POST)
	public String detailPost(@RequestParam String type, @RequestParam int board_no, Model model) {
		System.out.println("BoardController.detailPost() [START]");
		System.out.println("board_no : " + board_no);
		
		if (type.equals("del")) {
			// TODO: 글 삭제시 처리
		}
		
		return "redirect:detail?board_no=" + board_no;
	}
	
}
