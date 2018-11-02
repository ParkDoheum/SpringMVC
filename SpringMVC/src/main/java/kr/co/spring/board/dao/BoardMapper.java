package kr.co.spring.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.spring.board.model.BoardVO;
import kr.co.spring.board.model.CommentVO;

@Mapper
public interface BoardMapper {
	public List<BoardVO> getBoardList();
	
	public BoardVO getBoardDetail(int p);
	
	public void boardUpdateCnt(int p);
	
	public void deleteBoard(int p);
	
	public List<CommentVO> getCommentList(int p);
}
