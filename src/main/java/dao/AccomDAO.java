package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.AccomVO;

@Repository("accomDAO")
public class AccomDAO {
	
	@Autowired 
	SqlSession sqlSession;

	// 예약숙소 확인
	public List<AccomVO> selectList() {
		List<AccomVO> list = sqlSession.selectList("s.myReservation");
		
		return list;
	}
	
	// 예약취소
	public int delete() {
		int res = sqlSession.delete("s.delete");
		
		return res;
	}
	
	// 예약하기
		public int insert(AccomVO vo) {
			int res = sqlSession.insert("s.reserv_insert", vo);
			
			return res;
		}		
}
