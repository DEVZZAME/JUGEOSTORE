package spring.project.auto;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.AccomDAO;
import dao.CustomerDAO;
import dao.ReviewDAO;
import dao.StayDAO;
import util.Common;
import util.Paging;
import vo.AccomVO;
import vo.CustomerVO;
import vo.HotelVO;
import vo.ReviewVO;



@Controller
public class StayController {
	
	@Autowired
	StayDAO stay_dao;
	HttpServletRequest request;
	
	@Autowired
	CustomerDAO customerDAO;
	
	@Autowired
	AccomDAO accomDAO;
	
	@Autowired
	ReviewDAO reviewDAO;

	@RequestMapping(value= {"/", "main.do"})
	public String main( Model model ) {
		return "/WEB-INF/views/airbnb/index.jsp";
	}
	@RequestMapping("/list.do")
	public String list(Model model) {
		List<HotelVO> list = stay_dao.selectList();
		model.addAttribute("list", list);
		return "/WEB-INF/views/airbnb/list.jsp";
	}
	
	@RequestMapping("/acc1.do")
	public String acc1(Model model, String hotelname) {
		
		//System.out.println("호텔명:" + hotelname);
		
		List<HotelVO> list = stay_dao.selectList();
		model.addAttribute("list", list);
		

		List<ReviewVO> rev = reviewDAO.selectList(hotelname);
		List<ReviewVO> rev1 = new ArrayList<ReviewVO>();
		List<ReviewVO> rev2 = new ArrayList<ReviewVO>();

		for( int i = 0; i < rev.size(); i++){
		    
		    if( i < rev.size()/2 ){
		    	rev1.add( rev.get(i) );
		    } else {
		    	rev2.add( rev.get(i) );     
		    }
		}
		
		model.addAttribute( "rev1", rev1 );
	    model.addAttribute( "rev2", rev2 );
		 
		
		return "/WEB-INF/views/airbnb/acc1_detail.jsp";
	}
	
	@RequestMapping("/acc2.do")
	public String acc2(Model model, String hotelname) {
		List<HotelVO> list = stay_dao.selectList();
		model.addAttribute("list", list);
		
		List<ReviewVO> rev = reviewDAO.selectList(hotelname);
		List<ReviewVO> rev1 = new ArrayList<ReviewVO>();
		List<ReviewVO> rev2 = new ArrayList<ReviewVO>();

		for( int i = 0; i < rev.size(); i++){
		    
		    if( i < rev.size()/2 ){
		    	rev1.add( rev.get(i) );
		    } else {
		    	rev2.add( rev.get(i) );     
		    }
		}
		
		model.addAttribute( "rev1", rev1 );
	    model.addAttribute( "rev2", rev2 );
	    
	    
		
		return "/WEB-INF/views/airbnb/acc2_detail.jsp";
	}
	@RequestMapping("/acc3.do")
	public String acc3(Model model, String hotelname) {
		List<HotelVO> list = stay_dao.selectList();
		model.addAttribute("list", list);
		
		List<ReviewVO> rev = reviewDAO.selectList(hotelname); 
		List<ReviewVO> rev1 = new ArrayList<ReviewVO>();
		List<ReviewVO> rev2 = new ArrayList<ReviewVO>();

		for( int i = 0; i < rev.size(); i++){
		    
		    if( i < rev.size()/2 ){
		    	rev1.add( rev.get(i) );
		    } else {
		    	rev2.add( rev.get(i) );     
		    }
		}
		
		model.addAttribute( "rev1", rev1 );
	       model.addAttribute( "rev2", rev2 );
		
		
		
		return "/WEB-INF/views/airbnb/acc3_detail.jsp";
	}
	
	@RequestMapping("/loginPage.do")
	public String login(Model model) {
		return "/WEB-INF/views/airbnb/loginPage.jsp";
	}
	@RequestMapping("/signUpPage.do")
	public String signUp(Model model) {
		return "/WEB-INF/views/airbnb/signUpPage.jsp";
	}
	//예약조회 프로필 조회
	@RequestMapping("/myPage.do")
	public String myPage(Model model) {
		List<AccomVO> list = accomDAO.selectList();
		model.addAttribute("list", list);
		
		List<CustomerVO> cus = customerDAO.selectList(); 
		 model.addAttribute("cus", cus);
		
		return "/WEB-INF/views/airbnb/myPage.jsp";
	}
	@RequestMapping("/main2.do")
	public String main2(Model model) {
		List<HotelVO> list = stay_dao.selectList();
		model.addAttribute("list", list);
		return "/WEB-INF/views/airbnb/index2.jsp";
	}
	@RequestMapping("/faq.do")
	public String faq( Model model ) {
		return "/WEB-INF/views/airbnb/faq.jsp";
	}
	
	@RequestMapping("/change.do")
	public String change( Model model ) {
		List<CustomerVO> cus = customerDAO.selectList(); 
		 model.addAttribute("cus", cus);
		return "/WEB-INF/views/airbnb/modify.jsp";
	}
	
	//리뷰리스트
	/*@RequestMapping("/reviewlist.do")
	public String reviewlist(Model model) {
		List<ReviewVO> list = reviewDAO.selectList();
		model.addAttribute("list", list);
		return "/WEB-INF/views/airbnb/acc1_detail.jsp";
	}*/
	
		//----------------------- 기능 -------------------------
		// 회원가입
		@RequestMapping("/insert.do")
		public String insert(CustomerVO vo) {
			int res = customerDAO.insert1(vo);
			
			return "redirect:loginPage.do";
		}
		
		// 아이디 중복확인
		@RequestMapping("/check_id.do")
		@ResponseBody
		public String id_check(String id) {
			CustomerVO vo = customerDAO.id_selectOne(id);
			
			String id_res = "[{'id_result':'no'}]";
			if (vo == null) {
				id_res = "[{'id_result':'yes'}]";
			}
			
			return id_res;
		}
		
		// 이메일 중복확인
		@RequestMapping("/check_email.do")
		@ResponseBody
		public String email_check(String email) {
			CustomerVO vo = customerDAO.email_selectOne(email);
			
			String email_res = "[{'email_result':'no'}]";
			if (vo == null) {
				email_res = "[{'email_result':'yes'}]";
			}
			
			return email_res;
		}	
		
		// 로그인
		@RequestMapping("/login.do")
		@ResponseBody
		public String login(HttpSession session, CustomerVO vo) {
			// 로그인이 되면 vo2에 객체가 넘어오게 된다.
			CustomerVO vo2 = customerDAO.login(vo);
			if (vo2 != null) {
				session.setAttribute("loginUser", vo2);
			}
			
			String login_res = "[{'login_result':'yes'}]";
			if (vo2 == null) {
				login_res = "[{'login_result':'no'}]";
			}
				
			return login_res; 
		}	
		
		//로그아웃
		@RequestMapping("/logout.do")
		public void logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
			try {
				response.setContentType("text/html; charset=utf-8");
				String contextPath = request.getContextPath();
				PrintWriter out = response.getWriter();
				session.invalidate();
				out.print("<script>");
				out.print("alert('로그아웃 되었습니다.');");
				out.print(String.format("location.href='%s/main.do';", contextPath));
				out.print("</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		
		// 예약하기
		@RequestMapping("/reserv.do")
		public String insert(AccomVO vo) {
			
			//2021-08-04
			String[] checkin = vo.getCheckin().split("-");
			String real_checkin = String.format("%s-%s-%s", checkin[1], checkin[2], checkin[0]);
			
			
			String[] checkout = vo.getCheckout().split("-");
			String real_checkout = String.format("%s-%s-%s", checkout[1], checkout[2], checkout[0]);
			
			vo.setCheckin(real_checkin);
			vo.setCheckout(real_checkout);
			
		int res = accomDAO.insert(vo);
					
		return "redirect:myPage.do";
		}
		
		
		// 예약숙소 확인
		@RequestMapping("/myReservation.do")
		public String myReservation(Model model) {
			List<AccomVO> list = accomDAO.selectList();
			
			model.addAttribute("list", list);
			
			return "/WEB-INF/views/airbnb/myPage.jsp";
		}
		
		
		// 예약 취소
		@RequestMapping("/delete.do")
		public String delete(Model model) {
			int res = accomDAO.delete();
			
			return "redirect:myPage.do";		 
		}
		
		
		  //글수정
		  @RequestMapping("/modify.do")
		 @ResponseBody 
		  public String modify( CustomerVO vo ) {
		  
		  int res = customerDAO.update(vo);
		  
		 String result = "no"; 
		  if(res == 1) { 
			  result = "yes"; 
		  }
		  return result;
		  }
		 
		

		//----------------------- /기능 -------------------------
	
		
		  @RequestMapping("/list2.do") 
		  public String list2(Model model) { 
			  List<HotelVO> list = stay_dao.selectList(); 
			  model.addAttribute("list", list); 
			  
			//List<ReviewVO> rev = reviewDAO.selectList(); 
			// model.addAttribute("rev", rev);
			  
		  return "/WEB-INF/views/airbnb/testlist.jsp"; 
		  }
		 

		//----------------------- /페이징 -------------------------

		/*	@RequestMapping(value= {"/page.do"})
			public String list(Model model, String page) {
		
				int nowPage = 1;//기본 페이지는 1

				if( page != null && !page.isEmpty() ) {
					nowPage = Integer.parseInt(page);
				}

				int start = (nowPage - 1) * Common.Board.BLOCKLIST + 1;
				int end = start + Common.Board.BLOCKLIST - 1;

				HashMap<String, Integer> map = new HashMap<String, Integer>();
				map.put("start", start);
				map.put("end", end);

				//전체게시글 목록 가져오기
				List<HotelVO> list = stay_dao.selectList(map);

				//전체게시물 갯수 구하기
				int rowTotal = stay_dao.getRowTotal();

				//페이지 메뉴 만들기
				String pageMenu = Paging.getPaging(
						"page.do", //현재 페이지의 url매핑
						nowPage, //현재 페이지 번호
						rowTotal, //전체 게시물 수
						Common.Board.BLOCKLIST, //한 페이지에 보여줄 게시물 수
						Common.Board.BLOCKPAGE); //하단 페이지 메뉴 수

				model.addAttribute("list", list);//바인딩
				model.addAttribute("pageMenu", pageMenu);

				//세션에 저장되어 있는 "show"라는 데이터를 제거
				request.getSession().removeAttribute("show");

				return "/WEB-INF/views/airbnb/testlist.jsp";
			}//list() */

	}

