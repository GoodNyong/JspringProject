show tables;

create table board (
  idx		int 			not null auto_increment,	/* 게시글의 고유번호 */
  mid		varchar(20) 	not null,					/* 게시글 올린이의 아이디 */
  nickName 	varchar(20) 	not null,					/* 게시글 올린이의 닉네임 */
  title 	varchar(100) 	not null,					/* 글 제목 */
  content 	text 			not null,					/* 글 내용 */
  hostIp  	varchar(40) 	not null,					/* 글 올린이 IP */
  openSw  	char(2) 		default 'OK',				/* 게시글 공개여부(OK:공개, NO:비공개) */
  readNum 	int 			default 0,					/* 글 조회수 */
  wDate		datetime		default now(),				/* 글쓴 날짜 */
  good		int				default 0,					/* '좋아요' 클릭횟수 누적 */
  complaint	char(2)			default 'NO',				/* 신고글 유무(신고당한글:OK, 정상글:NO) */
  primary key (idx),
  foreign key (mid) references member(mid)
);

desc board;

insert into board values (default, 'admin', '관리맨', '게시판 서비스를 시작합니다.', '좋은 글 많이 올려주세요', '192.168.50.60', default, default, default, default, default)
insert into board values (default, 'qwer', 'qwer', 'qwer작성글', '안녕하세요~~~ qwer입니', '192.168.50.60', default, default, default, default, default)
insert into board values (default, 'qwer', 'qwer', '어제 올린글', '안녕하세요~~~ 어제 올렸습니ㅏㄷ', '192.168.50.60', default, default, '2025-3-19 15:30:0', default, default)

select * from board;

INSERT INTO board (idx, mid, nickName, title, content, hostIp, openSw, readNum, wDate, good, complaint) VALUES
(default, 'atom', 'atom', '더미 게시글 제목 1', 'atom의 1번째 테스트 게시글입니다.', '192.168.1.2', default, default, '2025-01-31 00:00:00', default, default),
(default, 'camping', '불지기', '더미 게시글 제목 2', '불지기의 2번째 테스트 게시글입니다.', '192.168.1.3', default, default, '2025-02-01 00:00:00', default, default),
(default, 'storm', 'storm', '더미 게시글 제목 3', 'storm의 3번째 테스트 게시글입니다.', '192.168.1.4', default, default, '2025-02-02 00:00:00', default, default),
(default, 'camping', '불지기', '더미 게시글 제목 4', '불지기의 4번째 테스트 게시글입니다.', '192.168.1.1', default, default, '2025-02-03 00:00:00', default, default),
(default, 'zxcv', 'zxcv', '더미 게시글 제목 5', 'zxcv의 5번째 테스트 게시글입니다.', '192.168.1.3', default, default, '2025-02-04 00:00:00', default, default),
(default, 'atom', 'atom', '더미 게시글 제목 6', 'atom의 6번째 테스트 게시글입니다.', '192.168.1.4', default, default, '2025-02-05 00:00:00', default, default),
(default, 'storm', 'storm', '더미 게시글 제목 7', 'storm의 7번째 테스트 게시글입니다.', '192.168.1.5', default, default, '2025-02-06 00:00:00', default, default),
(default, 'admin', '관리자', '더미 게시글 제목 8', '관리자의 8번째 테스트 게시글입니다.', '192.168.1.6', default, default, '2025-02-07 00:00:00', default, default),
(default, 'zxcv', 'zxcv', '더미 게시글 제목 9', 'zxcv의 9번째 테스트 게시글입니다.', '192.168.1.1', default, default, '2025-02-08 00:00:00', default, default),
(default, 'storm', 'storm', '더미 게시글 제목 10', 'storm의 10번째 테스트 게시글입니다.', '192.168.1.2', default, default, '2025-02-09 00:00:00', default, default),
(default, 'atom', 'atom', '더미 게시글 제목 11', 'atom의 11번째 테스트 게시글입니다.', '192.168.1.3', default, default, '2025-02-10 00:00:00', default, default),
(default, 'qwer', 'qwer', '더미 게시글 제목 12', 'qwer의 12번째 테스트 게시글입니다.', '192.168.1.4', default, default, '2025-02-11 00:00:00', default, default),
(default, 'admin', '관리자', '더미 게시글 제목 13', '관리자의 13번째 테스트 게시글입니다.', '192.168.1.5', default, default, '2025-02-12 00:00:00', default, default),
(default, 'camping', '불지기', '더미 게시글 제목 14', '불지기의 14번째 테스트 게시글입니다.', '192.168.1.6', default, default, '2025-02-13 00:00:00', default, default),
(default, 'zxcv', 'zxcv', '더미 게시글 제목 15', 'zxcv의 15번째 테스트 게시글입니다.', '192.168.1.1', default, default, '2025-02-14 00:00:00', default, default),
(default, 'storm', 'storm', '더미 게시글 제목 16', 'storm의 16번째 테스트 게시글입니다.', '192.168.1.2', default, default, '2025-02-15 00:00:00', default, default),
(default, 'atom', 'atom', '더미 게시글 제목 17', 'atom의 17번째 테스트 게시글입니다.', '192.168.1.3', default, default, '2025-02-16 00:00:00', default, default),
(default, 'qwer', 'qwer', '더미 게시글 제목 18', 'qwer의 18번째 테스트 게시글입니다.', '192.168.1.4', default, default, '2025-02-17 00:00:00', default, default),
(default, 'admin', '관리자', '더미 게시글 제목 19', '관리자의 19번째 테스트 게시글입니다.', '192.168.1.5', default, default, '2025-02-18 00:00:00', default, default),
(default, 'camping', '불지기', '더미 게시글 제목 20', '불지기의 20번째 테스트 게시글입니다.', '192.168.1.6', default, default, '2025-02-19 00:00:00', default, default),
(default, 'zxcv', 'zxcv', '더미 게시글 제목 21', 'zxcv의 21번째 테스트 게시글입니다.', '192.168.1.1', default, default, '2025-02-20 00:00:00', default, default),
(default, 'storm', 'storm', '더미 게시글 제목 22', 'storm의 22번째 테스트 게시글입니다.', '192.168.1.2', default, default, '2025-02-21 00:00:00', default, default),
(default, 'atom', 'atom', '더미 게시글 제목 23', 'atom의 23번째 테스트 게시글입니다.', '192.168.1.3', default, default, '2025-02-22 00:00:00', default, default),
(default, 'qwer', 'qwer', '더미 게시글 제목 24', 'qwer의 24번째 테스트 게시글입니다.', '192.168.1.4', default, default, '2025-02-23 00:00:00', default, default),
(default, 'admin', '관리자', '더미 게시글 제목 25', '관리자의 25번째 테스트 게시글입니다.', '192.168.1.5', default, default, '2025-02-24 00:00:00', default, default),
(default, 'camping', '불지기', '더미 게시글 제목 26', '불지기의 26번째 테스트 게시글입니다.', '192.168.1.6', default, default, '2025-02-25 00:00:00', default, default),
(default, 'zxcv', 'zxcv', '더미 게시글 제목 27', 'zxcv의 27번째 테스트 게시글입니다.', '192.168.1.1', default, default, '2025-02-26 00:00:00', default, default),
(default, 'storm', 'storm', '더미 게시글 제목 28', 'storm의 28번째 테스트 게시글입니다.', '192.168.1.2', default, default, '2025-02-27 00:00:00', default, default),
(default, 'atom', 'atom', '더미 게시글 제목 29', 'atom의 29번째 테스트 게시글입니다.', '192.168.1.3', default, default, '2025-02-28 00:00:00', default, default),
(default, 'qwer', 'qwer', '더미 게시글 제목 30', 'qwer의 30번째 테스트 게시글입니다.', '192.168.1.4', default, default, '2025-03-01 00:00:00', default, default),
(default, 'admin', '관리자', '더미 게시글 제목 31', '관리자의 31번째 테스트 게시글입니다.', '192.168.1.5', default, default, '2025-03-02 00:00:00', default, default),
(default, 'camping', '불지기', '더미 게시글 제목 32', '불지기의 32번째 테스트 게시글입니다.', '192.168.1.6', default, default, '2025-03-03 00:00:00', default, default),
(default, 'zxcv', 'zxcv', '더미 게시글 제목 33', 'zxcv의 33번째 테스트 게시글입니다.', '192.168.1.1', default, default, '2025-03-04 00:00:00', default, default),
(default, 'storm', 'storm', '더미 게시글 제목 34', 'storm의 34번째 테스트 게시글입니다.', '192.168.1.2', default, default, '2025-03-05 00:00:00', default, default),
(default, 'atom', 'atom', '더미 게시글 제목 35', 'atom의 35번째 테스트 게시글입니다.', '192.168.1.3', default, default, '2025-03-06 00:00:00', default, default),
(default, 'qwer', 'qwer', '더미 게시글 제목 36', 'qwer의 36번째 테스트 게시글입니다.', '192.168.1.4', default, default, '2025-03-07 00:00:00', default, default),
(default, 'admin', '관리자', '더미 게시글 제목 37', '관리자의 37번째 테스트 게시글입니다.', '192.168.1.5', default, default, '2025-03-08 00:00:00', default, default),
(default, 'camping', '불지기', '더미 게시글 제목 38', '불지기의 38번째 테스트 게시글입니다.', '192.168.1.6', default, default, '2025-03-09 00:00:00', default, default),
(default, 'zxcv', 'zxcv', '더미 게시글 제목 39', 'zxcv의 39번째 테스트 게시글입니다.', '192.168.1.1', default, default, '2025-03-10 00:00:00', default, default),
(default, 'storm', 'storm', '더미 게시글 제목 40', 'storm의 40번째 테스트 게시글입니다.', '192.168.1.2', default, default, '2025-03-11 00:00:00', default, default),
(default, 'atom', 'atom', '더미 게시글 제목 41', 'atom의 41번째 테스트 게시글입니다.', '192.168.1.3', default, default, '2025-03-12 00:00:00', default, default),
(default, 'qwer', 'qwer', '더미 게시글 제목 42', 'qwer의 42번째 테스트 게시글입니다.', '192.168.1.4', default, default, '2025-03-13 00:00:00', default, default),
(default, 'admin', '관리자', '더미 게시글 제목 43', '관리자의 43번째 테스트 게시글입니다.', '192.168.1.5', default, default, '2025-03-14 00:00:00', default, default),
(default, 'camping', '불지기', '더미 게시글 제목 44', '불지기의 44번째 테스트 게시글입니다.', '192.168.1.6', default, default, '2025-03-15 00:00:00', default, default),
(default, 'zxcv', 'zxcv', '더미 게시글 제목 45', 'zxcv의 45번째 테스트 게시글입니다.', '192.168.1.1', default, default, '2025-03-16 00:00:00', default, default),
(default, 'storm', 'storm', '더미 게시글 제목 46', 'storm의 46번째 테스트 게시글입니다.', '192.168.1.2', default, default, '2025-03-17 00:00:00', default, default),
(default, 'atom', 'atom', '더미 게시글 제목 47', 'atom의 47번째 테스트 게시글입니다.', '192.168.1.3', default, default, '2025-03-18 00:00:00', default, default),
(default, 'qwer', 'qwer', '더미 게시글 제목 48', 'qwer의 48번째 테스트 게시글입니다.', '192.168.1.4', default, default, '2025-03-19 00:00:00', default, default),
(default, 'admin', '관리자', '더미 게시글 제목 49', '관리자의 49번째 테스트 게시글입니다.', '192.168.1.5', default, default, '2025-03-20 00:00:00', default, default),
(default, 'camping', '불지기', '더미 게시글 제목 50', '불지기의 50번째 테스트 게시글입니다.', '192.168.1.6', default, default, '2025-03-20 00:00:00', default, default);


INSERT INTO board (idx, mid, nickName, title, content, hostIp, openSw, readNum, wDate, good, complaint) VALUES
(default, 'storm', 'storm', '오늘은 정말 #881', '어제 밤에 코딩하다가 잠들었어요. (81번째 생각)', '192.168.1.4', default, default, '2025-01-31 00:00:00', default, default),
(default, 'atom', 'atom', '작은 팁 공유 #551', '이번 주는 유독 바빴던 것 같네요. (53번째 생각)', '192.168.1.2', default, default, '2025-02-01 00:00:00', default, default),
(default, 'camping', '불지기', '작은 팁 공유 #709', '디자인은 정말 끝이 없는 고민이에요. (28번째 생각)', '192.168.1.4', default, default, '2025-02-02 00:00:00', default, default),
(default, 'admin', '관리자', '갑자기 떠오른 #184', '잠깐, 이 코드 누가 짠 거죠? (10번째 생각)', '192.168.1.1', default, default, '2025-02-03 00:00:00', default, default),
(default, 'storm', 'storm', '디버깅 하다가 #862', '버그 잡는 데만 3시간이 걸렸네요. (60번째 생각)', '192.168.1.2', default, default, '2025-02-04 00:00:00', default, default),
(default, 'camping', '불지기', '디버깅 하다가 #231', '버그 잡는 데만 3시간이 걸렸네요. (25번째 생각)', '192.168.1.2', default, default, '2025-02-05 00:00:00', default, default),
(default, 'camping', '불지기', '이런 생각 어때요? #697', '어제 밤에 코딩하다가 잠들었어요. (72번째 생각)', '192.168.1.6', default, default, '2025-02-06 00:00:00', default, default),
(default, 'camping', '불지기', '작은 팁 공유 #966', '정말 좋은 책을 발견했어요. (36번째 생각)', '192.168.1.5', default, default, '2025-02-07 00:00:00', default, default),
(default, 'admin', '관리자', '작은 팁 공유 #906', '프로젝트가 산으로 가는 중입니다... (23번째 생각)', '192.168.1.4', default, default, '2025-02-08 00:00:00', default, default),
(default, 'admin', '관리자', '작은 팁 공유 #648', '어제 밤에 코딩하다가 잠들었어요. (62번째 생각)', '192.168.1.2', default, default, '2025-02-09 00:00:00', default, default),
(default, 'camping', '불지기', '책 한 권 추천 #320', '이번 주는 유독 바빴던 것 같네요. (25번째 생각)', '192.168.1.5', default, default, '2025-02-10 00:00:00', default, default),
(default, 'camping', '불지기', '이런 생각 어때요? #113', '프로젝트가 산으로 가는 중입니다... (81번째 생각)', '192.168.1.4', default, default, '2025-02-11 00:00:00', default, default),
(default, 'qwer', 'qwer', '이런 생각 어때요? #759', '이번 주는 유독 바빴던 것 같네요. (4번째 생각)', '192.168.1.6', default, default, '2025-02-12 00:00:00', default, default),
(default, 'admin', '관리자', '오늘은 정말 #169', '정말 좋은 책을 발견했어요. (22번째 생각)', '192.168.1.4', default, default, '2025-02-13 00:00:00', default, default),
(default, 'admin', '관리자', '이런 생각 어때요? #356', '버그 잡는 데만 3시간이 걸렸네요. (41번째 생각)', '192.168.1.6', default, default, '2025-02-14 00:00:00', default, default),
(default, 'zxcv', 'zxcv', '이런 생각 어때요? #197', '디자인은 정말 끝이 없는 고민이에요. (17번째 생각)', '192.168.1.6', default, default, '2025-02-15 00:00:00', default, default),
(default, 'admin', '관리자', '오늘은 정말 #804', '디자인은 정말 끝이 없는 고민이에요. (14번째 생각)', '192.168.1.1', default, default, '2025-02-16 00:00:00', default, default),
(default, 'camping', '불지기', '개발하면서 느낀 #322', '정말 좋은 책을 발견했어요. (56번째 생각)', '192.168.1.1', default, default, '2025-02-17 00:00:00', default, default),
(default, 'admin', '관리자', '책 한 권 추천 #428', '이번 주는 유독 바빴던 것 같네요. (46번째 생각)', '192.168.1.5', default, default, '2025-02-18 00:00:00', default, default),
(default, 'admin', '관리자', '여러분 혹시 #858', '이럴 땐 커피가 답입니다. (1번째 생각)', '192.168.1.2', default, default, '2025-02-19 00:00:00', default, default),
(default, 'qwer', 'qwer', '오늘은 정말 #746', '잠깐, 이 코드 누가 짠 거죠? (93번째 생각)', '192.168.1.1', default, default, '2025-02-20 00:00:00', default, default),
(default, 'zxcv', 'zxcv', '잠깐만요! #292', '주말엔 꼭 쉬어야 해요. 다들 동의하시죠? (20번째 생각)', '192.168.1.3', default, default, '2025-02-21 00:00:00', default, default),
(default, 'storm', 'storm', '개발하면서 느낀 #653', '프로젝트가 산으로 가는 중입니다... (48번째 생각)', '192.168.1.5', default, default, '2025-02-22 00:00:00', default, default),
(default, 'storm', 'storm', '생활 꿀팁 #997', '어제 밤에 코딩하다가 잠들었어요. (90번째 생각)', '192.168.1.2', default, default, '2025-02-23 00:00:00', default, default),
(default, 'camping', '불지기', '개발하면서 느낀 #286', '버그 잡는 데만 3시간이 걸렸네요. (29번째 생각)', '192.168.1.4', default, default, '2025-02-24 00:00:00', default, default),
(default, 'camping', '불지기', '갑자기 떠오른 #171', '프로젝트가 산으로 가는 중입니다... (49번째 생각)', '192.168.1.2', default, default, '2025-02-25 00:00:00', default, default),
(default, 'storm', 'storm', '작은 팁 공유 #305', '이번 주는 유독 바빴던 것 같네요. (34번째 생각)', '192.168.1.4', default, default, '2025-02-26 00:00:00', default, default),
(default, 'admin', '관리자', '잠깐만요! #268', '주말엔 꼭 쉬어야 해요. 다들 동의하시죠? (3번째 생각)', '192.168.1.2', default, default, '2025-02-27 00:00:00', default, default),
(default, 'qwer', 'qwer', '잠깐만요! #352', '주말엔 꼭 쉬어야 해요. 다들 동의하시죠? (10번째 생각)', '192.168.1.4', default, default, '2025-02-28 00:00:00', default, default),
(default, 'qwer', 'qwer', '여러분 혹시 #706', '정말 좋은 책을 발견했어요. (13번째 생각)', '192.168.1.2', default, default, '2025-03-01 00:00:00', default, default),
(default, 'camping', '불지기', '오늘은 정말 #837', '정말 좋은 책을 발견했어요. (8번째 생각)', '192.168.1.3', default, default, '2025-03-20 00:00:00', default, default),
(default, 'qwer', 'qwer', '오늘은 정말 #153', '어제 밤에 코딩하다가 잠들었어요. (9번째 생각)', '192.168.1.2', default, default, '2025-03-21 00:00:00', default, default);


INSERT INTO board (idx, mid, nickName, title, content, hostIp, openSw, readNum, wDate, good, complaint) VALUES
(default, 'zxcv', 'zxcv', '유용한 자료 #436', '오늘 배운 내용을 정리해볼게요. (71번째 경험)', '192.168.1.4', default, default, '2025-02-14 00:00:00', default, default),
(default, 'zxcv', 'zxcv', '프로젝트 후기 #487', '코딩할 때 집중하는 방법이 있을까요? (19번째 경험)', '192.168.1.1', default, default, '2025-02-01 00:00:00', default, default),
(default, 'storm', 'storm', '이슈 공유 #319', '책을 한 권 추천드리고 싶어요. (68번째 경험)', '192.168.1.4', default, default, '2025-02-08 00:00:00', default, default),
(default, 'qwer', 'qwer', '효율적인 공부법 #810', '효율적인 학습법을 고민하고 있어요. (82번째 경험)', '192.168.1.6', default, default, '2025-02-13 00:00:00', default, default),
(default, 'zxcv', 'zxcv', '오늘의 발견 #731', '새로운 프로젝트를 시작했어요. (86번째 경험)', '192.168.1.4', default, default, '2025-03-09 00:00:00', default, default),
(default, 'atom', 'atom', '효율적인 공부법 #701', '효율적인 학습법을 고민하고 있어요. (76번째 경험)', '192.168.1.2', default, default, '2025-03-05 00:00:00', default, default),
(default, 'qwer', 'qwer', '생활 속 지혜 #394', '오늘은 쉬면서 충전하는 날입니다. (4번째 경험)', '192.168.1.1', default, default, '2025-02-23 00:00:00', default, default),
(default, 'zxcv', 'zxcv', '생활 속 지혜 #208', '책을 한 권 추천드리고 싶어요. (9번째 경험)', '192.168.1.2', default, default, '2025-02-20 00:00:00', default, default),
(default, 'atom', 'atom', '이슈 공유 #973', '책을 한 권 추천드리고 싶어요. (83번째 경험)', '192.168.1.5', default, default, '2025-02-08 00:00:00', default, default),
(default, 'storm', 'storm', '책 추천 #574', '이 기능을 사용해보셨나요? (66번째 경험)', '192.168.1.4', default, default, '2025-02-28 00:00:00', default, default),
(default, 'admin', '관리자', '오늘의 발견 #414', '어제 밤에 코딩하다가 잠들었어요. (6번째 경험)', '192.168.1.6', default, default, '2025-02-08 00:00:00', default, default),
(default, 'atom', 'atom', '이런 경험 해보셨나요? #602', '이 기능을 사용해보셨나요? (99번째 경험)', '192.168.1.2', default, default, '2025-03-20 00:00:00', default, default),
(default, 'atom', 'atom', '나만의 루틴 #553', '효율적인 학습법을 고민하고 있어요. (78번째 경험)', '192.168.1.3', default, default, '2025-02-05 00:00:00', default, default),
(default, 'camping', '불지기', '개발 팁 공유 #968', '코딩할 때 집중하는 방법이 있을까요? (4번째 경험)', '192.168.1.1', default, default, '2025-02-18 00:00:00', default, default),
(default, 'storm', 'storm', '새로운 시도 #371', '코딩할 때 집중하는 방법이 있을까요? (21번째 경험)', '192.168.1.2', default, default, '2025-02-15 00:00:00', default, default),
(default, 'qwer', 'qwer', '이런 경험 해보셨나요? #222', '코딩할 때 집중하는 방법이 있을까요? (54번째 경험)', '192.168.1.6', default, default, '2025-02-06 00:00:00', default, default),
(default, 'qwer', 'qwer', '이런 경험 해보셨나요? #948', '새로운 프로젝트를 시작했어요. (70번째 경험)', '192.168.1.4', default, default, '2025-03-12 00:00:00', default, default),
(default, 'qwer', 'qwer', '오류 해결 #223', '새로운 프로젝트를 시작했어요. (93번째 경험)', '192.168.1.3', default, default, '2025-02-01 00:00:00', default, default),
(default, 'zxcv', 'zxcv', '개발 팁 공유 #116', '어제 밤에 코딩하다가 잠들었어요. (29번째 경험)', '192.168.1.6', default, default, '2025-02-26 00:00:00', default, default),
(default, 'qwer', 'qwer', '유용한 자료 #811', '책을 한 권 추천드리고 싶어요. (87번째 경험)', '192.168.1.6', default, default, '2025-03-13 00:00:00', default, default),
(default, 'admin', '관리자', '책 추천 #470', '오늘은 쉬면서 충전하는 날입니다. (68번째 경험)', '192.168.1.4', default, default, '2025-03-18 00:00:00', default, default),
(default, 'qwer', 'qwer', '프로젝트 후기 #539', '개발자라면 꼭 알아야 할 개념입니다. (51번째 경험)', '192.168.1.6', default, default, '2025-03-20 00:00:00', default, default),
(default, 'admin', '관리자', '새로운 시도 #163', '책을 한 권 추천드리고 싶어요. (10번째 경험)', '192.168.1.2', default, default, '2025-03-01 00:00:00', default, default),
(default, 'zxcv', 'zxcv', '디버깅 고통 #587', '책을 한 권 추천드리고 싶어요. (8번째 경험)', '192.168.1.6', default, default, '2025-02-11 00:00:00', default, default),
(default, 'qwer', 'qwer', '유용한 자료 #289', '새로운 프로젝트를 시작했어요. (79번째 경험)', '192.168.1.2', default, default, '2025-03-11 00:00:00', default, default),
(default, 'admin', '관리자', '책 추천 #293', '책을 한 권 추천드리고 싶어요. (93번째 경험)', '192.168.1.4', default, default, '2025-03-21 00:00:00', default, default);


UPDATE board SET wDate = '2024-11-30 00:00:00', readNum = 256, good = 73 WHERE idx = 1;
UPDATE board SET wDate = '2024-12-01 00:00:00', readNum = 227, good = 20 WHERE idx = 2;
UPDATE board SET wDate = '2024-12-02 00:00:00', readNum = 394, good = 10 WHERE idx = 3;
UPDATE board SET wDate = '2024-12-03 00:00:00', readNum = 321, good = 62 WHERE idx = 4;
UPDATE board SET wDate = '2024-12-04 00:00:00', readNum = 119, good = 98 WHERE idx = 5;
UPDATE board SET wDate = '2024-12-05 00:00:00', readNum = 193, good = 8 WHERE idx = 6;
UPDATE board SET wDate = '2024-12-06 00:00:00', readNum = 27, good = 77 WHERE idx = 7;
UPDATE board SET wDate = '2024-12-07 00:00:00', readNum = 262, good = 2 WHERE idx = 8;
UPDATE board SET wDate = '2024-12-08 00:00:00', readNum = 157, good = 7 WHERE idx = 9;
UPDATE board SET wDate = '2024-12-09 00:00:00', readNum = 63, good = 86 WHERE idx = 10;
UPDATE board SET wDate = '2024-12-10 00:00:00', readNum = 321, good = 62 WHERE idx = 11;
UPDATE board SET wDate = '2024-12-11 00:00:00', readNum = 138, good = 48 WHERE idx = 12;
UPDATE board SET wDate = '2024-12-12 00:00:00', readNum = 423, good = 36 WHERE idx = 13;
UPDATE board SET wDate = '2024-12-13 00:00:00', readNum = 199, good = 2 WHERE idx = 14;
UPDATE board SET wDate = '2024-12-14 00:00:00', readNum = 268, good = 98 WHERE idx = 15;
UPDATE board SET wDate = '2024-12-15 00:00:00', readNum = 58, good = 99 WHERE idx = 16;
UPDATE board SET wDate = '2024-12-16 00:00:00', readNum = 383, good = 82 WHERE idx = 17;
UPDATE board SET wDate = '2024-12-17 00:00:00', readNum = 112, good = 39 WHERE idx = 18;
UPDATE board SET wDate = '2024-12-18 00:00:00', readNum = 179, good = 28 WHERE idx = 19;
UPDATE board SET wDate = '2024-12-19 00:00:00', readNum = 455, good = 25 WHERE idx = 20;
UPDATE board SET wDate = '2024-12-20 00:00:00', readNum = 48, good = 31 WHERE idx = 21;
UPDATE board SET wDate = '2024-12-21 00:00:00', readNum = 235, good = 7 WHERE idx = 22;
UPDATE board SET wDate = '2024-12-22 00:00:00', readNum = 452, good = 33 WHERE idx = 23;
UPDATE board SET wDate = '2024-12-23 00:00:00', readNum = 216, good = 7 WHERE idx = 24;
UPDATE board SET wDate = '2024-12-24 00:00:00', readNum = 54, good = 8 WHERE idx = 25;

UPDATE board SET wDate = '2024-12-25 00:00:00', readNum = 340, good = 55 WHERE idx = 26;
UPDATE board SET wDate = '2024-12-26 00:00:00', readNum = 279, good = 7 WHERE idx = 27;
UPDATE board SET wDate = '2024-12-27 00:00:00', readNum = 345, good = 38 WHERE idx = 28;
UPDATE board SET wDate = '2024-12-28 00:00:00', readNum = 266, good = 39 WHERE idx = 29;
UPDATE board SET wDate = '2024-12-29 00:00:00', readNum = 196, good = 2 WHERE idx = 30;
UPDATE board SET wDate = '2024-12-30 00:00:00', readNum = 477, good = 23 WHERE idx = 31;
UPDATE board SET wDate = '2024-12-31 00:00:00', readNum = 141, good = 75 WHERE idx = 32;
UPDATE board SET wDate = '2025-01-01 00:00:00', readNum = 246, good = 53 WHERE idx = 33;
UPDATE board SET wDate = '2025-01-02 00:00:00', readNum = 358, good = 23 WHERE idx = 34;
UPDATE board SET wDate = '2025-01-03 00:00:00', readNum = 394, good = 94 WHERE idx = 35;
UPDATE board SET wDate = '2025-01-04 00:00:00', readNum = 66, good = 85 WHERE idx = 36;
UPDATE board SET wDate = '2025-01-05 00:00:00', readNum = 403, good = 58 WHERE idx = 37;
UPDATE board SET wDate = '2025-01-06 00:00:00', readNum = 422, good = 58 WHERE idx = 38;
UPDATE board SET wDate = '2025-01-07 00:00:00', readNum = 18, good = 15 WHERE idx = 39;
UPDATE board SET wDate = '2025-01-08 00:00:00', readNum = 312, good = 27 WHERE idx = 40;
UPDATE board SET wDate = '2025-01-09 00:00:00', readNum = 21, good = 71 WHERE idx = 41;
UPDATE board SET wDate = '2025-01-10 00:00:00', readNum = 103, good = 80 WHERE idx = 42;
UPDATE board SET wDate = '2025-01-11 00:00:00', readNum = 321, good = 84 WHERE idx = 43;
UPDATE board SET wDate = '2025-01-12 00:00:00', readNum = 79, good = 60 WHERE idx = 44;
UPDATE board SET wDate = '2025-01-13 00:00:00', readNum = 385, good = 41 WHERE idx = 45;
UPDATE board SET wDate = '2025-01-14 00:00:00', readNum = 187, good = 74 WHERE idx = 46;
UPDATE board SET wDate = '2025-01-15 00:00:00', readNum = 328, good = 35 WHERE idx = 47;
UPDATE board SET wDate = '2025-01-16 00:00:00', readNum = 359, good = 4 WHERE idx = 48;
UPDATE board SET wDate = '2025-01-17 00:00:00', readNum = 427, good = 69 WHERE idx = 49;
UPDATE board SET wDate = '2025-01-18 00:00:00', readNum = 352, good = 91 WHERE idx = 50;

UPDATE board SET wDate = '2025-01-19 00:00:00', readNum = 188, good = 27 WHERE idx = 51;
UPDATE board SET wDate = '2025-01-20 00:00:00', readNum = 151, good = 47 WHERE idx = 52;
UPDATE board SET wDate = '2025-01-21 00:00:00', readNum = 8, good = 38 WHERE idx = 53;
UPDATE board SET wDate = '2025-01-22 00:00:00', readNum = 343, good = 93 WHERE idx = 54;
UPDATE board SET wDate = '2025-01-23 00:00:00', readNum = 5, good = 2 WHERE idx = 55;
UPDATE board SET wDate = '2025-01-24 00:00:00', readNum = 350, good = 8 WHERE idx = 56;
UPDATE board SET wDate = '2025-01-25 00:00:00', readNum = 320, good = 20 WHERE idx = 57;
UPDATE board SET wDate = '2025-01-26 00:00:00', readNum = 243, good = 54 WHERE idx = 58;
UPDATE board SET wDate = '2025-01-27 00:00:00', readNum = 70, good = 66 WHERE idx = 59;
UPDATE board SET wDate = '2025-01-28 00:00:00', readNum = 448, good = 35 WHERE idx = 60;
UPDATE board SET wDate = '2025-01-29 00:00:00', readNum = 312, good = 84 WHERE idx = 61;
UPDATE board SET wDate = '2025-01-30 00:00:00', readNum = 489, good = 46 WHERE idx = 62;
UPDATE board SET wDate = '2025-01-31 00:00:00', readNum = 5, good = 91 WHERE idx = 63;
UPDATE board SET wDate = '2025-02-01 00:00:00', readNum = 301, good = 19 WHERE idx = 64;
UPDATE board SET wDate = '2025-02-02 00:00:00', readNum = 413, good = 28 WHERE idx = 65;
UPDATE board SET wDate = '2025-02-03 00:00:00', readNum = 230, good = 46 WHERE idx = 66;
UPDATE board SET wDate = '2025-02-04 00:00:00', readNum = 380, good = 9 WHERE idx = 67;
UPDATE board SET wDate = '2025-02-05 00:00:00', readNum = 272, good = 88 WHERE idx = 68;
UPDATE board SET wDate = '2025-02-06 00:00:00', readNum = 377, good = 91 WHERE idx = 69;
UPDATE board SET wDate = '2025-02-07 00:00:00', readNum = 357, good = 47 WHERE idx = 70;
UPDATE board SET wDate = '2025-02-08 00:00:00', readNum = 247, good = 3 WHERE idx = 71;
UPDATE board SET wDate = '2025-02-09 00:00:00', readNum = 313, good = 85 WHERE idx = 72;
UPDATE board SET wDate = '2025-02-10 00:00:00', readNum = 83, good = 30 WHERE idx = 73;
UPDATE board SET wDate = '2025-02-11 00:00:00', readNum = 129, good = 71 WHERE idx = 74;
UPDATE board SET wDate = '2025-02-12 00:00:00', readNum = 49, good = 36 WHERE idx = 75;

UPDATE board SET wDate = '2025-02-13 00:00:00', readNum = 293, good = 67 WHERE idx = 76;
UPDATE board SET wDate = '2025-02-14 00:00:00', readNum = 220, good = 12 WHERE idx = 77;
UPDATE board SET wDate = '2025-02-15 00:00:00', readNum = 241, good = 81 WHERE idx = 78;
UPDATE board SET wDate = '2025-02-16 00:00:00', readNum = 144, good = 44 WHERE idx = 79;
UPDATE board SET wDate = '2025-02-17 00:00:00', readNum = 358, good = 83 WHERE idx = 80;
UPDATE board SET wDate = '2025-02-18 00:00:00', readNum = 111, good = 85 WHERE idx = 81;
UPDATE board SET wDate = '2025-02-19 00:00:00', readNum = 165, good = 61 WHERE idx = 82;
UPDATE board SET wDate = '2025-02-20 00:00:00', readNum = 24, good = 78 WHERE idx = 83;
UPDATE board SET wDate = '2025-02-21 00:00:00', readNum = 134, good = 72 WHERE idx = 84;
UPDATE board SET wDate = '2025-02-22 00:00:00', readNum = 402, good = 40 WHERE idx = 85;
UPDATE board SET wDate = '2025-02-23 00:00:00', readNum = 491, good = 67 WHERE idx = 86;
UPDATE board SET wDate = '2025-02-24 00:00:00', readNum = 391, good = 5 WHERE idx = 87;
UPDATE board SET wDate = '2025-02-25 00:00:00', readNum = 185, good = 89 WHERE idx = 88;
UPDATE board SET wDate = '2025-02-26 00:00:00', readNum = 498, good = 96 WHERE idx = 89;
UPDATE board SET wDate = '2025-02-27 00:00:00', readNum = 417, good = 46 WHERE idx = 90;
UPDATE board SET wDate = '2025-02-28 00:00:00', readNum = 119, good = 60 WHERE idx = 91;
UPDATE board SET wDate = '2025-03-01 00:00:00', readNum = 495, good = 3 WHERE idx = 92;
UPDATE board SET wDate = '2025-03-02 00:00:00', readNum = 270, good = 24 WHERE idx = 93;
UPDATE board SET wDate = '2025-03-03 00:00:00', readNum = 457, good = 33 WHERE idx = 94;
UPDATE board SET wDate = '2025-03-04 00:00:00', readNum = 490, good = 54 WHERE idx = 95;
UPDATE board SET wDate = '2025-03-05 00:00:00', readNum = 313, good = 59 WHERE idx = 96;
UPDATE board SET wDate = '2025-03-06 00:00:00', readNum = 152, good = 47 WHERE idx = 97;
UPDATE board SET wDate = '2025-03-07 00:00:00', readNum = 251, good = 84 WHERE idx = 98;
UPDATE board SET wDate = '2025-03-08 00:00:00', readNum = 326, good = 96 WHERE idx = 99;
UPDATE board SET wDate = '2025-03-09 00:00:00', readNum = 49, good = 56 WHERE idx = 100;

UPDATE board SET wDate = '2025-03-10 00:00:00', readNum = 158, good = 13 WHERE idx = 101;
UPDATE board SET wDate = '2025-03-11 00:00:00', readNum = 498, good = 18 WHERE idx = 102;
UPDATE board SET wDate = '2025-03-12 00:00:00', readNum = 83, good = 94 WHERE idx = 103;
UPDATE board SET wDate = '2025-03-13 00:00:00', readNum = 46, good = 10 WHERE idx = 104;
UPDATE board SET wDate = '2025-03-14 00:00:00', readNum = 144, good = 61 WHERE idx = 105;
UPDATE board SET wDate = '2025-03-15 00:00:00', readNum = 16, good = 37 WHERE idx = 106;
UPDATE board SET wDate = '2025-03-16 00:00:00', readNum = 140, good = 27 WHERE idx = 107;
UPDATE board SET wDate = '2025-03-17 00:00:00', readNum = 229, good = 42 WHERE idx = 108;
UPDATE board SET wDate = '2025-03-18 00:00:00', readNum = 414, good = 59 WHERE idx = 109;
UPDATE board SET wDate = '2025-03-19 00:00:00', readNum = 365, good = 88 WHERE idx = 110;
UPDATE board SET wDate = '2025-03-20 00:00:00', readNum = 211, good = 40 WHERE idx = 111;
UPDATE board SET wDate = '2025-03-21 00:00:00', readNum = 258, good = 98 WHERE idx = 112;
UPDATE board SET wDate = '2025-03-21 00:00:00', readNum = 30, good = 32 WHERE idx = 113;
