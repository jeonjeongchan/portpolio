package com.jeon.Portfolio.board.web;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.jeon.Portfolio.board.service.BoardService;
import com.jeon.Portfolio.board.service.BoardVO;

@Controller
public class BoardController {

	@Resource
	private BoardService boardService;

	// 게시판
	@GetMapping("/board")
	private String board(ModelMap model) throws Exception {
		
		BoardVO boardVO = new BoardVO();
		
		List<BoardVO> boardList = boardService.selectBoardServiceList(boardVO);
		
		model.addAttribute("boardList", boardList);

		System.out.println(boardList);
		
		return "board/board";
		
	}
	
	// 게시글 쓰기
	@GetMapping("/board2")
	private String board2() throws Exception {
		
		
		return "board/board2";
		
	}
	
	// 게시글 쓰기
	@GetMapping("/board/post")
	private String boardInsert() throws Exception {
		
		
		return "board/boardInsert";
		
	}
	
	// 게시글 올리기
    @PostMapping("/board")
    private String boardInsertPost(HttpServletRequest request) throws Exception{
        
        BoardVO boardVO = new BoardVO();
        
		
		boardVO.setBoard_title(request.getParameter("board_title"));
        boardVO.setBoard_content(request.getParameter("board_content"));
        boardVO.setUser_id(request.getParameter("user_id"));
        
        System.out.println(boardVO);

        boardService.insertBoardServiceList(boardVO);
        
        return "redirect:/board/";
    }
	
	// 게시글 상세 조회
	@GetMapping("/board/{board_no}")
	private String boardDetail(@PathVariable int board_no, ModelMap model) throws Exception {
		
		boardService.updateViewCnt(board_no);
		
		model.addAttribute("boardDetail", boardService.boardDetail(board_no));
		
		return "board/boardDetail";
		
	}
	
	// 게시글 수정창
	@GetMapping("/board/put/{board_no}")
	private String boardUpdate(@PathVariable int board_no, ModelMap model) throws Exception {
		
		model.addAttribute("boardDetail", boardService.boardDetail(board_no));
		
		return "board/boardUpdate";
		
	}
	
	// 게시글 수정하기
	@PostMapping("/board/put/{board_no}")
	private String boardUpdatePost(HttpServletRequest req) throws Exception {
		
		
		int board_no = Integer.parseInt(req.getParameter("board_no"));
        String board_title = req.getParameter("board_title");
        String board_content = req.getParameter("board_content");
        
        HashMap<String, Object> boardMap = new HashMap<>();
        
        boardMap.put("board_no", board_no);
        boardMap.put("board_title", board_title);
        boardMap.put("board_content", board_content);

        boardService.boardUpdate(boardMap);
		
		return "redirect:/board/" + req.getParameter("board_no");
		
	}
	
    // 게시판 삭제
    @GetMapping("/board/Delete/{board_no}")
    private String boardDelete(@PathVariable int board_no) throws Exception{
        
    	boardService.boardDelete(board_no);
        
        return "redirect:/board";
    }
	
	
}
