package dao;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.CustomerVO;

@Repository("customerDAO")
public class CustomerDAO {

	
	@Autowired 
	SqlSession sqlSession;	
	
	
	 public List<CustomerVO> selectList(){
	 
	 List<CustomerVO> list = sqlSession.selectList("s.customer_list"); return
	 list; 
	 }
	 
	
	/*
	 * public List<CustomerVO> selectList(){ List<CustomerVO> list =
	 * sqlSession.selectList("s.profile"); return list; }
	 */
	
	 
	 
	// 회원가입
	public int insert1(CustomerVO vo) {
		int res = sqlSession.insert("s.customer_insert", vo);
		
		return res;
	}		

	
	// 아이디 중복확인
	public CustomerVO id_selectOne(String id) {
		CustomerVO vo = sqlSession.selectOne("s.id_one", id);
		
		return vo;
	}
	
	// 이메일 중복확인
	public CustomerVO email_selectOne(String email) {
		CustomerVO vo = sqlSession.selectOne("s.email_one", email);
		
		return vo;
	}
	
	// 로그인
	public CustomerVO login(CustomerVO vo) {
		CustomerVO vo2 = sqlSession.selectOne("s.login", vo);
			
		return vo2;		
	}
	
	
	  //수정하기 
		public int update (CustomerVO vo) {

			
	  int res = sqlSession.update("s.customer_update", vo); 
	  System.out.println("res:"+res);
	  return res; 
	  }
		
	
	 
	
}
