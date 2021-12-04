package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.ReviewVO;

@Repository("reviewDAO")
public class ReviewDAO {
	
	@Autowired 
	SqlSession sqlSession;

	// review 리스트
	  public List<ReviewVO> selectList(String hotelname) { 
		  List<ReviewVO> list =
	  sqlSession.selectList("airbnb.review_list", hotelname); 
		  return list; }
	 

	}
	

