show tables;

create table guest (
  idx  int not null auto_increment,	/* 고유번호 */
  name varchar(20) not null,				/* 성명 */
  content text not null, 						/* 방명록 내용 */
  email varchar(60),								/* 메일주소 */
  homePage varchar(60),							/* 홈페이지(블로그) 주소 */
  hostIp varchar(30) not null,			/* 방문자 IP */
  visitDate datetime default now(),	/* 방문한 날짜 */
  primary key(idx)
);

drop table guest;


insert into guest values (default,'관리자','방명록 서비스를 시작합니다.','cjsk1126@naver.com','cjsk1126.tistory.com','192.168.50.20',now());alter
select * from guest;

INSERT INTO guest (idx, name, content, email, homePage, hostIp, visitDate) VALUES
(default, '김민준', '좋은 정보가 많네요! 유익한 사이트입니다.', 'minjun001@gmail.com', 'minjun001.tistory.com', '192.168.1.1', now()),
(default, '이서윤', '웹사이트가 깔끔하고 보기 좋아요.', 'seoyun002@naver.com', 'seoyun002.blogspot.com', '192.168.1.2', now()),
(default, '박도현', '방문해보니 흥미로운 내용이 많네요.', 'dohyun003@daum.net', 'dohyun003.wordpress.com', '192.168.1.3', now()),
(default, '최하늘', '웹 디자인이 심플하고 직관적이네요!', 'haneul004@yahoo.com', 'haneul004.medium.com', '192.168.1.4', now()),
(default, '정예린', '유익한 정보 감사합니다. 도움 많이 됐어요!', 'yerin005@outlook.com', 'yerin005.tistory.com', '192.168.1.5', now()),
(default, '조지훈', '자주 방문할게요. 앞으로도 좋은 정보 기대합니다.', 'jihoon006@gmail.com', 'jihoon006.blogspot.com', '192.168.1.6', now()),
(default, '강수민', '운영자님 정말 고생 많으셨겠어요. 잘 보고 갑니다!', 'sumin007@naver.com', 'sumin007.wordpress.com', '192.168.1.7', now()),
(default, '윤나은', '친절한 설명 덕분에 쉽게 이해할 수 있었어요.', 'naeun008@daum.net', 'naeun008.medium.com', '192.168.1.8', now()),
(default, '임승민', '내용이 알차고 정리가 잘 되어 있어요.', 'seungmin009@yahoo.com', 'seungmin009.tistory.com', '192.168.1.9', now()),
(default, '한도경', '웹사이트가 깔끔하고 빠르게 로딩되네요!', 'dokyung010@outlook.com', 'dokyung010.blogspot.com', '192.168.1.10', now()),
(default, '송하진', '찾던 정보를 여기서 발견했어요! 감사합니다!', 'hajin011@gmail.com', 'hajin011.wordpress.com', '192.168.1.11', now()),
(default, '배진호', '운영자님 덕분에 많은 걸 배워갑니다.', 'jinho012@naver.com', 'jinho012.medium.com', '192.168.1.12', now()),
(default, '차민서', '방문 기념으로 한 마디 남깁니다. 감사합니다.', 'minseo013@daum.net', 'minseo013.tistory.com', '192.168.1.13', now()),
(default, '신서윤', '계속 발전하는 멋진 사이트가 되길 바랍니다!', 'seoyun014@yahoo.com', 'seoyun014.blogspot.com', '192.168.1.14', now()),
(default, '전태현', '필요한 정보를 찾을 수 있어서 유용했어요.', 'taehyun015@outlook.com', 'taehyun015.wordpress.com', '192.168.1.15', now()),
(default, '권현우', '유익한 정보가 가득하네요! 자주 들를게요.', 'hyunwoo016@gmail.com', 'hyunwoo016.medium.com', '192.168.1.16', now()),
(default, '오수진', '자주 방문해서 좋은 정보 얻어갈게요.', 'sujin017@naver.com', 'sujin017.tistory.com', '192.168.1.17', now()),
(default, '서윤정', '콘텐츠가 다양해서 흥미로웠어요.', 'yunjung018@daum.net', 'yunjung018.blogspot.com', '192.168.1.18', now()),
(default, '문하늘', '디자인도 깔끔하고 보기 편하네요!', 'haneul019@yahoo.com', 'haneul019.wordpress.com', '192.168.1.19', now()),
(default, '정태현', '지인들에게 추천하고 싶은 사이트네요.', 'taehyun020@outlook.com', 'taehyun020.medium.com', '192.168.1.20', now()),
(default, '조채연', '운영자님의 노력 덕분에 좋은 정보 얻고 갑니다.', 'chaeyeon021@gmail.com', 'chaeyeon021.tistory.com', '192.168.1.21', now()),
(default, '김나은', '내용이 알차고 체계적으로 정리되어 있네요.', 'naeun022@naver.com', 'naeun022.blogspot.com', '192.168.1.22', now()),
(default, '박서윤', '웹사이트 관리가 정말 잘 되고 있네요!', 'seoyun023@daum.net', 'seoyun023.wordpress.com', '192.168.1.23', now()),
(default, '윤지훈', '이런 사이트를 찾고 있었어요. 정말 좋아요!', 'jihoon024@yahoo.com', 'jihoon024.medium.com', '192.168.1.24', now()),
(default, '이도윤', '깔끔하고 보기 좋은 사이트예요.', 'doyun025@outlook.com', 'doyun025.tistory.com', '192.168.1.25', now()),
(default, '배하진', '이 사이트를 발견해서 다행이에요!', 'hajin026@gmail.com', 'hajin026.blogspot.com', '192.168.1.26', now()),
(default, '노승민', '방문 소감 남깁니다. 감사합니다!', 'seungmin027@naver.com', 'seungmin027.wordpress.com', '192.168.1.27', now()),
(default, '차진호', '훌륭한 사이트 운영 감사합니다!', 'jinho028@daum.net', 'jinho028.medium.com', '192.168.1.28', now()),
(default, '강도경', '매일 방문하고 싶은 멋진 사이트예요!', 'dokyung029@yahoo.com', 'dokyung029.tistory.com', '192.168.1.29', now()),
(default, '최예린', '방명록 남기고 갑니다. 응원할게요!', 'yerin030@outlook.com', 'yerin030.blogspot.com', '192.168.1.30', now()),
(default, '서수진', '유용한 정보 덕분에 많은 걸 배웠어요.', 'sujin031@gmail.com', 'sujin031.wordpress.com', '192.168.1.31', now()),
(default, '김태현', '유익한 사이트네요! 좋은 하루 보내세요!', 'taehyun032@naver.com', 'taehyun032.medium.com', '192.168.1.32', now());

INSERT INTO guest (idx, name, content, email, homePage, hostIp, visitDate) VALUES
(default, '강민준', '유익한 정보를 제공해주셔서 감사합니다.', 'minjun033@gmail.com', 'minjun033.tistory.com', '192.168.1.33', now()),
(default, '배서윤', '웹사이트가 너무 잘 정리되어 있네요.', 'seoyun034@naver.com', 'seoyun034.blogspot.com', '192.168.1.34', now()),
(default, '정도현', '내용이 풍부하고 도움이 많이 되었습니다.', 'dohyun035@daum.net', 'dohyun035.wordpress.com', '192.168.1.35', now()),
(default, '차하늘', '방명록을 남기고 갑니다. 번창하세요!', 'haneul036@yahoo.com', 'haneul036.medium.com', '192.168.1.36', now()),
(default, '신예린', '이런 유익한 사이트를 알게 되어 기뻐요.', 'yerin037@outlook.com', 'yerin037.tistory.com', '192.168.1.37', now()),
(default, '전지훈', '운영자님 덕분에 필요한 정보를 얻을 수 있었습니다.', 'jihoon038@gmail.com', 'jihoon038.blogspot.com', '192.168.1.38', now()),
(default, '권수민', '웹사이트 레이아웃이 보기 편해서 좋네요.', 'sumin039@naver.com', 'sumin039.wordpress.com', '192.168.1.39', now()),
(default, '오나은', '정말 알찬 콘텐츠들이 많네요!', 'naeun040@daum.net', 'naeun040.medium.com', '192.168.1.40', now()),
(default, '서승민', '필요한 정보를 쉽게 찾을 수 있어서 좋았습니다.', 'seungmin041@yahoo.com', 'seungmin041.tistory.com', '192.168.1.41', now()),
(default, '문도경', '좋은 사이트를 운영해주셔서 감사합니다.', 'dokyung042@outlook.com', 'dokyung042.blogspot.com', '192.168.1.42', now()),
(default, '김하진', '깔끔한 디자인과 빠른 속도, 만족스럽습니다.', 'hajin043@gmail.com', 'hajin043.wordpress.com', '192.168.1.43', now()),
(default, '노진호', '흥미로운 정보가 많아서 자주 방문하고 싶네요.', 'jinho044@naver.com', 'jinho044.medium.com', '192.168.1.44', now()),
(default, '최민서', '처음 방문했는데, 자주 오고 싶어지는 사이트네요.', 'minseo045@daum.net', 'minseo045.tistory.com', '192.168.1.45', now()),
(default, '강서윤', '운영자님 감사합니다. 도움 많이 받고 있어요.', 'seoyun046@yahoo.com', 'seoyun046.blogspot.com', '192.168.1.46', now()),
(default, '배태현', '정말 체계적으로 정리된 사이트네요!', 'taehyun047@outlook.com', 'taehyun047.wordpress.com', '192.168.1.47', now()),
(default, '조현우', '이런 사이트가 많아졌으면 좋겠어요.', 'hyunwoo048@gmail.com', 'hyunwoo048.medium.com', '192.168.1.48', now()),
(default, '윤수진', '다양한 정보가 있어서 너무 좋네요.', 'sujin049@naver.com', 'sujin049.tistory.com', '192.168.1.49', now()),
(default, '이윤정', '운영자님의 노고에 감사드립니다.', 'yunjung050@daum.net', 'yunjung050.blogspot.com', '192.168.1.50', now());
