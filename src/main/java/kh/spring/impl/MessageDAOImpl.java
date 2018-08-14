package kh.spring.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import kh.spring.interfaces.MessageDAO;

@Component
public class MessageDAOImpl implements MessageDAO{

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Autowired
	private SqlSession template;
	
}
