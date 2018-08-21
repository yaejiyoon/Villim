package kh.spring.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import kh.spring.dto.GuestReviewDTO;
import kh.spring.dto.HostReviewDTO;
import kh.spring.interfaces.ReviewDAO;

@Component
public class ReviewDAOImpl implements ReviewDAO{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	
	@Override
	public List<GuestReviewDTO> getAllGuestReviewData(Map<String, Integer> map) {
		return sqlSessionTemplate.selectList("GuestReview.getAllGuestReviewData",map);
	}
	
	@Override
	public List<HostReviewDTO> getAllHostReviewData(int home_seq) {
		return sqlSessionTemplate.selectList("HostReview.getAllData",home_seq);
	}

	@Override
	public String getReviewPageNavi(int currentPageNo, int home_seq) {
		int count = sqlSessionTemplate.selectOne("GuestReview.getReviewPageNavi");
		System.out.println("navi: " + count);

		int recordTotalCount = count;

		int recordCountPerPage = 5;
		int naviCountPerPage = 5;
		int pageTotalCount = 0;

		if (recordTotalCount % recordCountPerPage > 0) {
			pageTotalCount = recordTotalCount / recordCountPerPage + 1;
		} else {
			pageTotalCount = recordTotalCount / recordCountPerPage;
		}

		int currentPage = currentPageNo;

		if (currentPage < 1) {
			currentPage = 1;
		} else if (currentPage > pageTotalCount) {
			currentPage = pageTotalCount;
		}
		
		// 네비게이터 스타트번호와 끝번호 나타내기
		int startNavi = (currentPage - 1) / naviCountPerPage * naviCountPerPage + 1;
		// 네비게이터가 시작 값; 딱 떨어지는 값의 시작페이지가 이상하기 때문에 1을 빼줘야한다.
		// currentPage / naviCountPerPage * naviCountPerPage + 1;
		int endNavi = startNavi + (naviCountPerPage - 1); // 네비게이터 끝 값

		System.out.println("startNavi:" + startNavi);
		System.out.println("endNavi:" + endNavi);

		if (endNavi > pageTotalCount) {
			endNavi = pageTotalCount;
		}

		boolean needPrev = true;
		boolean needNext = true;

		if (startNavi == 1) {
			needPrev = false;
		}

		if (endNavi == pageTotalCount) {
			needNext = false;
		}

		StringBuilder sb = new StringBuilder();

		if (needPrev) {
			sb.append("<li><a href='home_info.do?currentPage=" + (startNavi - 1)
					+ "&seq="+home_seq+"' id='naviPrev'> < </a></li>");
		}else {
			sb.append("<li class='disabled'><a href='home_info.do?currentPage=" + (startNavi - 1)
					+ "&seq="+home_seq+"' id='naviPrev'> < </a></li>");
		}

		for (int i = startNavi; i <= endNavi; i++) {
			if (currentPage == i) {
				sb.append("<li class='active'><a href='home_info.do?currentPage=" + i + "&seq="+home_seq+"' class='naviCurrentPage'> <b>" + i + "</b></a></li>");
			} else {
				sb.append("<li><a href='javascript:void(0);' class='naviPage' onclick='pageFunction("+i+","+home_seq+");'>" + i + "</a></li>");
			}

			
		}
		
		if (needNext) {
			sb.append("<li><a href='home_info.do?currentPage=" + (endNavi + 1)
					+ "&seq="+home_seq+"'id='naviNext'> > </a></li>");
		}

		return sb.toString();
	}

	
	
}
