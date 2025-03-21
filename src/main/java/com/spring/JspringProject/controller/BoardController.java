package com.spring.JspringProject.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.JspringProject.service.BoardService;
import com.spring.JspringProject.vo.BoardVo;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	BoardService boardService;

//	@Autowired
//	AdminService adminService;
//	
//	@Autowired
//	MemberService memberService;

	// 게시글 페이지
	@GetMapping("/boardList")
	public String boardListGet(Model model, @RequestParam(name = "pag", defaultValue = "1", required = false) int pag,
			@RequestParam(name = "pageSize", defaultValue = "10", required = false) int pageSize) {

		int totRecCnt = boardService.getBoardTotRecCnt();
		int totPage = (totRecCnt % pageSize) == 0 ? (totRecCnt / pageSize) : (totRecCnt / pageSize) + 1;
		int startIndexNo = (pag - 1) * pageSize;
		int curScrStartNo = totRecCnt - startIndexNo;

		int blockSize = 3;
		int curBlock = (pag - 1) / blockSize;
		int lastBlock = (totPage - 1) / blockSize;
		List<BoardVo> vos = boardService.getBoardList(startIndexNo, pageSize);

		model.addAttribute("vos", vos);
		model.addAttribute("pag", pag);
		model.addAttribute("pageSize", pageSize);
		model.addAttribute("totPage", totPage);
		model.addAttribute("curScrStartNo", curScrStartNo);
		model.addAttribute("blockSize", blockSize);
		model.addAttribute("curBlock", curBlock);
		model.addAttribute("lastBlock", lastBlock);

		return "board/boardList";
	}

	// 글쓰기 페이지
	@GetMapping("/boardInput")
	public String boardInputtGet() {
		return "board/boardInput";
	}

	// 글쓰기 처리
	@PostMapping("/boardInput")
	public String boardInputPost(BoardVo vo) {
		// 이미지 저장(ck editor 저장(임시) 및 board에 복사)
		if (vo.getContent().indexOf("src=\"/") != -1)
			boardService.imgCheck(vo.getContent());
		// 게시글 내용의 이미지 주소 수정(board폴더)
		vo.setContent(vo.getContent().replace("/data/ckeditor/", "/data/board/"));

		int res = boardService.setBoardInputOk(vo);

		if (res != 0)
			return "redirect:/message/boardInputOk";
		else
			return "redirect:/message/boardInputNo";
	}

	// 글 보기
	@GetMapping("/boardContent")
	public String boardContentGet(HttpSession session, Model model, @RequestParam int idx, @RequestParam int pag,
			@RequestParam(name = "pageSize", defaultValue = "10", required = false) int pageSize) {
		// 세션에 해당 글 조회 여부 저장
		String viewKey = "viewed_post_" + idx;
		// 글 조회수 증가 처리
		if (session.getAttribute(viewKey) == null) {
			boardService.setBoardReadNumPlus(idx); // 조회수 1 증가
			session.setAttribute(viewKey, true); // 중복 방지 저장
		}

		BoardVo vo = boardService.getBoardContent(idx);
		model.addAttribute("vo", vo);
		model.addAttribute("pag", pag);
		model.addAttribute("pageSize", pageSize);

		return "board/boardContent";
	}

	// 글 삭제
	@RequestMapping(value = "/boardDelete", method = RequestMethod.GET)
	public String boardDeleteGet(int idx) {
		BoardVo vo = boardService.getBoardContent(idx);
		// 게시글에 파일이 포함되어있을 시, 실제 파일 삭제
		if (vo.getContent().indexOf("src=\"/") != -1)
			// 이미지 저장(ck editor 저장(임시) 및 board에 복사)
			boardService.imgDelete(vo.getContent());

		// 데이터베이스 레코드 삭제
		int res = boardService.setBoardDelete(idx);

		if (res != 0)
			return "redirect:/message/boardDeleteOk";
		else
			return "redirect:/message/boardDeleteNo?idx=" + idx;
	}

	// 글 수정 페이지 요청
	@GetMapping("/boardUpdate")
	public String boardUpdateGet(Model model, int idx) {
		// 수정 페이지 요청 시 파일 존재 시, 파일을 임시폴더(ckeditor)에 복사
		BoardVo vo = boardService.getBoardContent(idx);
		if (vo.getContent().indexOf("src=\"/") != -1)
			boardService.imgBackup(vo.getContent());
		model.addAttribute("vo", vo);

		return "board/boardUpdate";
	}

	// 글 수정 페이지 요청
	@PostMapping("/boardUpdate")
	public String boardUpdatePost(Model model, BoardVo vo) {
		// 수정된 자료가 원본자료와 완전히 동일하다면 수정할 필요가 없다.
		BoardVo dbVo = boardService.getBoardContent(vo.getIdx());

		// content의 내용이 조금이라도 변경이 되었다면 내용을 수정처리한것이기에, 그림파일 처리유무를 결정한다.
		if (!dbVo.getContent().equals(vo.getContent())) {
			// 1.기존 board폴더의 그림이 존재했다면,원본그림을 모두 삭제처리한다.
			if (dbVo.getContent().indexOf("src=\"/") != -1)
				boardService.imgDelete(dbVo.getContent());

			// 2.삭제후 'board'폴더를 'ckeditor'폴더로 경로 변경
			vo.setContent(vo.getContent().replace("/data/board/", "/data/ckeditor/"));

			// 1,2번 작업을 마치면 처음 글을 올릴때와 똑 같은 상황으로 처리하면 된다.
			if (vo.getContent().indexOf("src=\"/") != -1)
				boardService.imgCheck(vo.getContent());

			// 이미지 복사작업을 모두 마치면(ckeditor폴더에서 board폴더로) 'ckeditor -> board' 변경한다.
			vo.setContent(vo.getContent().replace("/data/ckeditor/", "/data/board/"));
		}
		int res = boardService.setBoardUpdate(vo);

		if (res != 0)
			return "redirect:/message/boardUpdateOk";
		else
			return "redirect:/message/boardUpdateNo?idx=" + vo.getIdx();
	}

}
