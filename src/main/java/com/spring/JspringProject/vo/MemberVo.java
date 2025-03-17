package com.spring.JspringProject.vo;

import java.time.LocalDateTime;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberVo {
	private int idx; // 회원 고유번호
	private String mid; // 회원 아이디 (불복불허)
	private String pwd; // 회원 비밀번호 (SHA256)
	private String nickName; // 회원 별명 (중복불허/수정가능)
	private String name; // 회원 성명
	private String gender; // 회원 성별 (기본값: 남자)
	private LocalDateTime birthday; // 회원 생일
	private String tel; // 전화번호 (010-1234-5678)
	private String address; // 주소 (다음 우편번호 API 사용)
	private String email; // 이메일 (회원가입 인증 및 복구용)
	private String job; // 직업 (회원 통계용)
	private String hobby; // 취미 (구분자 '/')
	private String photo; // 회원 사진 (기본값)
	private String content; // 회원 소개
	private String userInfor; // 회원 정보 공개 여부 (공개/비공개)
	private String userDel; // 회원 탈퇴 여부 (NO: 활동중, OK: 탈퇴신청중)
	private int point; // 회원 포인트 (가입시 100포인트, 방문시 증가)
	private int level; // 회원 등급 (0: 관리자, 1: 우수회원, 2: 정회원, 3: 준회원, 99: 비회원, 999: 탈퇴회원)
	private int visitCnt; // 총 방문 횟수
	private int todayCnt; // 오늘 방문 횟수
	private LocalDateTime startDate;// 최초 가입일
	private LocalDateTime lastDate; // 마지막 접속일
	
	
}
