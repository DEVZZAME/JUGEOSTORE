package dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.HotelVO;


@Repository("stay_dao")
public class StayDAO {
	@Autowired
	SqlSession sqlSession;
	
	
	 public List<HotelVO> selectList(){
	 
	 List<HotelVO> list = sqlSession.selectList("airbnb.stay_list"); 
	 return list;
	 }
	 
	 
	// 예약하기(호텔이름 불러로기)
	public HotelVO email_selectOne(String name) {
		HotelVO vo = sqlSession.selectOne("airbnb.hotel_detail", name);
			
	return vo;
		}
	 
		/*
		  //페이지별 게시몰 조회 
		  public List<HotelVO> selectList(HashMap<String, Integer> map){
		  List<HotelVO> list = sqlSession.selectList("airbnb.stay_list", map);
		 
		  return list; } //게시판의 전체 게시물 수
		  
		  public int getRowTotal() {
		 
		  int count = sqlSession.selectOne("airbnb.stay_count"); 
		 
		  return count; }
		 */
}
