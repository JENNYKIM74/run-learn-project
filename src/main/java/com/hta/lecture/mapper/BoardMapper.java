package com.hta.lecture.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.hta.lecture.dto.BoardDetailDto;
import com.hta.lecture.dto.BoardDto;
import com.hta.lecture.vo.Board;
import com.hta.lecture.vo.BoardComment;
import com.hta.lecture.vo.Tag;
import com.hta.lecture.web.form.BoardCriteria;
import com.hta.lecture.web.form.Criteria;

@Mapper
public interface BoardMapper {

	
	List<BoardDto> getBoardByCriteria(BoardCriteria criteria);
	void addBoard(Board board);
	void addTag(Tag tag);
	
	BoardDetailDto getBoardDetailDto(int boardNo);
	List<Tag> getBoardTags(int boardNo);
	List<BoardComment> getBoardComments(int boardNo);
	
//	void deleteBoardByCriteria(int boardNo);
//	void updateBoardByCriteria(Board board);
}

