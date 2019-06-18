-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- 생성 시간: 19-06-18 17:02
-- 서버 버전: 10.1.13-MariaDB
-- PHP 버전: 7.3.1p1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `torest`
--
CREATE DATABASE IF NOT EXISTS `torest` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `torest`;

-- --------------------------------------------------------

--
-- 테이블 구조 `item`
--

CREATE TABLE `item` (
  `itemNum` varchar(30) NOT NULL,
  `itemName` varchar(20) NOT NULL,
  `itemLocation` varchar(100) NOT NULL,
  `가격` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `item`
--

INSERT INTO `item` (`itemNum`, `itemName`, `itemLocation`, `가격`) VALUES
('i000', '불', 'disaster/fire.png', 0),
('i001', '하트나무', 'lv1/tree0.png', 100),
('i002', '가을나무', 'lv1/tree1.png', 200),
('i003', '줄무늬나무', 'lv1/tree2.png', 200),
('i004', '사과나무', 'lv1/tree3.png', 200),
('i005', '크리스마스나무', 'lv1/tree4.png', 300),
('i006', '핑크나무', 'lv1/tree5.png', 300),
('i007', '눈나무', 'lv1/tree6.png', 300),
('i008', '돈나무', 'lv1/tree7.png', 300),
('i009', '큰사과나무', 'lv2/tree3.png', 400),
('i010', '큰소나무', 'lv2/tree10.png', 400),
('i011', '큰복실나무', 'lv2/tree11.png', 400),
('i012', '큰예쁜나무', 'lv2/tree12.png', 400),
('i013', '큰부채나무', 'lv2/tree13.png', 400);

-- --------------------------------------------------------

--
-- 테이블 구조 `manage`
--

CREATE TABLE `manage` (
  `ID` varchar(30) NOT NULL,
  `itemNum` varchar(30) NOT NULL,
  `location` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `manage`
--

INSERT INTO `manage` (`ID`, `itemNum`, `location`) VALUES
('torest', 'i001', 4),
('torest', 'i004', 2),
('torest', 'i004', 7),
('torest', 'i006', 0),
('torest', 'i007', 5),
('torest', 'i008', 3),
('torest', 'i009', 6),
('torest', 'i009', 8),
('torest', 'i010', 1),
('짱정민', 'i002', 2),
('짱정민', 'i003', 6),
('짱정민', 'i005', 8),
('짱정민', 'i007', 4),
('짱정민', 'i010', 0),
('짱정민', 'i010', 5),
('짱정민', 'i012', 3),
('짱정민', 'i013', 1),
('짱정민', 'i013', 7);

-- --------------------------------------------------------

--
-- 테이블 구조 `question`
--

CREATE TABLE `question` (
  `문제번호` varchar(20) NOT NULL,
  `문제앞` varchar(100) NOT NULL,
  `답` varchar(10) NOT NULL,
  `문제뒤` varchar(200) NOT NULL,
  `난이도` varchar(10) NOT NULL,
  `A` varchar(30) NOT NULL,
  `B` varchar(30) NOT NULL,
  `C` varchar(30) NOT NULL,
  `D` varchar(30) NOT NULL,
  `해석` varchar(200) NOT NULL,
  `해설` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `question`
--

INSERT INTO `question` (`문제번호`, `문제앞`, `답`, `문제뒤`, `난이도`, `A`, `B`, `C`, `D`, `해석`, `해설`) VALUES
('5q022', '', 'C', 'the technician, only the computers on the second floor were affected by the virus, but he cautioned all the staff to avoid downloading files from e-mails. ', '중', 'In case that ', ' Regardless of ', ' According to ', 'Although ', '기술자에 따르면 2층에 있는 컴퓨터들만 바이 러스에 감염되었지만, 그는 모든 직원들에게 이메일에서 파일을 내려 받는 것을 피하라고 경고했다.', '[전치사 채우기 문제] 이 문장은 주어(the computers)와 동사(were affected)를 모두 갖춘 완전한 문장이므로 ‘_______ the technician’은 수식어 거품으로 보아 야 한다. 이 수식어 거품은 동사가 없는 거품 구이므로 수식어 거품구를 이끌 수 있는 전치 사 (B), (C)가 정답의 후보이다. ‘기술자에 따르 면 2층에 있는 컴퓨터들만 바이러스에 감염되 었지만, 그는 모든 직원들에게 이메일에서 파 일을 내려 받는 것을 피하라고 경고했다’라는 문맥이 되어야 하므로 ‘~에 따르면’이라는 뜻 의 전치사 (C) According to가 정답이다.'),
('5q032', 'Bank officials met to finalize plans for selling property that', 'A', ' by clients who had taken out a high-interest loan on a home. ', '상', ' had been abandoned ', 'abandoned', ' had abandoned ', ' abandon ', '은행 관계자들은 집을 담보로 높은 이자의 대 출을 받았던 고객들에 의해 포기된 부동산을 팔기 위한 계획을 마무리 짓기 위해 만났다. ', '[올바른 시제의 동사 채우기 문제] 주절의 시제가 과거(met)일 때 종속절에는 과 거 또는 과거완료 시제가 와야 하므로 (A), (B), (C)가 정답의 후보이다. 주어(that)와 동사 (abandon)가 ‘부동산이 포기되다’라는 수동의 의미 관계이므로 과거완료 수동태인 (A) had been abandoned가 정답이다.'),
('5q025', 'The plant supervisor had no choice but to interrupt production on an assembly line when one of the m', 'D', ' without apparent cause.', '중', 'work ', 'worked ', ' to work ', ' working ', '기계 중 한 대가 명확한 원인 없이 작동을 멈 추었을 때, 그 공장 감독관은 조립 라인의 생 산을 중단시킬 수 밖에 없었다. ', '[동명사 채우기 문제]  동사 stop은 동명사와 to부정사를 모두 목적어 로 갖는 동사이므로, to 부정사인 (C)와 동명사 (D)가 정답의 후보이다. ‘기계 중 한 대가 명확 한 원인 없이 작동을 멈추었을 때, 그 공장 감 독관은 조립 라인의 생산을 중단시킬 수 밖에 없었다’라는 문맥이 되어야 하므로 ‘~하는 것 을 멈추다’라는 과거의 뜻을 나타내는 동명사 (D) working이 정답이다. To 부정사를 사용할 경우, ‘~하기 위해 멈추다’라는 미래 또는 목적 의 뜻을 나타내게 된다. 동사 (A)와 준동사 (B) 는 동사의 목적어 자리에 올 수 없다. '),
('5q011', 'Garbage,', 'D', 'biodegradable or non-biodegradable, should be thrown into designated trash cans within the park.', '하', 'whenever', 'until', 'also', 'whether', '쓰레기는, 생물 분해성이든, 생물 분해성이 아니든, 공원 내 지정된 쓰레기통에 버려져야 합니다.', '빈칸 뒤에 접속사 or가 있으며, 의미상 \'생물 분해성이든, 생물 분해성이 아니든\'이란 의미가 되어야 하므로 명사절 접속사 \'whether\'이 쓰인 \'whether A or B: A이든지, B이든지\'의 구조가 되어야한다.'),
('5q028', 'News reporters on their first day at a major newspaper agreed that submitting a news story before a ', 'A', '', '중', 'anticipated ', 'designed ', 'announced ', 'qualified ', '주요 신문사에서의 첫 날에 뉴스 기자들은 마 감일 전에 보도 기사를 내보내는 것이 그들이 예상했던 것 보다 더 힘들다는 데 동의했다. ', '[동사 어휘 문제] ‘뉴스 기자들은 마감일 전에 보도 기사를 내보 내는 것이 그들이 예상했던 것 보다 더 힘들다 는 데 동의했다’라는 문맥이 되어야 하므로 ‘예 상하다, 기대하다’라는 뜻의 동사 anticipate의 p.p.형인 (A) anticipated가 정답이다. 참고로 (B) 의 design은 ‘설계하다, 계획하다’, (C)의 announce는 ‘공고하다, 알리다’, (D)의 qualify는 ‘~에게 자격을 주다’의 의미임을 알아둔다.'),
('5q041', '', 'A', 'making a bank transaction via the Internet, make sure to install all the security software that the bank’s web page initiates. ', '상', 'When ', 'Since ', 'Besides ', 'Despite ', '인터넷을 통해 금융 업무를 할 때, 은행의 웹 페이지가 개시되도록 하는 모든 보안 소프트웨 어를 반드시 설치하도록 하십시오. ', '[부사절 접속사 채우기 문제]  이 문장은 명령문으로, 생략된 주어(you)와 동 사(make sure)를 갖춘 완전한 절이므로 ‘_______ making a bank transaction via the Internet’은 수식어 거품으로 보아야 한다. 이 수식어 거품 자리에 온 분사구문(making a bank transaction via the Internet) 앞에 올 수 있는 것은 부사절 접속사이므로 부사절 접속사 (A), (B)가 정답의 후보이다. ‘인터넷을 통해 금융 업무를 할 때, 반드시 은행의 웹 페이지가 개시되도록 하는 모든 보안 소프트웨어를 설치하도록 하십시오’ 라는 의미가 되어야 하므로 ‘~할 때’라는 뜻의 부사절 접속사 (A) When이 정답이다. 전치사 또는 부사 (C), 전치사 (D)는 분사구문의 수식 어 거품을 이끌 수 없다. '),
('5q005', 'The union leader plans to', 'C', 'his remarks on work safety problems to the management during the meeting this afternoon.', '하', 'address', 'exalt', 'broadcast', 'send', '노동조합 간부는 오늘 오후 회의에서 경영진들에게 노동 안전 문제들에 관한 그의 의견을 이야기 할 계획이다', '[동사 어휘 문제] \'간부는 회의에서 노동 안전 문제들에 관한 그의 의견을 이야기할 계획이다\'라는 문맥상 \'이야기하다, 말하다\'라는 의미가 되어야 자연스러우므로 적절한 동사는 (A) adress 이다.'),
('5q003', 'Micron Technology has persistently surpassed its', 'C', 'in sales volume and product quality.', '하', 'competitive', 'competing', 'competitors', 'competitiveness', 'Micron Technology는 그들의 판매량과 제품 품질에 있어서 회사의 경쟁업체들을 지속적으로 능가했다.', '[품사문제] 소유격(its)와 전치사(in) 사이는 명사(compeetitors)자리이다.'),
('5q003', 'Micron Technology has persistently surpassed its', 'C', 'in sales volume and product quality.', '하', 'competitive', 'competing', 'competitorscompetitiveness', '', 'Micron Technology는 그들의 판매량과 제품 품질에 있어서 회사의 경쟁업체들을 지속적으로 능가했다.', '[품사문제] 소유격(its)와 전치사(in) 사이는 명사(compeetitors)자리이다.'),
('5q023', 'The construction of the new subway station and railway in the east side of the city is expected to b', 'C', ' within six years’ time. ', '중', ' considered ', 'confronted ', 'concluded ', 'recommended ', '도시 동쪽의 새 지하철 역과 철로의 건설은 6 년 내에 완료될 것으로 예상된다. ', '[동사 어휘 문제] ‘도시 동쪽의 새 지하철 역과 철로의 건설은 6 년 내에 완료될 것으로 예상된다’라는 문맥이 되어야 하므로 ‘완료하다, 끝내다’라는 뜻의 동 사 conclude의 p.p.형인 (C) concluded가 정답 이다. (A)의 consider는 ‘숙고하다’, (B)의 confront는 ‘직면하다, 맞서다’, (D)의 recommend는 ‘추천하다, 권하다’의 의미이다. 참고로 빈칸 앞의 concluded가 be동사(be)와 만나 ‘완료되다’라는 수동의 의미를 완성한다는 것을 알아둔다. '),
('5q044', 'Info-Pool is a large Internet-based information bank that ', 'B', 'archived electronic journals on a wide variety of topics. ', '상', 'contain ', 'contains ', 'containing ', 'are containing', 'Info-Pool은 다양한 주제들에 관한 보관된 전 자 잡지를 포함하고 있는, 인터넷에 기반을 둔 커다란 정보 은행이다. ', '[동사 자리 채우기 문제] 빈칸 앞의 명사(a large Internet-based information bank)를 꾸며주는 관계절(that _______ archived electronic journals on a wide variety of topics)에 주어(that)만 있고 동사가 없으므로 동사인 (A), (B), (D)가 정답의 후보이 다. 관계절의 주어(that)가 3인칭 단수 선행사(a large Internet-based information bank)를 받고 있으므로 3인칭 단수 동사인 (B) contains가 정 답이다. 준동사 (C)는 동사 자리에 올 수 없다.'),
('5q026', 'Because several customers complained about a device on the manufacturer’s website, the manager took', 'C', 'action and asked the technicians to test the product. ', '중', 'trivial ', 'hesitant ', 'decisive ', 'attentive ', '몇몇 고객들이 제조사의 웹사이트에 있는 장치 에 대해 불평했기 때문에, 관리자는 중대한 행 동을 취하였으며 기술자들에게 제품을 시험해 볼 것을 요청했다. ', '[형용사 어휘 문제] ‘몇몇 고객들이 제조사의 웹사이트에 있는 장 치에 대해 불평했기 때문에, 관리자는 중대한 행동을 취했다’라는 문맥이 되어야 하므로 ‘중 대한, 결정적인’이라는 뜻의 형용사 (C) decisive가 정답이다. 참고로 (A) trivial은 ‘하찮 은, 사소한’, (B) hesitant는 ‘주저하는’, (D)attentive는 ‘세심한, 경청하는’의 의미임을 알 아둔다.'),
('5q021', 'Housing values had dropped sharply, so even though the house for sale was ', 'B', ' in design and construction, its market price was very low. ', '중', 'inferior', 'outstanding', 'dependent', 'secondary', '주택 가치가 급격히 하락했기 때문에, 팔려고 내놓은 집이 디자인과 구조 면에서 뛰어났을지 라도 그것의 시세는 매우 낮았다. ', '[형용사 어휘 문제]‘주택 가치가 급격히 하락했기 때문에, 팔려고 내놓은 집이 디자인과 구조 면에서 뛰어났을지 라도 그것의 시세는 매우 낮았다’라는 문맥이 되어야 하므로 ‘뛰어난, 현저한, 눈에 띄는’이라는 뜻의 형용사 (B) outstanding이 정답이다. 참고로 (A) inferior는 ‘열등한, 하급의’, (C) dependent는 ‘의지하는’, (D) secondary는 ‘2류 의, 부차적인’의 의미임을 알아둔다.'),
('5q045', 'Although the electronics shop offers free software installation with a computer purchase, the custom', 'D', '', '상', 'randomly ', 'dependably ', 'diversely ', 'separately ', '비록 전자제품 가게에서 컴퓨터 구매 시 무료 로 소프트웨어 설치를 제공해 줄지라도, 그 고 객은 프로그램을 별도로 설치하는 것을 택했다. ', '[부사 어휘 문제] ‘비록 전자제품 가게에서 컴퓨터 구매 시 무료 로 소프트웨어 설치를 제공해 줄지라도, 그 고 객은 프로그램을 별도로 설치하는 것을 택했다’ 라는 문맥이 되어야 하므로 ‘별도로’라는 뜻의 부사 (D) separately가 정답이다. 참고로 (A) randomly는 ‘무작위로, 임의로’, (B) dependably 는 ‘믿음직하게’, (C) diversely는 ‘다양하게, 다르 게’의 의미임을 알아둔다.'),
('5q038', 'Eagle Technology, the ', 'B', 'software company in the region, is planning to merge with a telecommunications firm within two years. ', '상', 'dominate ', 'dominant ', 'dominantly ', 'dominance ', '그 지역에서 우위를 차지하는 소프트웨어 회사 인 Eagle Technology는 2년 내에 통신 회사와 의 합병을 계획하고 있다. ', '[형용사 자리 채우기 문제] 정관사(the)와 명사(software company)사이에서 명사를 꾸밀 수 있는 것은 형용사이므로 ‘우위 를 차지하는, 지배적인’이라는 뜻의 형용사 (B) dominant가 정답이다. 동사 (A), 부사 (C), 명 사 (D)는 형용사 자리에 올 수 없다. '),
('5q029', '', 'D', 'the number of guests at the Moonlight Hotel increased this month, the number is still 10 percent less than it was at the same time last year.', '중', 'Since ', 'Among ', 'Excluding ', 'Although ', 'Moonlight Hotel의 투숙객 수가 이번 달에 증 가했음에도 불구하고, 그 수는 여전히 작년 이 맘때 보다 10퍼센트 더 적다. ', '[부사절 접속사 채우기 문제] 이 문장은 주어(the number)와 동사(is), 그리고 보어(10 percent less)를 모두 갖춘 완전한 문장 이므로 ‘_______ the number of guests ~ this month’는 수식어 거품으로 보아야 한다. 이 수 식어 거품은 주어(the number of guests)와 동 사(increased)를 갖춘 거품절이므로 수식어 거 품절을 이끌 수 있는 부사절 접속사 (A), (D)가 정답의 후보이다. ‘Moonlight Hotel의 투숙객 수가 이번 달에 증가했음에도 불구하고, 그 수 는 여전히 작년 이맘때 보다 10퍼센트 더 적 다’라는 문맥이 되어야 하므로 ‘~임에도 불구 하고, 비록 ~이지만’이라는 뜻의 부사절 접속 사 (D) Although가 정답이다. 전치사 (B)와 (C) 는 수식어 거품절을 이끌 수 없다. '),
('5q014', 'Due to the economic crisis, many companies all over the world are', 'B', 'to reduce operating costs next year.', '하', 'expectedly', 'expected', 'expectation', 'expectation', '경제 위기로 인해, 전 세계의 많은 기업들이 다음 해에 운영비를 줄일 것으로 예상된다.', '[태에 맞는 동사 채우기 문제] \'~할 것으로 예상되다\'라는 수도의 의미이므로 be동사(are) 다음에 와서 수동태 동사를 만드는 p.p형인 B가 정답이다.'),
('5q037', 'To reduce the amount of time spent on processing loan applications, the bank’s officials ', 'C', 'a procedure that requires the assessment of only one administrator.', '상', 'alleviated ', 'deposited ', 'finalized ', 'equipped ', '대출 신청 과정에 소비되는 시간의 양을 줄이 기 위해, 그 은행 관계자들은 단 한 명의 관리 자의 평가를 필요로 하는 절차를 완성했다. ', '[동사 어휘 문제] ‘대출 신청 과정에 소비되는 시간의 양을 줄이 기 위해, 그 은행 관계자들은 단 한 명의 관리 자의 평가를 필요로 하는 절차를 완성했다’라 는 문맥이 되어야 하므로 ‘완성하다, 끝내다’라 는 뜻의 동사 finalize의 p.p.형인 (C) finalized 가 정답이다. 참고로 (A)의 alleviate는 ‘완화시 키다, 경감시키다’, (B)의 deposit은 ‘예금하다’, (D)의 equip은 ‘장비를 갖추다’의 의미임을 알 아둔다.'),
('5q004', 'To', 'D', 'the repair job on time, the engineer asked the carpenters and electricians to do overtime yesterday.', '하', 'finished', 'finishing', 'finishes', 'finish', '정시에 보수 작업을 마치기 위해, 엔지니어는 어제 목공들과 전기 기사들에게 초과근무를 할것을 부탁했다.', '[to 부정사의 동사원형 채우기 문제] \'To ___ the repair job on time\'은 to 부정사구로 빈칸에는 동사원형이 와야 하며, \'정시에 보수 작업을 마치기 위해\'로 해석된다.'),
('5q015', 'Climate in different parts of the world has become', 'C', 'unpredictable because of global warming.', '하', 'increase', 'increasable', 'increasingly', '', '세계의 서로 다른 지역의 기후는 지구 온난화로 인해 점점 더 예측할 수 없게 되었다.', '[부사 자리 채우기] 빈칸 위에 형용사(unpredictable)가 있으므로 빈칸에는 형용사를 꾸며주는 부사가 올 자리이다.'),
('5q039', '', 'A', 'the fast food restaurant open sixteen hours a day requires a staff of at least twenty persons on two separate shifts. ', '상', 'Keeping ', 'Keeps ', 'Kept ', 'Keep ', '패스트푸드 식당을 하루에 16시간 동안 여는 것은 2교대 체제로 최소한 20명의 직원을 필 요로 한다.', '[동명사 채우기 문제] 문장에 주어가 없으므로, 빈칸에는 동사 (requires) 앞에서 ‘the fast food restaurant open sixteen hours a day’를 이끌며 주어 역할 을 할 수 있는 문장 성분이 와야 한다. 주어의 자리에는 명사 역할을 하는 명사구, 대명사, 동 명사구, to 부정사구, 명사절 등이 올 수 있으 므로, 보기 중 동명사구를 완성하는 동명사 (A) Keeping이 정답이다.'),
('5q042', 'Book Nook is one of the', 'A', 'shops that prohibits customers from reading magazines and books that they do not intend to purchase. ', '상', 'few ', 'much ', 'little ', 'each ', 'Book Nook은 고객들이 구입할 의사가 없는 잡지와 책들을 읽는 것을 금지하는 몇 안 되는 가게들 중 하나이다. ', '[부정 대명사 채우기 문제] 빈칸 뒤에 가산 명사(shops)가 왔으므로 가산 명사와 함께 쓰일 수 있는 수량 형용사 (A)와 (D)가 정답의 후보이다. each는 단수 명사 앞에 와야 하므로 복수 가산 명사 앞에 오는 수량 형용사 (A) few(몇 안 되는, 소수의)가 정답이다. (B)와 (C)는 불가산 명사 앞에만 사용됨을 알아 둔다. '),
('5q009', 'With all the negative reviews about the novel, it seems that the author\'s message was', 'D', 'by literary critics.', '하', 'misinterpret', 'misinterprets', 'misinterpreting', 'misinterpreted', '그 소설에 대한 모든 부정적인 평론으로 보아, 작가의 의도가 문학 비평가들에 의해 제대로 이해되지 않았던 것 같습니다.', '[태에 맞는 동사 채우기 문제] 주어 (the author\'s message)와 동사 (misinterpret)가 \'작가의 의도가 이해되다\'라는 수동의 의미관계이므로 be동사(was) 다음에 와서 수동태 동사를 만드는 (D) minsinterpreted가 정답이다.'),
('5q017', 'The construction crew has', 'B', 'completed renovating the hospital ward, after which new machines for the pediatric center will be be brought in.', '중', 'thereby', 'almost', 'near', 'nowadays', '공사팀은 병동 개조를 거의 마쳤는데, 이후 소아과 센트를 위한 새로운 기계들이 들어올 것이다.', '[부사어휘 문제] \'공사팀은 병동 개조를 거의 마쳤다\'라는 문맥이 되어야 하므로 \'거의\'라는 뜻의 부사 B가 정답이다.'),
('5q020', 'During the press conference, the spokesperson did not comment', 'B', 'the measures the government would take with regard to the recent spate of bank failures.', '중', 'in', 'on', 'off', 'for', '기자 회견 동안, 대변인은 최근에 있었던 많은 은행 도산과 관련하여 정부가 취할 조치에 대해 의견을 언급하지 않았다.', '[전치사 채우기 문제] \'기자 회견 동안, 대변인은 은행 도산과 관련하여 정부가 취할 조치에 대해 의견을 언급하지 않았다\'라는 의미가 되어야 하므로 (B) on(~에 대해)가 정답이다.'),
('5q013', 'Customers cannot claim their cash remittance', 'A', 'presenting valid identification, such as a driver\'s license and passport.', '하', 'without', 'around', 'onto', 'along', '고객들은 운전 면허증과 여권같은 유효한 신분증을 제시하지 않고 현금 송금을 요구할 수 없습니다.', '[전치사 채우기 문제] \'고객들은 유효한 신분증을 제시하지 않고 송금을 요구할 수 없습니다\'라는 의미가 되어야하므로 빈칸에 적절한 전치사는 (A) without(~하지 않고, ~없이)이다.'),
('5q035', 'Most people had never heard of the book “The Last Thinker”, but it became well-known when a famous c', 'C', 'the author for his unusual writing style. ', '상', 'purchased ', 'decreased ', 'praised ', 'relieved ', '대부분의 사람들은 “The Last Thinker”라는 책 에 관해 전혀 들어본 적 없었지만, 그 책은 한 유명한 비평가가 작가의 특이한 문체에 관해 그를 칭찬하고 난 후 유명해졌다. ', '[동사 어휘 문제] ‘그 책은 한 유명한 비평가가 작가의 특이한 문체에 관해 그를 칭찬하고 난 후 유명해졌다’ 라는 문맥이 되어야 하므로 ‘칭찬하다, 찬미하 다’라는 뜻의 동사 praise의 p.p.형인 (C) praised가 정답이다. 참고로 (A)의 purchase는 ‘구입하다, 획득하다’, (B)의 decrease는 ‘줄다, 감소하다’, (D)의 relieve는 ‘경감하다, 덜다’의 의미임을 알아둔다.'),
('5q036', 'The 5-day workshop is aimed at helping artistically-inclined teenagers', 'D', 'artworks that utilize advanced painting techniques. ', '상', 'produced ', 'production ', 'producing ', 'produce ', '5일 간의 연수회는 예술가적 성향이 있는 10 대들이 고급 회화 기법을 이용한 작품을 만들 도록 돕는 것을 목표로 한다. ', '[원형 부정사 채우기 문제] 준 사역동사 help는 ‘help (+ 목적어) + 원형부 정사/to부정사’의 형태로 사용되므로, 원형 부 정사 또는 to 부정사가 와야 한다. 따라서 원 형 부정사인 (D) produce가 정답이다. '),
('5q024', 'After Bronco Corporation revised its project implementation system, it made good', 'D', ' in achieving greater customer satisfaction.', '중', 'progressed ', 'to progress ', 'progressive ', 'progress ', 'Bronco Corporation이 프로젝트 실행 체제를 수정한 후, 회사는 더 큰 고객 만족을 이루는 데 있어 훌륭한 진척을 이루었다. ', '[명사 자리 채우기 문제] 빈칸 앞 형용사(good)의 꾸밈을 받을 수 있는 것은 명사이므로 명사인 (C), (D)가 정답의 후 보이다. ‘Bronco Corporation이 프로젝트 실행 체제를 수정한 후, 회사는 더 큰 고객 만족을 이루는 데 있어 훌륭한 진척을 이루었다’라는 문맥이 되어야 하므로 ‘진척, 진보’라는 뜻의 명사 (D) progress가 정답이다. (C)를 사용할 경 우, ‘회사는 더 큰 고객 만족을 이루는 데 있어 훌륭한 진보론자를 이루었다’라는 어색한 의미 가 된다. 준동사 (A), to 부정사 (B)는 명사 자 리에 올 수 없다.'),
('5q016', 'The food packaging process is', 'B', 'checked by a team of well-trained quality control staff.', '중', 'sensitively', 'carefully', 'prominently', 'importantly', '음식 포장 과정은 잘 훈련된 품질 관리 직원팀에 의해 세심하게 검사된다.', '[문맥상 적절한 부사 채우기 문제] \'잘 훈련된 품질 관리 직원 팀에 의해 ___ 검사된다\'라는 문맥상 \'세심하게(신중하게) 검사된다\'라는 의미가 되어야 자연스러우므로 B가 정답이다.'),
('5q033', 'The architecture firm Builder’s Vision has achieved much', 'D', 'in the industry, particularly for its willingness to mix traditional and modern ideas.', '상', 'recognize ', 'recognized ', 'recognizably ', 'recognition ', '건축 회사 Builder’s Vision은 특히 전통적인 아 이디어와 현대적인 아이디어를 기꺼이 혼합하 려 하는 점에 대해 업계에서 많은 인정을 받았 다. ', '[명사 자리 채우기 문제] 동사(has achieved)의 목적어 자리에 오면서 형 용사(much)의 꾸밈을 받을 수 있는 것은 명사 이므로 ‘인정, 인지’라는 뜻의 명사 (D) recognition이 정답이다. 동사 (A)와 준동사 (B), 부사 (C)는 동사의 목적어 자리에 올 수 없다.'),
('5q040', 'A skin cream formulated by a renowned dermatologist will be offered ', 'B', 'at Landmark Department Store and its branches.', '상', 'thoroughly ', 'exclusively ', 'remarkably ', 'profoundly ', '유명한 피부과 전문의에 의해 만들어진 피부용 크림은 Landmark Department Store와 그 지점 에만 독점적으로 제공될 것입니다.', '[부사 어휘 문제]  ‘유명한 피부과 전문의에 의해 만들어진 피부 용 크림은 Landmark Department Store와 그 지점에만 독점적으로 제공될 것입니다’라는 문 맥이 되어야 하므로 ‘독점적으로, 배타적으로’ 라는 뜻의 부사 (B) exclusively가 정답이다. 참 고로 (A) thoroughly는 ‘완전히, 철저히’, (C) remarkably는 ‘두드러지게, 현저하게’, (D) profoundly는 ‘깊이’의 의미임을 알아둔다.'),
('5q018', 'Automobile factories in areas', 'B', 'affected by heavy rains postponed operations last week.', '중', 'severity', 'severely', 'severest', 'severer', '폭우에 심하게 영향을 받은 지역 내 자동차 공장들은 지난 주 조업을 연기했다.', '[부사 자리 채우기 문제] 빈칸 뒤에 형용사 역할을 하는 분사(affected)가 있으므로 분사를 꾸며주는 부사 B가 정답이다.'),
('5q002', 'The most important', 'C', 'in the hiring process are face-to-face interviews with applicants.', '하', 'installments', 'products', 'stages', 'results', '채용 과정에서 가장 중요한 단계는 지원자들과의 일대일 인터뷰이다.', ''),
('5q010', 'The national economy has been', 'A', 'for nearly two years because of the impact of global recession.', '하', 'stagnant', 'stagnancy', 'stagnating', 'stagnantly', '국가 경제는 세계 경제 불황의 영향으로 인해 거의 2년간 침체되어 있었다.', '빈칸은 be동사의 p.p형인 been 다음으로 보어가 될 수 있는 (A)와 (B)중에 \'국가 경제는 ~ 거의 2년간 침체되어 있었다\' 라는 의미가 되어야 하므로 (A)가 정답이다.'),
('5q027', 'Several newspapers published a press release', 'B', 'that the grand opening of the newlyconstructed M?lange Department Store would be postponed. ', '중', 'stated ', 'stating ', 'statement ', 'state ', '몇몇 신문들은 새로 지어진 M?lange Department Store의 대개장이 연기될 것이라 고 설명하는 보도 자료를 내보냈다. ', '[분사구문 채우기 문제] 명사(a press release) 뒤에서 명사를 꾸미는 것 은 분사이므로 과거분사 (A)와 현재분사 (B)가 정답의 후보이다. 분사(state)와 분사의 꾸밈을 받는 명사(a press release)가 ‘M?lange Department Store의 대개장이 연기될 것이라 고 설명하는 보도 자료’라는 능동의 의미 관계 이므로 현재 분사인 (B) stating이 정답이다. 명 사 (C)와 동사 (D)는 명사 뒤에서 명사를 꾸밀 수 없다. 참고로 분사가 명사를 수식하는 경우, 수식 받는 명사와 분사가 능동관계면 현재분사, 수동관계면 과거분사를 쓴다는 것을 알아둔다.'),
('5q007', 'The consultant was impressed that the draftsmen worked efficiently even without the', 'C', 'of a design director.', '하', 'standard', 'correction', 'supervision', 'accuracy', '그 컨설턴트는 제도사들이 설계 감독자의 관리도 없이 효율적으로 일한 것에 감명을 받았다.', '[명사 어휘 문제] \'그 컨설턴드는 제도사들이 설계 감독자의 관리도 없이 효율적으로 일한 것에 감명을 받았다\'라는 의미가 되어야 자연스러우므로 빈칸에 적절한 명사는 (C ) supervision(관리, 감독)이다. '),
('5q006', '', 'A', 'to secure your exprot products, we recommend that you have them insured before shipment. ', '하', 'In order', 'So that', 'Though', 'Because', '귀하의 수출 제품들을 안전하게 하기 위해, 저희는 선적 전에 제품들을 보험에 들어놓을 것을 제안합니다.', '[in order to 채우기 문제] to와 어울려 쓰일 수 있는 것은 (A) in order로 \'in order to\'는 \'~하기 위해\'라는 의미이다.'),
('5q019', 'Rooms for the Asian curise were', 'C', 'booked because of the special discount offered to corporate groups.', '중', 'totaling', 'totality', 'totally', 'totals', '기업 단체에게 제동되는 특별 할인가 덕분에 아시아 유람선 객실이 전부 예약되었다.', '[부사 자리채우기 문제] 빈칸이 수동태 동사 were booked의 사이에 위치하므로 동사를 꾸며주는 부사가 올 자리이다. 따라서 부사인 C가 정답이다.'),
('5q008', 'Jerry Cunningham will', 'A', 'the names of researchers and production assistants who will join Ms. Marina Fletcher at the Paris Film Festival.', '하', 'announce', 'diffuse', 'trade', 'command', 'Jerry Cunningham은 파리 영화 페스티벌에서 Ms. Marina Fletcher와 함께 할 조사원과 조연출자들의 이름을 발표할 것이다.', '[동사 어휘 문제] \'Jerry Cunningham은 조사원과 조연출자들의 이름을 발표할 것이다.\'라는 의미가 되어야 자연스러우므로 빈칸에 적절한 동사는 (A) announce(발표하다)이다.'),
('5q034', 'The fashion magazine had to discard a plan to feature an article on a rising clothing designer due t', 'C', 'change in his plans. ', '상', 'advanced ', 'unfamiliar ', 'unexpected ', 'ordinary ', '그의 계획에 있어 예상치 못한 변화 때문에, 그 패션 잡지는 떠오르는 의류 디자이너에 대 한 기사를 특집으로 하려는 계획을 포기해야만 했다.', '[형용사 어휘 문제] ‘그의 계획에 있어 예상치 못한 변화 때문에, 그 패션 잡지는 떠오르는 의류 디자이너에 대 한 기사를 특집으로 하려는 계획을 포기해야만 했다’라는 문맥이 되어야 하므로 ‘예상치 못한, 뜻밖의’라는 뜻의 형용사 (C) unexpected가 정 답이다. 참고로 (A) advanced는 ‘진보한, 전진 한’, (B) unfamiliar는 ‘익숙지 못한’, (D) ordinary 는 ‘정규의, 보통의’의 의미임을 알아둔다.'),
('5q031', 'Transportation charges have increased due to the rising cost of energy, and this has', 'D', 'affected the prices of major commodities such as wheat and rice. ', '상', 'efficiently ', 'formally ', 'usefully ', 'adversely ', '증가하는 에너지 비용으로 인해 교통비가 올랐 으며, 이것은 밀과 쌀 같은 주요 필수품들의 가격에 부정적으로 영향을 미쳤다.', '[부사 어휘 문제] ‘증가하는 에너지 비용으로 인해 교통비가 올 랐으며, 이것은 밀과 쌀 같은 주요 필수품들의 가격에 부정적으로 영향을 미쳤다’라는 문맥이 되어야 하므로 ‘부정적으로, 불리하게’라는 뜻 의 부사 (D) adversely가 정답이다. 참고로 (A) efficiently는 ‘능률적으로, 유효하게’, (B) formally는 ‘정식으로, 형식적으'),
('5q043', 'An employer must provide a ', 'C', 'reason for terminating an employment contract as well as give the employee one month’s notice.', '상', 'chronic ', 'subtle ', 'valid ', 'habitual ', '고용주는 직원에게 반드시 한 달 전에 통지를 해야 할 뿐만 아니라 고용 계약을 끝내는 데 있어 타당한 이유를 제공해야만 한다. ', '[형용사 어휘 문제] ‘고용주는 직원에게 반드시 한 달 전에 통지를 해야 할 뿐만 아니라 고용 계약을 끝내는 데 있어 타당한 이유를 제공해야만 한다’라는 문 맥이 되어야 하므로 ‘타당한, 유효한’이라는 뜻 의 형용사 (C) valid가 정답이다. 참고로 (A) chronic은 ‘만성적인, 버릇이 된’, (B) subtle은 ‘미묘한, 민감한’, (D) habitual은 ‘습관적인, 끊임 없는’의 의미임을 알아둔다.'),
('5q001', '', 'D', 'wishing to attend the company’s monthly luncheon should notify Oprah Winfry before Sep 3rd.', '하', 'Fewer', 'Another', 'Whoever', 'Anyone', '회사의 월례 오찬에 참석하기를 희망하는 분들은 9월 3일 이전에 Oprah Winfry 씨에게 보고해야 한다.', '[대명사 어휘문제] 분사(wishing)나 who 바로 앞의 대명사문제는 anyone과 those 중에서 정답을 골라야 한다.'),
('5q012', 'Mr. Foester is confident that', 'A', 'can convince the Japanese investors to do further business with our company.', '하', 'you', 'yours', 'yourself', 'your', 'Mr. Forester는 당신이 일본 투자자들로 하여금 우리 회사와 추가적인 사업을 하도록 설득시킬 수 있다고 확신합니다.', '[격에 맞는 인칭대명사 채우기 문제] 빈칸은 that 명사절의 주어 자리이므로 주어가 될 수 있는 주격 인칭대명사 A와 소유대명사 B가 정답의 후보이다. \'Mr. Forester는 당신이 투자자들로 하여금 우리 회사와 사업을 하도록 설득시킬 수 있다고 확신합니다.\'라는 의미가 되어야 하므로 \'당신, 너\'라는 뜻의 주격 인칭 대명사인 A가 정답이다. 참고로 소유대명사 B는 \'당신의 것\'라는 의미이다.');

-- --------------------------------------------------------

--
-- 테이블 구조 `test`
--

CREATE TABLE `test` (
  `ID` varchar(30) NOT NULL,
  `날짜` date NOT NULL,
  `점수` int(10) NOT NULL,
  `idx` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `test`
--

INSERT INTO `test` (`ID`, `날짜`, `점수`, `idx`) VALUES
('sujin11', '2019-04-01', 560, 1),
('jony8112', '2019-05-18', 900, 6),
('jony8112', '2019-05-17', 900, 7),
('jony8112', '2019-05-16', 800, 8),
('jony8112', '2019-05-15', 770, 9),
('sujin11', '2017-02-03', 425, 29),
('sujin11', '2018-07-23', 236, 30),
('sujin11', '2018-12-31', 523, 31),
('sujin11', '2019-06-05', 60, 120),
('torest', '2019-06-12', 120, 132),
('짱정민', '2019-06-14', 155, 133);

-- --------------------------------------------------------

--
-- 테이블 구조 `user`
--

CREATE TABLE `user` (
  `id` varchar(30) NOT NULL,
  `pw` varchar(20) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `프로필사진` varchar(100) DEFAULT './img/profile/profileNothing.png',
  `포인트` int(10) DEFAULT NULL,
  `마지막 문제풀이시간` datetime DEFAULT NULL,
  `숲 건강률` int(10) DEFAULT NULL,
  `등급` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='사용자 정보';

--
-- 테이블의 덤프 데이터 `user`
--

INSERT INTO `user` (`id`, `pw`, `name`, `프로필사진`, `포인트`, `마지막 문제풀이시간`, `숲 건강률`, `등급`) VALUES
('12345', '123456789', NULL, './img/profile/profileNothing.png', NULL, NULL, NULL, NULL),
('jony8112', '1110', 'jony', './img/profile/jony.jpg', 576, '2019-04-02 10:16:38', 95, '상'),
('sujin11', '2220', 'sujin', './img/profile/girl1.jpg', 845, '2019-04-10 14:40:16', 40, '하'),
('짱정민', 'WkdWkdaos', '짱정민', './img/profile/profileNothing.png', NULL, NULL, NULL, '하');

-- --------------------------------------------------------

--
-- 테이블 구조 `word`
--

CREATE TABLE `word` (
  `번호` varchar(20) NOT NULL,
  `단어명` varchar(20) DEFAULT NULL,
  `발음기호` varchar(20) DEFAULT NULL,
  `뜻` varchar(20) DEFAULT NULL,
  `단어수준` varchar(10) DEFAULT NULL,
  `이미지` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `word`
--

INSERT INTO `word` (`번호`, `단어명`, `발음기호`, `뜻`, `단어수준`, `이미지`) VALUES
('w0001', 'instruct', '[ɪnˈstrʌkt]', '지시하다', '하', './img/word/w0001.jpg'),
('w0002', 'compete', '[kəmˈpiːt]\r\n', '경쟁하다', '하', './img/word/w0002.jpg'),
('w0003', 'merchandise', '[[ˈmɜːtʃəndaɪs; -daɪ', '상품', '하', './img/word/w0003.jpg'),
('w0004', 'refund', '[rìːfʌ́nd]\r\n', '환불', '하', './img/word/w0004.jpg'),
('w0005', 'assignment', '[əˈsaɪnmənt]\r\n', '임무, 과제', '하', './img/word/w0005.jpg'),
('w0006', 'specialize', '[ˈspeʃəlaɪz]\r\n', '전문적으로 다루다', '하', './img/word/w0006.jpg'),
('w0007', 'examine', '[ɪɡˈzæmɪn]\r\n', '조사하다', '하', './img/word/w0007.jpg'),
('w0008', 'automoblie', '', '자동차', '하', './img/word/w0008.jpg'),
('w0009', 'advertisement', '[ˌædvərˈtaɪz-]\r\n', '광고', '하', './img/word/w0009.jpg'),
('w0010', 'deduct', '[dɪˈdʌkt]\r\n', '공제하다, 감하다', '하', './img/word/w0010.jpg'),
('w0011', 'purchase', '[ˈpɜːrtʃəs]\r\n', '구매', '하', './img/word/w0011.jpg'),
('w0012', 'appreciate', '[əˈpriːʃieɪt]\r\n', '고맙게 생각하다', '하', './img/word/w0012.jpg'),
('w0013', 'currently', '[ˈkɜːr-]\r\n', '현재', '하', './img/word/w0013.jpg'),
('w0014', 'submit', '[səbˈmɪt]\r\n', '제출하다', '하', './img/word/w0014.jpg'),
('w0015', 'draft', '[dræft]', '원고, 초안', '하', './img/word/w0015.jpg'),
('w0016', 'otherwise', '[ˈʌðərwaɪz]\r\n', '만약 그렇지 않으면', '중', './img/word/w0016.jpg'),
('w0017', 'achievement', '[əˈtʃiːvmənt]\r\n', '업적', '중', './img/word/w0017.jpg'),
('w0018', 'remarkable', '[-ˈmɑːrk-]\r\n', '놀라운', '중', './img/word/w0018.jpg'),
('w0019', 'positively', '[ˈpɑːz-]\r\n', '긍적적으로', '중', './img/word/w0019.jpg'),
('w0020', 'deserve', '[dɪˈzɜːrv]\r\n', '~을 받을만하다', '중', './img/word/w0020.jpg'),
('w0021', 'performance', '[pərˈfɔːrm-]\r\n', '실적, 성과', '중', './img/word/w0021.jpg'),
('w0022', 'recognition', '[ˌrekəɡˈnɪʃn]\r\n', '(공로 등에 대한) 인정', '중', './img/word/w0022.jpg'),
('w0023', 'capability', '[ˌkeɪpəˈbɪləti]\r\n', '능력', '중', './img/word/w0023.jpg'),
('w0024', 'employment', '[ɪmˈplɔɪmənt]\r\n', '고용, 채용', '중', './img/word/w0024.jpg'),
('w0025', 'eventually', '[ɪˈventʃuəli]\r\n', '결국, 궁극적으로', '중', './img/word/w0025.jpg'),
('w0026', 'prescribe', '[prɪˈskraɪb]\r\n', '처방하다, 규정하 다', '중', './img/word/w0026.jpg'),
('w0027', 'installation', '[ˌɪnstəˈleɪʃn]\r\n', '설치, 설비 ', '중', './img/word/w0027.jpg'),
('w0028', 'diverse', '[-ˈvɜːrs]\r\n', '다양한', '중', './img/word/w0028.jpg'),
('w0029', 'foreign', '[ˈfɔːrən;ˈfɑːrən]\r\n', '외국의 ', '중', './img/word/w0029.jpg'),
('w0030', 'passenger', '[ˈpæsɪndʒə(r)]\r\n', '승객 ', '중', './img/word/w0030.jpg'),
('w0031', 'venue', '[ˈvenjuː]\r\n', '장소, 발생지, 입장 ', '상', './img/word/w0031.jpg'),
('w0032', 'vaccination', '[væ̀ksənéiʃən]\r\n', '예방 접종', '상', './img/word/w0032.jpg'),
('w0033', 'supervisor', '[ˈsuːpərv-]\r\n', '감독관 ', '상', './img/word/w0033.jpg'),
('w0034', 'allowance', '[əˈlaʊəns]\r\n', '일당, 일급', '상', './img/word/w0034.jpg'),
('w0035', 'trim', '[trɪm]\r\n', '삭감하다, 다듬다 ', '상', './img/word/w0035.jpg'),
('w0036', 'give notice', '', '알리다, 통지하다', '상', './img/word/w0036.jpg'),
('w0037', 'aspiration', '[ˌæspəˈreɪʃn]\r\n', '포부, 열망 ', '상', './img/word/w0037.jpg'),
('w0038', 'publicity', '[pʌbˈlɪsəti]\r\n', '홍보, 선전 ', '상', './img/word/w0038.jpg'),
('w0039', 'fortunate', '[ˈfɔːrtʃ-]\r\n', '행운의 ', '상', './img/word/w0039.jpg'),
('w0040', 'enviable', '[ˈenviəbl]\r\n', '부러운 ', '상', './img/word/w0040.jpg'),
('w0041', 'commodity', '[-ˈmɑːd-]\r\n', '원자재', '상', './img/word/w0041.jpg'),
('w0042', 'private', '[ˈpraɪvət]\r\n', '개인소유의', '상', './img/word/w0042.jpg'),
('w0043', 'immediate', '[ɪˈmiːdiət]\r\n', '즉시의', '상', './img/word/w0043.jpg'),
('w0044', 'share', '[ʃέər]\r\n', '주식, 몫 ', '상', './img/word/w0044.jpg'),
('w0045', 'hazardous', '[-ərdəs]\r\n', '모험적인, 위험한 ', '상', './img/word/w0045.jpg');

-- --------------------------------------------------------

--
-- 테이블 구조 `연습`
--

CREATE TABLE `연습` (
  `문제번호` varchar(20) NOT NULL,
  `문제 앞` varchar(100) DEFAULT NULL,
  `답` varchar(10) NOT NULL,
  `문제 뒤` varchar(200) DEFAULT NULL,
  `난이도` varchar(10) NOT NULL,
  `A` varchar(30) NOT NULL,
  `B` varchar(30) NOT NULL,
  `C` varchar(30) NOT NULL,
  `D` varchar(30) NOT NULL,
  `해석` varchar(200) NOT NULL,
  `해설` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `연습`
--

INSERT INTO `연습` (`문제번호`, `문제 앞`, `답`, `문제 뒤`, `난이도`, `A`, `B`, `C`, `D`, `해석`, `해설`) VALUES
('5q001', NULL, 'D', 'wishing to attend the company’s monthly luncheon should notify Oprah Winfry before Sep 3rd.	\r\n', '상', 'Fewer', 'Another', 'Whoever', 'Anyone', '회사의 월례 오찬에 참석하기를 희망하는 분들은 9월 3일 이전에 Oprah Winfry 씨에게 보고해야 한다.\r\n', '[대명사 어휘문제] 분사(wishing)나 who 바로 앞의 대명사문제는 anyone과 those 중에서 정답을 골라야 한다.	\r\n'),
('5q002', 'The most important\r\n', 'C', 'in the hiring process are face-to-face interviews with applicants.	\r\n', '중', 'installments', 'products', 'stages', 'results', '채용 과정에서 가장 중요한 단계는 지원자들과의 일대일 인터뷰이다.		\r\n', '채용 과정에서 가장 중요한 단계는 지원자들과의 일대일 인터뷰이다.		\r\n'),
('5q003', 'Micron Technology has persistently surpassed its\r\n', 'C', 'in sales volume and product quality.	\r\n', '중', 'competitive', 'competing', 'competitors', 'competitiveness	', 'Micron Technology는 그들의 판매량과 제품 품질에 있어서 회사의 경쟁업체들을 지속적으로 능가했다.\r\n', '[품사문제] 소유격(its)와 전치사(in) 사이는 명사(compeetitors)자리이다.	\r\n'),
('5q004', 'To\r\n', 'D', 'the repair job on time, the engineer asked the carpenters and electricians to do overtime yesterday.	\r\n', '상', 'address', 'exalt', 'Though', 'accuracy', 'Jerry Cunningham은 파리 영화 페스티벌에서 Ms. Marina Fletcher와 함께 할 조사원과 조연출자들의 이름을 발표할 것이다.\r\n', '[동사 어휘 문제] \'Jerry Cunningham은 조사원과 조연출자들의 이름을 발표할 것이다.\'라는 의미가 되어야 자연스러우므로 빈칸에 적절한 동사는 (A) announce(발표하다)이다.	\r\n'),
('5q005', 'The union leader plans to\r\n', 'C', 'his remarks on work safety problems to the management during the meeting this afternoon.	\r\n', '중', 'In order', 'So that', 'supervision', 'command', '그 소설에 대한 모든 부정적인 평론으로 보아, 작가의 의도가 문학 비평가들에 의해 제대로 이해되지 않았던 것 같습니다.\r\n', '[태에 맞는 동사 채우기 문제] 주어 (the author\'s message)와 동사 (misinterpret)가 \'작가의 의도가 이해되다\'라는 수동의 의미관계이므로 be동사(was) 다음에 와서 수동태 동사를 만드는 (D) minsinterpreted가 정답이다.	\r\n');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`itemNum`);

--
-- 테이블의 인덱스 `manage`
--
ALTER TABLE `manage`
  ADD PRIMARY KEY (`ID`,`itemNum`,`location`);

--
-- 테이블의 인덱스 `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`C`);

--
-- 테이블의 인덱스 `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`idx`);

--
-- 테이블의 인덱스 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `word`
--
ALTER TABLE `word`
  ADD PRIMARY KEY (`번호`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `test`
--
ALTER TABLE `test`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
