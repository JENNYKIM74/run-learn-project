package com.hta.lecture.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.hta.lecture.dto.BoardDto;
import com.hta.lecture.vo.Board;
import com.hta.lecture.web.form.BoardCriteria;
import com.hta.lecture.web.form.Criteria;

@Mapper
public interface BoardMapper {

	List<BoardDto> getBoardByCriteria(BoardCriteria criteria);
}
