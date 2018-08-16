package kh.spring.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import kh.spring.dto.HomeDTO;
import kh.spring.dto.MessageDTO;
import kh.spring.interfaces.MessageDAO;

@Component
public class MessageDAOImpl implements MessageDAO{

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Autowired
	private SqlSession template;

	@Override
	public int countReview(int home_seq) {
		return template.selectOne("Message.countReview",home_seq);
	}

	@Override
	public int messageInsert(MessageDTO dto) {
		return template.insert("Message.messageInsert",dto);
	}

	@Override
	public HomeDTO getHomeInfo(int home_seq) {
		return template.selectOne("Message.getHomeInfo", home_seq);
	}


	
}
