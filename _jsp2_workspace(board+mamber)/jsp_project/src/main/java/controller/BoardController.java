package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.BoardVO;
import service.BoardService;
import service.BoardServiceImpl;


@WebServlet("/brd/*")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger log = LoggerFactory.getLogger(BoardController.class);  
    private RequestDispatcher rdp;
    private String destPage;
    private int isUp;
    private BoardService bsv;  //인터페이스로 추가 service폴더에 추가
    
    
    public BoardController() {
        bsv = new BoardServiceImpl(); // class 추가 service폴더에 추가
    }

	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		res.setContentType("text/html; charset=utf-8");
		
		String uri = req.getRequestURI(); // 서비스를 요청하는 주소 /brd/insert
		String path = uri.substring(uri.lastIndexOf("/")+1); // /다음부터 끝까지 추출
		log.info("path >> " + path);
		
		//각 요청하는 서비스를 처리
		switch(path) {
		case "register" : //글쓰기 페이지를 호출
			destPage="/board/register.jsp";
			break;
			
		case "insert" : //글 등록
			/* 다른 방법 (같은 의미)
			isUp = bsv.register(new BoardVO(
						req.getParameter("title"),
						req.getParameter("writer"),
						req.getParameter("content")));
			 */
			String title = req.getParameter("title");
			String writer = req.getParameter("writer");
			String content = req.getParameter("content");
			
			isUp = bsv.register(new BoardVO(title, writer, content));
			
			log.info(">>> insert > " + (isUp >0 ? "ok" : "fail"));	
			destPage="list";
			break;
			
		case "list": //전체 리스트
			//같은 의미 : req.setAttribute("list", bsv.getList());
			List<BoardVO> list = bsv.getList();
			req.setAttribute("list", list);
			log.info(">>> list > ok");
			destPage="/board/list.jsp";
			break;
			
		case "detail": //세부 글 보기
			try {
				/* req.setAttribute("bvo", bsv.getDetail(
					Integer.parseInt(req.getParameter("bno")))); */
				//bno를 가져와서 형변환 후 변수에 저장
				int bno = Integer.parseInt(req.getParameter("bno"));
				//db에 해당 bno의 값을 검색해서 bno의 객체를 반환
				BoardVO bvo = bsv.getDetail(bno);
				//반환된 bvo를 detail.jsp 페이지로 보냄.
				req.setAttribute("bvo", bvo);
				log.info(">> detail > ok");
				destPage="/board/detail.jsp";
			} catch (Exception e) {
				// TODO: handle exception
			}
			break;
			
		case "modify": //modify.jsp로 이동
			req.setAttribute("bvo", bsv.getDetail(
					Integer.parseInt(req.getParameter("bno"))
					));
			log.info(">> modify > ok");
			destPage="/board/modify.jsp";
			break;
			
		case "update": //update가 일어나는 부분 -> detail로 이동
			
			isUp = bsv.modify(new BoardVO(
					Integer.parseInt(req.getParameter("bno")),
					req.getParameter("title"),
					req.getParameter("content")));
			log.info(">> update > "+(isUp > 0? "ok":"fail"));
			destPage = "detail?bno="+ Integer.parseInt(req.getParameter("bno"));
			break;
			
		case "remove": //delete가 일어나는 부분
			isUp = bsv.remove(Integer.parseInt(req.getParameter("bno")));
			log.info(">> delete > "+(isUp >0? "ok" : "fail"));
			destPage = "list";
			break;
		}
		// destPage : 목적지결정 
		rdp = req.getRequestDispatcher(destPage);
		rdp.forward(req, res);
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		service(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		service(request, response);
	}

}
