package com.spring.JspringProject.controller;

import java.nio.file.FileSystem;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.spring.JspringProject.service.StudyService;
import com.spring.JspringProject.vo.MailVo;

@Controller
//@RestController
@RequestMapping("/study")
public class StudyController {

	@Autowired
	private StudyService studyService;
	
	@Autowired
	private JavaMailSender mailSender;

	@RequestMapping("/ajax/ajaxForm")
	public String ajaxFormGet() {
		return "study/ajax/ajaxForm";
	}

	// 동기식
//	@RequestMapping("/ajax/ajaxTest1")
//	public String ajaxTest1Get(Model model, int idx) {
//		model.addAttribute("idx", idx);
//		return "study/ajax/ajaxForm";
//	}

	@ResponseBody
	@RequestMapping(value = "/ajax/ajaxTest1", method = RequestMethod.POST, produces = "application/text; charset=utf-8")
	public String ajaxTest1Post(int idx) {
		String str = "전송값 : " + idx;
		return str;
	}

	@RequestMapping(value = "/ajax/ajaxTest2_1", method = RequestMethod.GET)
	public String ajaxTest2_1Get() {
		return "study/ajax/ajaxTest2_1";
	}

//	@ResponseBody
//	@RequestMapping(value="/ajax/ajaxTest2_1", method = RequestMethod.POST)
//	public String[] ajaxTest2_1Post(String dodo) {
//		System.out.println("dodo : " + dodo);
//		String[] strArray = new String[100];
//		strArray = studyService.getCityStringArray(dodo);
//		return strArray;
//	}

	@ResponseBody
	@RequestMapping(value = "/ajax/ajaxTest2_1", method = RequestMethod.POST)
	public String[] ajaxTest2_1Post(String dodo) {
		return studyService.getCityStringArray(dodo);
	}

	@RequestMapping(value = "/ajax/ajaxTest2_2", method = RequestMethod.GET)
	public String ajaxTest2_2Get() {
		return "study/ajax/ajaxTest2_2";
	}

	@ResponseBody
	@RequestMapping(value = "/ajax/ajaxTest2_2", method = RequestMethod.POST)
	public List<String> ajaxTest2_2Post(String dodo) {
		return studyService.getCityVosArray(dodo);
	}

	// 파일 업로드 페이지 요청
	@RequestMapping(value = "/fileUpload/fileUpload", method = RequestMethod.GET)
	public String fileUploadGet(HttpServletRequest reqeust) {
//		String readPath = reqeust.getSession().getServletContext().getRealPath("/resources/data/fileUpload");

		return "study/fileUpload/fileUpload";
	}

	// 파일 업로드 처리
	@RequestMapping(value = "/fileUpload/fileUpload", method = RequestMethod.POST)
	public String fileUploadPost(MultipartFile fName, String mid) {
		int res = studyService.fileUpload(fName, mid);

		if (res != 0) return "redirect:/message/fileUploadOk";
		else return "redirect:/message/fileUploadNo";
	}

	// 메일 페이지 요청
	@RequestMapping(value = "/mail/mailForm", method = RequestMethod.GET)
	public String mailFormGet() {
		return "study/mail/mailForm";
	}
	
	// 메일 전송 처리
	@RequestMapping(value = "/mail/mailForm", method = RequestMethod.POST)
	public String mailFormPost(HttpServletRequest request, MailVo vo) throws MessagingException {
		String toMail= vo.getToMail();
		String title = vo.getTitle();
		String content = vo.getContent();
		
		// MimeMessage(), MimeMessageHelper()
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
		
		// 메일 보관함에 메시지 내용 저장 & 처리
		messageHelper.setTo(toMail);
		messageHelper.setSubject(title);
		messageHelper.setText(content);
		
		// 메세지에 추가로 필요한 사항을 messageHelper에 추가로 넣어준다.
		content = content.replace("\n", "<br>");
		content += "<br><hr><h3>From JspringpProject</h3>";
		content += "<p><img src=\"cid:test01.png\" width='550px'></p>";
		content += "<p>방문하기 : <a href='http://49.142.157.251:9090/cjgreen'>Green Project</a></p>";
		content += "<hr>";
		messageHelper.setText(content, true);
		
		// 본문에 기재된 그림파일의 경로
//		FileSystemResource file = new FileSystemResource("C:\\Users\\gy990\\OneDrive\\GYP\\Spring\\springProject\\springframework\\works\\JspringProject\\src\\main\\webapp\\resources\\images\\test01.png");
		FileSystemResource file = new FileSystemResource(request.getSession().getServletContext().getRealPath("/resources/images/test01.png"));
		messageHelper.addInline("test01.png", file);
		
		// 첨부파일 보내기
		file = new FileSystemResource(request.getSession().getServletContext().getRealPath("/resources/images/chicago.jpg"));
		messageHelper.addAttachment("chicago.jpg", file);
		file = new FileSystemResource(request.getSession().getServletContext().getRealPath("/resources/images/chicago.zip"));
		messageHelper.addAttachment("chicago.zip", file);
		
		// 메일 전송하기
		mailSender.send(message);
		
		return "redirect:/message/mailSendOk";
	}
	
}
