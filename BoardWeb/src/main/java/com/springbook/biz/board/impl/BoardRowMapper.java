package com.springbook.biz.board.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.springbook.biz.board.BoardVO;
import org.springframework.jdbc.core.RowMapper;

public class BoardRowMapper implements RowMapper<BoardVO> {
	public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		BoardVO board = new BoardVO();
		board.setSeq(rs.getInt("SEQ"));
		board.setTitle(rs.getString("TITLE"));
		board.setWriter(rs.getString("TITLE"));
		board.setContent(rs.getString("TITLE"));
		board.setRegDate(rs.getDate("TITLE"));
		board.setCnt(rs.getInt("CNT"));
		return board;
	}

}
