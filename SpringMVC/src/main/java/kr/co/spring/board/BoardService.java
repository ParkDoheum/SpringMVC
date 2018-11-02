package kr.co.spring.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.spring.board.dao.BoardMapper;
import kr.co.spring.board.model.BoardVO;
import kr.co.spring.board.model.CommentVO;

@Service
public class BoardService {
	
	@Autowired
	private BoardMapper mapper;
	
	public int getInt() {
		return 100;
	}
	
	public List<BoardVO> getBoardList() {
		return mapper.getBoardList();
	}
	
	public BoardVO getBoardDetail(int p) {
		return mapper.getBoardDetail(p);
	}
	
	public void boardUpdateCnt(int p) {
		mapper.boardUpdateCnt(p);
	}
	
	public void deleteBoard(int p) {
		mapper.deleteBoard(p);
	}
	
	public List<CommentVO> getCommentList(int p) {
		return mapper.getCommentList(p);
	}
}
