show tables;

create table user (
  idx  int  not null auto_increment, /* 고유번호 */
  mid  varchar(20) not null,				/* 아이디 */
  pwd  varchar(100) not null,				/* 비밀번호 */
  name varchar(20) not null,				/* 성명 */
  age  int default 20,							/* 나이 */
  gender char(2) default '여자',			/* 성별 */
  address varchar(10),							/* 주소 */
  primary key (idx),
  unique key (mid)
);

desc user;

insert into user values (default, 'admin', '1234', '관리자', default, default, '서울');

select * from user;
select * from user where mid like '%3%';


INSERT INTO user (idx, mid, pwd, name, age, gender, address) VALUES
(default, 'skywalker21', 'pass1234', '김철수', 25, '남자', '서울'),
(default, 'moonlight88', 'pass5678', '이영희', 22, '여자', '부산'),
(default, 'ironhand7', 'pass91011', '박민준', 30, '남자', '대구'),
(default, 'silverfox33', 'pass1213', '최지우', 21, '여자', '광주'),
(default, 'goldenlion', 'pass1415', '장우진', 27, '남자', '인천'),
(default, 'shadowcat9', 'pass1617', '윤하나', 29, '여자', '대전'),
(default, 'bluewhale42', 'pass1819', '정도현', 26, '남자', '울산'),
(default, 'redphoenix', 'pass2021', '한서윤', 23, '여자', '수원'),
(default, 'stormrider', 'pass2223', '백승민', 28, '남자', '청주'),
(default, 'nightowl55', 'pass2425', '신예린', 24, '여자', '전주'),
(default, 'sunflower91', 'pass2627', '오지훈', 31, '남자', '창원'),
(default, 'firewolf77', 'pass2829', '김하늘', 22, '여자', '제주'),
(default, 'deepocean34', 'pass3031', '송민석', 32, '남자', '강릉'),
(default, 'whiterabbit6', 'pass3233', '이수민', 23, '여자', '포항'),
(default, 'winddancer', 'pass3435', '노현우', 26, '남자', '안동'),
(default, 'dragonfly17', 'pass3637', '서지훈', 27, '남자', '진주'),
(default, 'mysticfox', 'pass3839', '배윤정', 29, '여자', '춘천'),
(default, 'silentstorm', 'pass4041', '고민수', 24, '남자', '원주'),
(default, 'wildtiger88', 'pass4243', '장미희', 30, '여자', '여수'),
(default, 'galaxystar55', 'pass4445', '임도현', 28, '남자', '군산'),
(default, 'bluejay99', 'pass4647', '이채연', 23, '여자', '목포'),
(default, 'blackpanther', 'pass4849', '정호진', 27, '남자', '김해'),
(default, 'whisperingwind', 'pass5051', '박소연', 31, '여자', '순천'),
(default, 'mightyhawk', 'pass5253', '이준호', 22, '남자', '제천'),
(default, 'whitebear77', 'pass5455', '하수진', 25, '여자', '경주'),
(default, 'roaringlion', 'pass5657', '김도윤', 30, '남자', '양산'),
(default, 'twilightfox', 'pass5859', '한예린', 29, '여자', '당진'),
(default, 'blackhorse9', 'pass6061', '손현우', 26, '남자', '공주'),
(default, 'darkwizard7', 'pass6263', '양지훈', 27, '남자', '속초'),
(default, 'firestorm88', 'pass6465', '최나은', 24, '여자', '홍성'),
(default, 'mysticrain', 'pass6667', '조하늘', 28, '여자', '세종'),
(default, 'ironknight9', 'pass6869', '강지훈', 32, '남자', '광명'),
(default, 'moonshadow77', 'pass7071', '장서연', 21, '여자', '의정부'),
(default, 'stormbringer9', 'pass7273', '백승현', 30, '남자', '충주'),
(default, 'silvermist22', 'pass7475', '오혜진', 23, '여자', '김포'),
(default, 'goldenhawk', 'pass7677', '윤도경', 26, '남자', '천안'),
(default, 'wildstorm66', 'pass7879', '박재우', 27, '남자', '남양주'),
(default, 'redserpent', 'pass8081', '이현서', 29, '여자', '양평'),
(default, 'blackwolf21', 'pass8283', '송지훈', 24, '남자', '이천'),
(default, 'deepseadiver', 'pass8485', '차예슬', 28, '여자', '광양'),
(default, 'winterknight9', 'pass8687', '서민혁', 30, '남자', '논산'),
(default, 'whisperingfox', 'pass8889', '전혜윤', 22, '여자', '정읍'),
(default, 'darkfalcon55', 'pass9091', '임준호', 25, '남자', '문경'),
(default, 'brightdawn66', 'pass9293', '김소미', 26, '여자', '영주'),
(default, 'risingstorm88', 'pass9495', '박지훈', 32, '남자', '사천'),
(default, 'bluecomet21', 'pass9697', '한서현', 21, '여자', '밀양'),
(default, 'redfalcon33', 'pass9899', '조우진', 30, '남자', '보령'),
(default, 'blackphoenix', 'pass1001', '최민서', 23, '여자', '서산');




