-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- 생성 시간: 19-10-17 19:06
-- 서버 버전: 5.7.25
-- PHP 버전: 7.1.28

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
('jony8112', 'i001', 7),
('jony8112', 'i002', 2),
('jony8112', 'i003', 5),
('jony8112', 'i004', 0),
('jony8112', 'i005', 8),
('jony8112', 'i006', 3),
('jony8112', 'i007', 4),
('jony8112', 'i008', 1),
('jony8112', 'i009', 6),
('sujin11', 'i000', 0),
('sujin11', 'i000', 1),
('sujin11', 'i000', 2),
('sujin11', 'i000', 3),
('sujin11', 'i000', 4),
('sujin11', 'i000', 5),
('sujin11', 'i000', 6),
('sujin11', 'i000', 7),
('sujin11', 'i000', 8);

-- --------------------------------------------------------

--
-- 테이블 구조 `question`
--

CREATE TABLE `question` (
  `문제번호` varchar(20) NOT NULL,
  `문제앞` varchar(300) NOT NULL,
  `답` varchar(10) NOT NULL,
  `문제뒤` varchar(300) NOT NULL,
  `난이도` varchar(10) NOT NULL,
  `A` varchar(30) NOT NULL,
  `B` varchar(30) NOT NULL,
  `C` varchar(30) NOT NULL,
  `D` varchar(30) NOT NULL,
  `해석` varchar(300) NOT NULL,
  `해설` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `question`
--

INSERT INTO `question` (`문제번호`, `문제앞`, `답`, `문제뒤`, `난이도`, `A`, `B`, `C`, `D`, `해석`, `해설`) VALUES
('5q022', '', 'C', 'the technician, only the computers on the second floor were affected by the virus, but he cautioned all the staff to avoid downloading files from e-mails. ', '중', 'In case that ', ' Regardless of ', ' According to ', 'Although ', '기술자에 따르면 2층에 있는 컴퓨터들만 바이 러스에 감염되었지만, 그는 모든 직원들에게 이메일에서 파일을 내려 받는 것을 피하라고 경고했다.', '[전치사 채우기 문제] 이 문장은 주어(the computers)와 동사(were affected)를 모두 갖춘 완전한 문장이므로 ‘_______ the technician’은 수식어 거품으로 보아 야 한다. 이 수식어 거품은 동사가 없는 거품 구이므로 수식어 거품구를 이끌 수 있는 전치 사 (B), (C)가 정답의 후보이다. ‘기술자에 따르 면 2층에 있는 컴퓨터들만 바이러스에 감염되 었지만, 그는 모든 직원들에게 이메일에서 파 일을 내려 받는 것을 피하라고 경고했다’라는 문맥이 되어야 하므로 ‘~에 따르면’이라는 뜻 의 전치사 (C) According to가 정답이다.'),
('5q032', 'Bank officials met to finalize plans for selling property that', 'A', ' by clients who had taken out a high-interest loan on a home. ', '상', ' had been abandoned ', 'abandoned', ' had abandoned ', ' abandon ', '은행 관계자들은 집을 담보로 높은 이자의 대 출을 받았던 고객들에 의해 포기된 부동산을 팔기 위한 계획을 마무리 짓기 위해 만났다. ', '[올바른 시제의 동사 채우기 문제] 주절의 시제가 과거(met)일 때 종속절에는 과 거 또는 과거완료 시제가 와야 하므로 (A), (B), (C)가 정답의 후보이다. 주어(that)와 동사 (abandon)가 ‘부동산이 포기되다’라는 수동의 의미 관계이므로 과거완료 수동태인 (A) had been abandoned가 정답이다.'),
('5q025', 'The plant supervisor had no choice but to interrupt production on an assembly line when one of the m', 'D', ' without apparent cause.', '중', 'work ', 'worked ', ' to work ', ' working ', '기계 중 한 대가 명확한 원인 없이 작동을 멈 추었을 때, 그 공장 감독관은 조립 라인의 생 산을 중단시킬 수 밖에 없었다. ', '[동명사 채우기 문제]  동사 stop은 동명사와 to부정사를 모두 목적어 로 갖는 동사이므로, to 부정사인 (C)와 동명사 (D)가 정답의 후보이다. ‘기계 중 한 대가 명확 한 원인 없이 작동을 멈추었을 때, 그 공장 감 독관은 조립 라인의 생산을 중단시킬 수 밖에 없었다’라는 문맥이 되어야 하므로 ‘~하는 것 을 멈추다’라는 과거의 뜻을 나타내는 동명사 (D) working이 정답이다. To 부정사를 사용할 경우, ‘~하기 위해 멈추다’라는 미래 또는 목적 의 뜻을 나타내게 된다. 동사 (A)와 준동사 (B) 는 동사의 목적어 자리에 올 수 없다. '),
('5q067', 'Some of the world\'s worst problems could be solved if', 'B', 'its leaders would communicate with each other.', '상', 'ever', 'only', 'a few', 'of many', '세계의 가장 심각한 문제들 중 일부는 지도자들이 서로서로 대화를 하기만 하면 해결될 수 있다.', 'if와 함께 쓰일 수 있는것은 if only와 if ever이지만 if ever는「~하는 경우가 있다손 치더라도」의 뜻이므로 어울리지 않는다.'),
('5q088', 'Because checked bags are often stacked up, it is', 'D', 'for travelers to put put fragile items in their carry-ons.', '중', 'advises', 'advice', 'advising', 'advisable', '수속을 마친 가방들은 흔히 쌓아 올려지기 때문에, 여행자들은 깨지기 쉬운 물품들은 (기내) 휴대용 가방에 넣는 것이 바람직하다.', '[형용사 자리] 빈칸은 be동사 보어 자리이므로 문맥상 \'바람직한, 권할 만한\'이라는 뜻의 형용사인 advisable이 정답이다.'),
('5q068', 'When you leave the country, you will have to pay an airport tax', 'B', 'all your other expenses.', '상', 'added', 'in addition to', 'after', 'as part of', '출국할 때 당신은 모든 다른 비용뿐만 아니라 공항세도 지불해야 할 것입니다.', 'C는 적합치 않고 공항세는 다른 비용에 포함되지 않으며, (A)는 added to가 되어야 한다.'),
('5q011', 'Garbage,', 'D', 'biodegradable or non-biodegradable, should be thrown into designated trash cans within the park.', '하', 'whenever', 'until', 'also', 'whether', '쓰레기는, 생물 분해성이든, 생물 분해성이 아니든, 공원 내 지정된 쓰레기통에 버려져야 합니다.', '빈칸 뒤에 접속사 or가 있으며, 의미상 \'생물 분해성이든, 생물 분해성이 아니든\'이란 의미가 되어야 하므로 명사절 접속사 \'whether\'이 쓰인 \'whether A or B: A이든지, B이든지\'의 구조가 되어야한다.'),
('5q028', 'News reporters on their first day at a major newspaper agreed that submitting a news story before a ', 'A', '', '중', 'anticipated ', 'designed ', 'announced ', 'qualified ', '주요 신문사에서의 첫 날에 뉴스 기자들은 마 감일 전에 보도 기사를 내보내는 것이 그들이 예상했던 것 보다 더 힘들다는 데 동의했다. ', '[동사 어휘 문제] ‘뉴스 기자들은 마감일 전에 보도 기사를 내보 내는 것이 그들이 예상했던 것 보다 더 힘들다 는 데 동의했다’라는 문맥이 되어야 하므로 ‘예 상하다, 기대하다’라는 뜻의 동사 anticipate의 p.p.형인 (A) anticipated가 정답이다. 참고로 (B) 의 design은 ‘설계하다, 계획하다’, (C)의 announce는 ‘공고하다, 알리다’, (D)의 qualify는 ‘~에게 자격을 주다’의 의미임을 알아둔다.'),
('5q049', '', 'C', 'message was left for the vice president while was away', '중', 'All', 'Most', 'Another', 'Several', '부사장이 부재중인 동안 메시지가 하나 더 남겨졌다.', '주어진 선택지 모두 형용사, 대명사 역할을 할 수 있는 것들이다. 여기에서는 단수 명사(message)를 수식할 수 있는 형용사를 고르는 것이 포인트, Another를 제외하고는 모두 복수 명사를 수식한다. 따라서 단수 명사를 수식하는 Another가 정답이다.'),
('5q076', 'Residents made an', 'C', 'to the city council to try to get the speed limit lowered in their neighborhood.', '하', 'appealingly', 'appealed', 'appeal', 'appeals', '주민들은 그 동네의 제한 속도를 낮추기 위해 시 의회에 호소했다.', '[명사자리] 빈칸은 동사 made의 목적어자리이며 관사 an과 전치사 to 사이에 있으므로 단수 명사가 들어갈 자리이다.'),
('5q081', '', 'C', 'the chef arranges the food on the plate, one of the servers should bring it out to the person who ordered it.', '하', 'For instance', 'Still', 'As soon as', 'Meanwhile', '요리사가 접시에 음식을 담자마자, 종업원 중 한명이 그것을 주문한 사람에게 가지고 가야한다.', '[부사절 접속사] 빈칸 뒤로 두 개의 완전한 절이 있으므로, 빈칸은 두 절을 연결해 줄 접속사가 들어갈 자리이다.'),
('5q097', 'Ms. Harvey, whose sculptures are on display at the gallery, has worked as a professional artist', 'A', 'more than forty years.', '상', 'for', 'to', 'at', 'of', '그의 조각품들을 갤러리에 전시 중인 Harvey 씨는 40년 넘게 전문적인 미술가로 일해왔다.', '[전치사 어휘] 빈칸은 앞의 절과 뒤의 기간 표현을 연결해줄 전치사가 들어갈 자리이므로, \'40년 넘게\'라는 의미를 완성해줄 기간 전치사인 for이 정답이다.'),
('5q094', 'The shopping center project was not as', 'C', 'to new investors as the planners had expected.', '중', 'attract', 'attracitve', 'attracitvely', 'attarcts', '쇼핑 센터 프로젝트는 계획자들이 예상했던 것만큼 새로운 투자자들에게 매력적이지 않았다.', '[형용사 자리] as ~ as 사이에 있는 빈칸은 be동사 was의 보어가 들어갈 자리이므로, \'매력적인\'이란 뜻의 형용사인 attractive가 정답이다.'),
('5q082', 'The HR team is having difficulty filling the security director', 'D', 'with a qualified applicant.', '하', 'career', 'worker', 'backgorund', 'position', 'HR팀은 보안 관리자 직책을 자격을 갖춘 기원자로 충원하는 데 어려움을 겪고 있다.', '[명사어휘] 빈칸은 앞의 명사와 함께 복합 명사를 완성해 줄 명사가 들어갈 자리로, 문맥상 충원하는 대상으로 적절한 것은 \'직책\'이다.'),
('5q053', 'A delicate', 'A', 'between strength and generosity results in good negotiations', '중', 'balance', 'balances', 'balanced', 'to balance', '힘과 아랑의 섬세한 균형이 훌륭한 협상을 낳는다.', 'delicate이라는 형용사의 수식을 받는 자리이기 때문에 빈칸에는 명사가 들어가야 한다. 그리고 문장에서 동사는 results이기 때문에 주어는 3인칭 단수 명사가 되어야 한다. 따라서 정답은 balance이다.'),
('5q058', 'When did you last have your hair', 'A', '', '하', 'cut', 'be cut', 'be cutting', 'cutting', '지난 번에 언제 이발을 했습니까?', 'have one\'s hair cut하면 「~의 머리를 깎다」라는 뜻이 되는데, 이때 cut은 동사의 원형이 아니라 과거분사인 점에 주의해야 한다.'),
('5q041', '', 'A', 'making a bank transaction via the Internet, make sure to install all the security software that the bank’s web page initiates. ', '상', 'When ', 'Since ', 'Besides ', 'Despite ', '인터넷을 통해 금융 업무를 할 때, 은행의 웹 페이지가 개시되도록 하는 모든 보안 소프트웨 어를 반드시 설치하도록 하십시오. ', '[부사절 접속사 채우기 문제]  이 문장은 명령문으로, 생략된 주어(you)와 동 사(make sure)를 갖춘 완전한 절이므로 ‘_______ making a bank transaction via the Internet’은 수식어 거품으로 보아야 한다. 이 수식어 거품 자리에 온 분사구문(making a bank transaction via the Internet) 앞에 올 수 있는 것은 부사절 접속사이므로 부사절 접속사 (A), (B)가 정답의 후보이다. ‘인터넷을 통해 금융 업무를 할 때, 반드시 은행의 웹 페이지가 개시되도록 하는 모든 보안 소프트웨어를 설치하도록 하십시오’ 라는 의미가 되어야 하므로 ‘~할 때’라는 뜻의 부사절 접속사 (A) When이 정답이다. 전치사 또는 부사 (C), 전치사 (D)는 분사구문의 수식 어 거품을 이끌 수 없다. '),
('5q084', 'Reporters took photographs', 'D', 'the opening ceremony of the Maxwell Music Festival.', '하', 'except', 'while', 'besidess', 'during', '기자들이 Maxwell 뮤지 페스티벌의 개막식 동안 사진을 찍었다.', '[전치사 어휘] 빈칸은 앞의 절과 뒤의 명사구를 연결해 줄 전치사가 들어갈 자리이므로 \'~중에, ~동안\'이라는 뜻의 during이 정답이다.'),
('5q060', 'She asked whether I could tell', 'D', 'the way to the airport.', '하', 'me', 'which', 'best', 'her', '그녀는 내가 그녀에게 공항으로 가는 길을 알려줄 수 있는지를 물었다.', '의문문의 간접화법 문장이다. whether절 속에서 동사 tell의 목적어가 되는 대명사를 찾으면 된다.'),
('5q090', 'The town\'s mayor made a generous donation to the fundraiser,', 'C', 'the total to over twenty-five thousand dollars.', '중', 'brings', 'bring', 'bringing', 'brought', '그 도시의 시장이 기금 모금 행사에 후한 기부를 하여, 총 액이 25,000달러가 넘었다.', '[분사 구문] 빈칸 앞 절에 동사 made가 있고, 따라서 접속사가 생략된 형태의 분사 구문을 만들어 줄 분사가 필요한데 빈칸 뒤에 목적어가 있으므로 현재 분사인 bringing이 정답이다.'),
('5q005', 'The union leader plans to', 'C', 'his remarks on work safety problems to the management during the meeting this afternoon.', '하', 'address', 'exalt', 'broadcast', 'send', '노동조합 간부는 오늘 오후 회의에서 경영진들에게 노동 안전 문제들에 관한 그의 의견을 이야기 할 계획이다', '[동사 어휘 문제] \'간부는 회의에서 노동 안전 문제들에 관한 그의 의견을 이야기할 계획이다\'라는 문맥상 \'이야기하다, 말하다\'라는 의미가 되어야 자연스러우므로 적절한 동사는 (A) adress 이다.'),
('5q086', 'The responsibilities of each team member should be explained as', 'C', 'as possible.', '중', 'clearest', 'clarity', 'clearly', 'clearer', '각 팀원의 책무들은 가능한 한 명확하게 설명되어야 한다.', '[부사 자리] 빈칸은 3형식 동사의 수동태 be explained를 수식하는 부사 자리이므로 \'명확하게, 분명히\'라는 뜻의 부사인 clearly 가 정답이다.'),
('5q003', 'Micron Technology has persistently surpassed its', 'C', 'in sales volume and product quality.', '하', 'competitive', 'competing', 'competitors', 'competitiveness', 'Micron Technology는 그들의 판매량과 제품 품질에 있어서 회사의 경쟁업체들을 지속적으로 능가했다.', '[품사문제] 소유격(its)와 전치사(in) 사이는 명사(compeetitors)자리이다.'),
('5q023', 'The construction of the new subway station and railway in the east side of the city is expected to b', 'C', ' within six years’ time. ', '중', ' considered ', 'confronted ', 'concluded ', 'recommended ', '도시 동쪽의 새 지하철 역과 철로의 건설은 6 년 내에 완료될 것으로 예상된다. ', '[동사 어휘 문제] ‘도시 동쪽의 새 지하철 역과 철로의 건설은 6 년 내에 완료될 것으로 예상된다’라는 문맥이 되어야 하므로 ‘완료하다, 끝내다’라는 뜻의 동 사 conclude의 p.p.형인 (C) concluded가 정답 이다. (A)의 consider는 ‘숙고하다’, (B)의 confront는 ‘직면하다, 맞서다’, (D)의 recommend는 ‘추천하다, 권하다’의 의미이다. 참고로 빈칸 앞의 concluded가 be동사(be)와 만나 ‘완료되다’라는 수동의 의미를 완성한다는 것을 알아둔다. '),
('5q055', 'According to the weather report, the weather report, the severe storm warning will stay in', 'D', 'until midnight', '중', 'matter', 'result', 'contact', 'effect', '일기예보에 따르면, 자정까지 심각한 폭풍 경보가 발효 상태를 유지할 것이다.', '효력을 유지하다 라는 뜻으로 stay in effect가 나올수 있다 따라서 정답은 (D) effect이다.'),
('5q044', 'Info-Pool is a large Internet-based information bank that ', 'B', 'archived electronic journals on a wide variety of topics. ', '상', 'contain ', 'contains ', 'containing ', 'are containing', 'Info-Pool은 다양한 주제들에 관한 보관된 전 자 잡지를 포함하고 있는, 인터넷에 기반을 둔 커다란 정보 은행이다. ', '[동사 자리 채우기 문제] 빈칸 앞의 명사(a large Internet-based information bank)를 꾸며주는 관계절(that _______ archived electronic journals on a wide variety of topics)에 주어(that)만 있고 동사가 없으므로 동사인 (A), (B), (D)가 정답의 후보이 다. 관계절의 주어(that)가 3인칭 단수 선행사(a large Internet-based information bank)를 받고 있으므로 3인칭 단수 동사인 (B) contains가 정 답이다. 준동사 (C)는 동사 자리에 올 수 없다.'),
('5q073', 'After disagreeing for so long over the nature of reform, the two parties', 'B', 'compromised.', '상', 'decided to', 'finally', 'decided on', 'never', '개혁의 본질에 대해 그렇게 오랫동안 의견을 달리하고 나서야 양측은 마침내 타협했다.', 'compromised가 동사의 과거형이므로 A와 C는 부적합하다. 동사 compromised를 수식하는 부사가 필요하다.'),
('5q026', 'Because several customers complained about a device on the manufacturer’s website, the manager took', 'C', 'action and asked the technicians to test the product. ', '중', 'trivial ', 'hesitant ', 'decisive ', 'attentive ', '몇몇 고객들이 제조사의 웹사이트에 있는 장치 에 대해 불평했기 때문에, 관리자는 중대한 행 동을 취하였으며 기술자들에게 제품을 시험해 볼 것을 요청했다. ', '[형용사 어휘 문제] ‘몇몇 고객들이 제조사의 웹사이트에 있는 장 치에 대해 불평했기 때문에, 관리자는 중대한 행동을 취했다’라는 문맥이 되어야 하므로 ‘중 대한, 결정적인’이라는 뜻의 형용사 (C) decisive가 정답이다. 참고로 (A) trivial은 ‘하찮 은, 사소한’, (B) hesitant는 ‘주저하는’, (D)attentive는 ‘세심한, 경청하는’의 의미임을 알 아둔다.'),
('5q066', 'Some products are manufactured to', 'A', 'after one or two years.', '상', 'wear out', 'disintegrate', 'decompose', 'break apart', '어떤 생산품들은 1, 2년후에는 낡아서 쓸 수 없도록 만들어진다.', '만들어진 생산품의 수명을 뜻하는 것이므로 (A)가 적당하다.'),
('5q075', 'Young children, just like older ones,', 'A', 'intellectual stimulation.', '상', 'require', 'submit to', 'demand', 'allow', '어른들과 마찬가지로 어린 아이들도 지적 자극을 필요로 한다', '내용상「필요로 하다」라는 의미의 동사가 필요하다. submit to는「복종하다」, allow는「허락하다」의 의미이며, demand는「강요하다, 요구하다」의 뜻이므로 적합하지 않다.'),
('5q021', 'Housing values had dropped sharply, so even though the house for sale was ', 'B', ' in design and construction, its market price was very low. ', '중', 'inferior', 'outstanding', 'dependent', 'secondary', '주택 가치가 급격히 하락했기 때문에, 팔려고 내놓은 집이 디자인과 구조 면에서 뛰어났을지 라도 그것의 시세는 매우 낮았다. ', '[형용사 어휘 문제]‘주택 가치가 급격히 하락했기 때문에, 팔려고 내놓은 집이 디자인과 구조 면에서 뛰어났을지 라도 그것의 시세는 매우 낮았다’라는 문맥이 되어야 하므로 ‘뛰어난, 현저한, 눈에 띄는’이라는 뜻의 형용사 (B) outstanding이 정답이다. 참고로 (A) inferior는 ‘열등한, 하급의’, (C) dependent는 ‘의지하는’, (D) secondary는 ‘2류 의, 부차적인’의 의미임을 알아둔다.'),
('5q070', 'The capital punishment has been', 'D', 'in many states in the United States.', '상', 'taken care of', 'brought about', 'dismissed', 'done away with', '사형은 미국의 여러주에서 폐지되어가고 있다.', '내용에 어울리는 동사구인 do away with(없애다)가 수동형으로 표현되어야 한다.'),
('5q045', 'Although the electronics shop offers free software installation with a computer purchase, the custom', 'D', '', '상', 'randomly ', 'dependably ', 'diversely ', 'separately ', '비록 전자제품 가게에서 컴퓨터 구매 시 무료 로 소프트웨어 설치를 제공해 줄지라도, 그 고 객은 프로그램을 별도로 설치하는 것을 택했다. ', '[부사 어휘 문제] ‘비록 전자제품 가게에서 컴퓨터 구매 시 무료 로 소프트웨어 설치를 제공해 줄지라도, 그 고 객은 프로그램을 별도로 설치하는 것을 택했다’ 라는 문맥이 되어야 하므로 ‘별도로’라는 뜻의 부사 (D) separately가 정답이다. 참고로 (A) randomly는 ‘무작위로, 임의로’, (B) dependably 는 ‘믿음직하게’, (C) diversely는 ‘다양하게, 다르 게’의 의미임을 알아둔다.'),
('5q038', 'Eagle Technology, the ', 'B', 'software company in the region, is planning to merge with a telecommunications firm within two years. ', '상', 'dominate ', 'dominant ', 'dominantly ', 'dominance ', '그 지역에서 우위를 차지하는 소프트웨어 회사 인 Eagle Technology는 2년 내에 통신 회사와 의 합병을 계획하고 있다. ', '[형용사 자리 채우기 문제] 정관사(the)와 명사(software company)사이에서 명사를 꾸밀 수 있는 것은 형용사이므로 ‘우위 를 차지하는, 지배적인’이라는 뜻의 형용사 (B) dominant가 정답이다. 동사 (A), 부사 (C), 명 사 (D)는 형용사 자리에 올 수 없다. '),
('5q047', '', 'C', 'mail the contract to us or send a scanned copy by next Tuesday at the latest.', '중', 'Neither', 'As', 'Either', 'Yet', '늦어도 다음 주 화요일까지 계약서를 우편으로 보내거나 스캔한 사본을 보내 주십시오.', 'mail ~ or send ~\'로 연결되어 있는 구조 앞에 나올 수 있는 상관접속사 문제로 정답은 Either이다.'),
('5q104', 'The company was nominated for several awards in its field, and this has led to increased investor', 'C', '', '상', 'enthuse', 'enthusiasic', 'enthusiasm', 'enthusiastically', '회사가 그 분야의 여러 상들의 후보로 지명되었고, 이것이 증가된 투자자 열의로 이어졌다', '[명사 자리- 동사의 목적어] 빈칸은 동사 has led to의 목적어 자리로, investor와 함께 복합 명사를 만들어 줄 명사가 들어갈 자리이므로 \'열의\'란 뜻의 명사인enthusiasm이 정답이다.'),
('5q087', 'The senatorial race could be won by either major candidate, according to the most', 'B', 'poll.', '중', 'fragile', 'recent', 'entire', 'consecutive', '가장 최근의 여론 조사에 따르면 상원 의원 선거전에서 주요 두 후보 어느 쪽이든 승리할 수 있다.', '[형용사 어휘] 빈칸은 the most의 수식을 받으며, 뒤에 있는 명사 poll을 수식하는 형용사가 들어갈 자리이다.'),
('5q029', '', 'D', 'the number of guests at the Moonlight Hotel increased this month, the number is still 10 percent less than it was at the same time last year.', '중', 'Since ', 'Among ', 'Excluding ', 'Although ', 'Moonlight Hotel의 투숙객 수가 이번 달에 증 가했음에도 불구하고, 그 수는 여전히 작년 이 맘때 보다 10퍼센트 더 적다. ', '[부사절 접속사 채우기 문제] 이 문장은 주어(the number)와 동사(is), 그리고 보어(10 percent less)를 모두 갖춘 완전한 문장 이므로 ‘_______ the number of guests ~ this month’는 수식어 거품으로 보아야 한다. 이 수 식어 거품은 주어(the number of guests)와 동 사(increased)를 갖춘 거품절이므로 수식어 거 품절을 이끌 수 있는 부사절 접속사 (A), (D)가 정답의 후보이다. ‘Moonlight Hotel의 투숙객 수가 이번 달에 증가했음에도 불구하고, 그 수 는 여전히 작년 이맘때 보다 10퍼센트 더 적 다’라는 문맥이 되어야 하므로 ‘~임에도 불구 하고, 비록 ~이지만’이라는 뜻의 부사절 접속 사 (D) Although가 정답이다. 전치사 (B)와 (C) 는 수식어 거품절을 이끌 수 없다. '),
('5q014', 'Due to the economic crisis, many companies all over the world are', 'B', 'to reduce operating costs next year.', '하', 'expectedly', 'expected', 'expectation', 'expectation', '경제 위기로 인해, 전 세계의 많은 기업들이 다음 해에 운영비를 줄일 것으로 예상된다.', '[태에 맞는 동사 채우기 문제] \'~할 것으로 예상되다\'라는 수도의 의미이므로 be동사(are) 다음에 와서 수동태 동사를 만드는 p.p형인 B가 정답이다.'),
('5q101', 'The Carlyle Research Library houses the most', 'B', 'collection of manuscripts produced by novelist Ann Ortega.', '상', 'extends', 'extensice', 'extended', 'extension', 'Carltle 학술 도서관은 소설가 Ann Ortega에 의해 만들어진 가장 방대한 원고 수집물을 소장하고 있다.', '[형용사 자리 - 명사 수식] 최상급 표현이 ㄴthe most와 명사 collection사이에 빈칸이 있으므로 빈칸에는 명사를 수식해 줄 형용사가 들어가야 한다.'),
('5q037', 'To reduce the amount of time spent on processing loan applications, the bank’s officials ', 'C', 'a procedure that requires the assessment of only one administrator.', '상', 'alleviated ', 'deposited ', 'finalized ', 'equipped ', '대출 신청 과정에 소비되는 시간의 양을 줄이 기 위해, 그 은행 관계자들은 단 한 명의 관리 자의 평가를 필요로 하는 절차를 완성했다. ', '[동사 어휘 문제] ‘대출 신청 과정에 소비되는 시간의 양을 줄이 기 위해, 그 은행 관계자들은 단 한 명의 관리 자의 평가를 필요로 하는 절차를 완성했다’라 는 문맥이 되어야 하므로 ‘완성하다, 끝내다’라 는 뜻의 동사 finalize의 p.p.형인 (C) finalized 가 정답이다. 참고로 (A)의 alleviate는 ‘완화시 키다, 경감시키다’, (B)의 deposit은 ‘예금하다’, (D)의 equip은 ‘장비를 갖추다’의 의미임을 알 아둔다.'),
('5q093', 'The journal article states that the research team\'s', 'B', 'are confirmation of the medication\'s effectiveness.', '중', 'finding', 'findings', 'find', 'found', '그 저널 기사는 연구팀의 결과들이 약물의 효과에 대한 확증이라고 명시한다.', '[명사자리] 빈칸은 앞의 소유격 표현 the research team\'s의 수식을 받는 that절의 주어가 들어갈 자리이므로 뒤에 있는 복수 동사 are와 수가 일치되는 복수 명사인 findings가 정답이다.'),
('5q004', 'To', 'D', 'the repair job on time, the engineer asked the carpenters and electricians to do overtime yesterday.', '하', 'finished', 'finishing', 'finishes', 'finish', '정시에 보수 작업을 마치기 위해, 엔지니어는 어제 목공들과 전기 기사들에게 초과근무를 할것을 부탁했다.', '[to 부정사의 동사원형 채우기 문제] \'To ___ the repair job on time\'은 to 부정사구로 빈칸에는 동사원형이 와야 하며, \'정시에 보수 작업을 마치기 위해\'로 해석된다.'),
('5q071', 'By the start of the next century, some developing countries will', 'A', 'by eight percent a year for twenty years, making them highly competitive.', '상', 'grow', 'grown', 'have growth', 'have been growing', '다음 세기가 시작될 때가 되면 몇몇 개발 도상국들이 20년동안 연간 8퍼센트씩 성장하여 상당한 경쟁력을 갖게 될 것이다.', '단순히 미래의 일을 기술하는 문장이므로 will 다음에 동사의 원형이 오면 된다.'),
('5q074', 'All absentees must', 'B', 'to the personnel office by the end of each day.', '상', 'be reporting', 'report themselves', 'have reported on', 'report in', '모든 결근자는 하루일과가 끝날때까지 인사부에 출두하여야 한다. ', 'report to~ 는「~에 보고하다」는 뜻이고, report oneself to~는「~에 출두하다, 직접가다」는 뜻이다. (A)는 현재진행형으로 must다음에 오기에는 적합치 않다.'),
('5q079', 'Please double-check the inventory list carefully because', 'B', 'must be turned in to the manager today.', '하', 'their', 'it', 'her', 'you', '그 재고 목록은 오늘 관리자에게 제출되어야 하기 때문에 주의 깊게 재확인해주세요.', '[대명사] 빈칸은 because가 이끄는 절의 주어자리이므로, 3인칭 단수 주격 대명사인 it이 정답이다'),
('5q046', 'Ms. Willis opend a small bakery with', 'B', 'own savings last year', '중', 'she', 'her', 'hers', 'herself', '윌리스 씨는 작년에 자신이 저축한 돈으로 작은 제과점을 열었다', 'own(형용사)+saving(명사)\' 앞에서 수식할 수 있는 대명사의 소유격을 고르는 문제로 (B)가 정답이다.'),
('5q098', 'Mr.Mueller was surprised that the suggestion most favored by the management team was in fact', 'A', '', '상', 'his', 'himself', 'him', 'he', 'Mueller 씨는 경영 팀에 의해 가장 선호된 제안이 사실은 자신의 것이었다는 것에 놀랐다.', '[인칭 대명사] 비칸은 be동사 was의 보어가 들어갈 자리이고, 주어가 the suggestion과 동격이 될 수 있는 \'그(자신)의 것\'이라는 뜻의 소유 대명사인 his가 정답이다.'),
('5q091', 'The small business owner decided to use a stock photo database', 'D', 'hire a full-time photographer.', '중', 'for example', 'with regard to', 'in case', 'rather than', '그 소기업 사장은 정규직 사진사를 고용하지 않고 상업용 사진 데이터베이스를 이용하기로 결정했다.', '[등위 접속사] 앞에 제시된 상업용 사진을 이용하는 것과 뒤에 제시된 사진사를 고용하는 것은 대조적인 내용이므로, \'~보다, ~하지않고\'라는 뜻의 등위 접속사인 rather than이 정답이다.'),
('5q015', 'Climate in different parts of the world has become', 'C', 'unpredictable because of global warming.', '하', 'increase', 'increasable', 'increasingly', 'increases', '세계의 서로 다른 지역의 기후는 지구 온난화로 인해 점점 더 예측할 수 없게 되었다.', '[부사 자리 채우기] 빈칸 위에 형용사(unpredictable)가 있으므로 빈칸에는 형용사를 꾸며주는 부사가 올 자리이다.'),
('5q095', 'Ms. Ooshima went ton a business trip to Singapore unexpectedly, so she had to', 'A', 'some of her tasks to her subordinates.', '중', 'delegate', 'complete', 'invest', 'reply', 'Oosima씨가 예기치않게 싱가포르로 출장을 가서 그녀는 자신의 업무들 중 일부를 자신의 부하 직원들에게 위임해야 했다.', '[동사 어휘] 빈칸은 some of her tasks를 목적어로 취하는 동사가 들어갈 자리로, 문맥상 출잘을 간 것과 관련 지어 \'업무 중 일부를 위임해야 했다\'라는 의미로 전개 되는 것이 적절하므로 \'위임하다\'란 뜻의 delegate가 정답이다.'),
('5q039', '', 'A', 'the fast food restaurant open sixteen hours a day requires a staff of at least twenty persons on two separate shifts. ', '상', 'Keeping ', 'Keeps ', 'Kept ', 'Keep ', '패스트푸드 식당을 하루에 16시간 동안 여는 것은 2교대 체제로 최소한 20명의 직원을 필 요로 한다.', '[동명사 채우기 문제] 문장에 주어가 없으므로, 빈칸에는 동사 (requires) 앞에서 ‘the fast food restaurant open sixteen hours a day’를 이끌며 주어 역할 을 할 수 있는 문장 성분이 와야 한다. 주어의 자리에는 명사 역할을 하는 명사구, 대명사, 동 명사구, to 부정사구, 명사절 등이 올 수 있으 므로, 보기 중 동명사구를 완성하는 동명사 (A) Keeping이 정답이다.'),
('5q056', 'I', 'A', 'sales volume would increase this month.', '하', 'wish', 'wish to', 'know', 'think', '나는 이번 달 판매량이 증가하기를 바란다.', '종속절에 would라는 과거형 조동사가 쓰였으므로 주절의 동사도 과거형이 되어야 하는 것이 원칙이나 선택할 수 있는 과거형 동사가 없다. wish 동사 다음에 절이 오는 경우에는 반드시 가정법 동사가 쓰인다는 것을 알고 있으면 된다.'),
('5q059', 'Johnny likes reading, hiking, and', 'C', '', '하', 'to listen to music', 'he listens to music', 'listening to music', 'listen to music', '자니는 독서, 도보 여행, 그리고 음악 감상을 좋아한다.', 'like의 목적어로 reading, hiking 등의 동명사가 나열되어 있다. 따라서 and 다음에도 동명사가 필요하다.'),
('5q042', 'Book Nook is one of the', 'A', 'shops that prohibits customers from reading magazines and books that they do not intend to purchase. ', '상', 'few ', 'much ', 'little ', 'each ', 'Book Nook은 고객들이 구입할 의사가 없는 잡지와 책들을 읽는 것을 금지하는 몇 안 되는 가게들 중 하나이다. ', '[부정 대명사 채우기 문제] 빈칸 뒤에 가산 명사(shops)가 왔으므로 가산 명사와 함께 쓰일 수 있는 수량 형용사 (A)와 (D)가 정답의 후보이다. each는 단수 명사 앞에 와야 하므로 복수 가산 명사 앞에 오는 수량 형용사 (A) few(몇 안 되는, 소수의)가 정답이다. (B)와 (C)는 불가산 명사 앞에만 사용됨을 알아 둔다. '),
('5q009', 'With all the negative reviews about the novel, it seems that the author\'s message was', 'D', 'by literary critics.', '하', 'misinterpret', 'misinterprets', 'misinterpreting', 'misinterpreted', '그 소설에 대한 모든 부정적인 평론으로 보아, 작가의 의도가 문학 비평가들에 의해 제대로 이해되지 않았던 것 같습니다.', '[태에 맞는 동사 채우기 문제] 주어 (the author\'s message)와 동사 (misinterpret)가 \'작가의 의도가 이해되다\'라는 수동의 의미관계이므로 be동사(was) 다음에 와서 수동태 동사를 만드는 (D) minsinterpreted가 정답이다.'),
('5q100', 'Many online retailers may consider', 'C', 'their security measures so that sensitive customer data cannot be stolen.', '상', 'to modify', 'modifies', 'modifying', 'modified', '많은 온라인 소매업체들이 민감한 고객 데이터가 도난당할 수 없도록 자신들의 보안 조치를 변경하는 것을 고려할지 모른다.', '[동명사 자리] 빈칸은 타동사 consider의 목적어 자리로, consider는 동명사를 목적어로 취하는 동사이므로 modifying이 정답이다.'),
('5q054', 'Construction of the new Dalton Insurance headquarters will', 'A', 'be completed by the crew', '중', 'soon', 'timely', 'much', 'highly', '댈턴 보험사의 본사 신축 공사가 작업반에 의해 곧 완료될 것이다.', '빈칸은 동사 무리에 끼어서 동사를 수식해 주는 역할을 하는 부사 자리이다 따라서 답은 (A) soon 이다'),
('5q017', 'The construction crew has', 'B', 'completed renovating the hospital ward, after which new machines for the pediatric center will be be brought in.', '중', 'thereby', 'almost', 'near', 'nowadays', '공사팀은 병동 개조를 거의 마쳤는데, 이후 소아과 센트를 위한 새로운 기계들이 들어올 것이다.', '[부사어휘 문제] \'공사팀은 병동 개조를 거의 마쳤다\'라는 문맥이 되어야 하므로 \'거의\'라는 뜻의 부사 B가 정답이다.'),
('5q048', 'The coupon can be used for any merchandise at Crestview Housewares', 'B', 'custom-made items', '중', 'upon', 'except', 'next', 'by', '크레스트뷰 가정용품 매장에서는 주문 제작한 상품을 제외한 모든 상품에 할인권을 사용할 수 있다.', 'Housewares 뒤에 또 다른 명사(items)가 이어지기 위해서는 그 사이에 전치사가 필요하다 주문 제작한 제품을 \'제외\'한 모든 상품에 대해 할인권을 사용할 수 있다는 의미가 되는 것이 적절하므로 \'~을 제외하고\'의 뜻을 가진 (B) except가 정답이다.'),
('5q102', '', 'B', 'the city planner has finalized the plans for the roadwork, a more accurate estimate can be provided.', '상', 'Upon', 'After', 'Not only', 'Whether', '도시 계획가가 도로 공사를 위한 계획을 마무리 지은후에, 더 정확한 견적이 제공될 수 있다.', '[부사절 접속사] 빈칸은 뒤에 제시된 두 절을 연결해줄 접속사가 들어갈 자리로, 두 절의 내용으로 볼 떄 일의 진행 순서를 나타내줄 접속사가 들어가는 것이 적절함을 알 수 있다.'),
('5q069', 'We skimped and scraped to raise the fund, but at the end of the year our savings were', 'C', 'our target.', '상', 'by no means', 'hardly anywhere', 'nowhere near', 'far from', '우리는 기금을 모으기 위해 절약하고 긁어 모았지만 연말에 우리의 저축액은 목표액에 전혀 미치지 못했다.', '「도저히 ~에 미치지 못하는」의 뜻인 nowhere near ~ 가 가장 적당하다.'),
('5q020', 'During the press conference, the spokesperson did not comment', 'B', 'the measures the government would take with regard to the recent spate of bank failures.', '중', 'in', 'on', 'off', 'for', '기자 회견 동안, 대변인은 최근에 있었던 많은 은행 도산과 관련하여 정부가 취할 조치에 대해 의견을 언급하지 않았다.', '[전치사 채우기 문제] \'기자 회견 동안, 대변인은 은행 도산과 관련하여 정부가 취할 조치에 대해 의견을 언급하지 않았다\'라는 의미가 되어야 하므로 (B) on(~에 대해)가 정답이다.'),
('5q050', 'Northland Rail sells hot drinks and sandwiches', 'C', 'most of its trains', '중', 'into', 'down', 'on', 'out', '노스랜드 철도는 대부분의 열차에서 뜨거운 음료와 샌드위치를 판매한다.', '보통 자동차처럼 작은 공간에서는 \'안쪽\' 이라는 개념으로 전치사 in을 사용하지만 기차처럼 큰 공간에서는 그 공간에 \'접촉\'을 해서 혹은 \'위\'에서 행위가 일어난다고 생각하기 때문에 전치사 on을 쓴다. 따라서 정답은 on이다 '),
('5q013', 'Customers cannot claim their cash remittance', 'A', 'presenting valid identification, such as a driver\'s license and passport.', '하', 'without', 'around', 'onto', 'along', '고객들은 운전 면허증과 여권같은 유효한 신분증을 제시하지 않고 현금 송금을 요구할 수 없습니다.', '[전치사 채우기 문제] \'고객들은 유효한 신분증을 제시하지 않고 송금을 요구할 수 없습니다\'라는 의미가 되어야하므로 빈칸에 적절한 전치사는 (A) without(~하지 않고, ~없이)이다.'),
('5q062', 'This computer isn\' t good for my job, I need', 'B', 'one.', '하', 'some', 'another', 'other\'s', 'any other', '이 컴퓨터는 내 일에 적합하지가 않습니다. 나는 다른 것이 필요합니다.', 'different(다른)라는 뜻을 갖는 말은 another 뿐이다. one은 computer를 대신한다.'),
('5q103', 'The campaign manager believed that Joan Moore\'s writing style fit the needs of the speechwriter role', 'C', '', '상', 'routinely', 'constantly', 'perfectly', 'urgently', '선거 사무장은 Joan Moore의 문체가 연설문 작성자 역할의 필요에 완벽하게 딱 맞는다고 생각했다.', '[부사 어휘] 빈칸은 동사 fit을 수식해줄 부사가 들어갈 자리로, 문맥상 \'완벽하게\'라는 뜻의 perfectly가 정답이다.'),
('5q035', 'Most people had never heard of the book “The Last Thinker”, but it became well-known when a famous c', 'C', 'the author for his unusual writing style. ', '상', 'purchased ', 'decreased ', 'praised ', 'relieved ', '대부분의 사람들은 “The Last Thinker”라는 책 에 관해 전혀 들어본 적 없었지만, 그 책은 한 유명한 비평가가 작가의 특이한 문체에 관해 그를 칭찬하고 난 후 유명해졌다. ', '[동사 어휘 문제] ‘그 책은 한 유명한 비평가가 작가의 특이한 문체에 관해 그를 칭찬하고 난 후 유명해졌다’ 라는 문맥이 되어야 하므로 ‘칭찬하다, 찬미하 다’라는 뜻의 동사 praise의 p.p.형인 (C) praised가 정답이다. 참고로 (A)의 purchase는 ‘구입하다, 획득하다’, (B)의 decrease는 ‘줄다, 감소하다’, (D)의 relieve는 ‘경감하다, 덜다’의 의미임을 알아둔다.'),
('5q083', 'The hospital administrator', 'D', 'the health services of the entire facility to provide patients with excellent care.', '하', 'receives', 'looks', 'predicts', 'oversees', '환자들에게 우수한 간호를 제공하기 위해 병원 관리자는 전체 시설의 의료 서비스들을 감독한다', '[동사 어휘] 빈칸은 문장의 동사가 들어갈 자리로, 문맥상 oversees가 정답이다.'),
('5q052', 'The board members will', 'B', 'decide how to spend the surplus funds\r\n', '중', 'privatize', 'privarely', 'private', 'privacy', '이사진은 잉여 자금을 어떻게 쓸지 비공개로 결정할 예정이다.', '조동사+동사\' 사이에 들어가는 것으로 동사를 수식하는 부사를 고르는 문제이다. 선택지 중 부사는 하나밖에 없으므로 정답은 privately(비공개로,은밀하게) 이다.'),
('5q036', 'The 5-day workshop is aimed at helping artistically-inclined teenagers', 'D', 'artworks that utilize advanced painting techniques. ', '상', 'produced ', 'production ', 'producing ', 'produce ', '5일 간의 연수회는 예술가적 성향이 있는 10 대들이 고급 회화 기법을 이용한 작품을 만들 도록 돕는 것을 목표로 한다. ', '[원형 부정사 채우기 문제] 준 사역동사 help는 ‘help (+ 목적어) + 원형부 정사/to부정사’의 형태로 사용되므로, 원형 부 정사 또는 to 부정사가 와야 한다. 따라서 원 형 부정사인 (D) produce가 정답이다. '),
('5q024', 'After Bronco Corporation revised its project implementation system, it made good', 'D', ' in achieving greater customer satisfaction.', '중', 'progressed ', 'to progress ', 'progressive ', 'progress ', 'Bronco Corporation이 프로젝트 실행 체제를 수정한 후, 회사는 더 큰 고객 만족을 이루는 데 있어 훌륭한 진척을 이루었다. ', '[명사 자리 채우기 문제] 빈칸 앞 형용사(good)의 꾸밈을 받을 수 있는 것은 명사이므로 명사인 (C), (D)가 정답의 후 보이다. ‘Bronco Corporation이 프로젝트 실행 체제를 수정한 후, 회사는 더 큰 고객 만족을 이루는 데 있어 훌륭한 진척을 이루었다’라는 문맥이 되어야 하므로 ‘진척, 진보’라는 뜻의 명사 (D) progress가 정답이다. (C)를 사용할 경 우, ‘회사는 더 큰 고객 만족을 이루는 데 있어 훌륭한 진보론자를 이루었다’라는 어색한 의미 가 된다. 준동사 (A), to 부정사 (B)는 명사 자 리에 올 수 없다.'),
('5q016', 'The food packaging process is', 'B', 'checked by a team of well-trained quality control staff.', '중', 'sensitively', 'carefully', 'prominently', 'importantly', '음식 포장 과정은 잘 훈련된 품질 관리 직원팀에 의해 세심하게 검사된다.', '[문맥상 적절한 부사 채우기 문제] \'잘 훈련된 품질 관리 직원 팀에 의해 ___ 검사된다\'라는 문맥상 \'세심하게(신중하게) 검사된다\'라는 의미가 되어야 자연스러우므로 B가 정답이다.'),
('5q033', 'The architecture firm Builder’s Vision has achieved much', 'D', 'in the industry, particularly for its willingness to mix traditional and modern ideas.', '상', 'recognize ', 'recognized ', 'recognizably ', 'recognition ', '건축 회사 Builder’s Vision은 특히 전통적인 아 이디어와 현대적인 아이디어를 기꺼이 혼합하 려 하는 점에 대해 업계에서 많은 인정을 받았 다. ', '[명사 자리 채우기 문제] 동사(has achieved)의 목적어 자리에 오면서 형 용사(much)의 꾸밈을 받을 수 있는 것은 명사 이므로 ‘인정, 인지’라는 뜻의 명사 (D) recognition이 정답이다. 동사 (A)와 준동사 (B), 부사 (C)는 동사의 목적어 자리에 올 수 없다.'),
('5q040', 'A skin cream formulated by a renowned dermatologist will be offered ', 'B', 'at Landmark Department Store and its branches.', '상', 'thoroughly ', 'exclusively ', 'remarkably ', 'profoundly ', '유명한 피부과 전문의에 의해 만들어진 피부용 크림은 Landmark Department Store와 그 지점 에만 독점적으로 제공될 것입니다.', '[부사 어휘 문제]  ‘유명한 피부과 전문의에 의해 만들어진 피부 용 크림은 Landmark Department Store와 그 지점에만 독점적으로 제공될 것입니다’라는 문 맥이 되어야 하므로 ‘독점적으로, 배타적으로’ 라는 뜻의 부사 (B) exclusively가 정답이다. 참 고로 (A) thoroughly는 ‘완전히, 철저히’, (C) remarkably는 ‘두드러지게, 현저하게’, (D) profoundly는 ‘깊이’의 의미임을 알아둔다.'),
('5q105', 'The database is password protected so that it can only be accessed by employees who are', 'D', 'to use it.', '상', 'complied', 'preferred', 'researched', 'authorized', '그 데이터베이스는 암호로 보호되어있어 그것을 사용할 권한이 있는 직원들에 의해서만 접근될 수 있다.', '[동사 어휘] 빈카은 employees를 수식하는 관계 대명사 who 절에서 be동사 are와 함꼐 수동태 동사를 이루는 과거 분사가 들어갈 자리로, 문맥상 authorize가 정답이다.'),
('5q099', 'Reporters pointed out that', 'C', 'of the remarks made by the company\'s CEO sere incorrect.', '상', 'what', 'other', 'several', 'even', '기자들은 그 회사의 CEO에 의해 이루어진 발언들의 몇몇이 옳지 않았다고 지적했다.', '[대명사 - 수 일치] 빈칸은 뒤에 있는 전치사구의 수식을 받는 that절의 주어가 들어갈 자리로, \'몇몇\'이란 뜻의 several이 정답이다'),
('5q018', 'Automobile factories in areas', 'B', 'affected by heavy rains postponed operations last week.', '중', 'severity', 'severely', 'severest', 'severer', '폭우에 심하게 영향을 받은 지역 내 자동차 공장들은 지난 주 조업을 연기했다.', '[부사 자리 채우기 문제] 빈칸 뒤에 형용사 역할을 하는 분사(affected)가 있으므로 분사를 꾸며주는 부사 B가 정답이다.'),
('5q080', 'Employees need', 'D', 'three years\' experience at their home branch before applying to transfer overseas.', '하', 'even if', 'just as', 'so that', 'at least', '직원들은 해외 전근을 신청하기 전에 국내 지사에서 최소 3년의 경험이 필요하다.', '[최상급 숙어] 빈칸 뒤에 있는 수사 three를 수식할 수 있는 것을 묻는 문제로, \'적어도, 최소한\'이란 뜻의 숙어 at least가 정답이다.'),
('5q092', 'The new cooking classes at the Crestline Institute are aimed', 'C', 'at young adults living on their own for the first time.', '중', 'specify', 'specificity', 'specifically', 'specific', 'Crestiline Institute 의 새로운 요리 강좌들은 처음으로 혼자 생활하는 젊은이들을 특별히 겨냥하였다.', '[부사자리] \'~을 겨냥하다\'라는 뜻의 동사구 are aimed at안에 빈칸이 있으므로 빈칸은 동사구를 수식하는 부사 자리이다.'),
('5q002', 'The most important', 'C', 'in the hiring process are face-to-face interviews with applicants.', '하', 'installments', 'products', 'stages', 'results', '채용 과정에서 가장 중요한 단계는 지원자들과의 일대일 인터뷰이다.', ''),
('5q010', 'The national economy has been', 'A', 'for nearly two years because of the impact of global recession.', '하', 'stagnant', 'stagnancy', 'stagnating', 'stagnantly', '국가 경제는 세계 경제 불황의 영향으로 인해 거의 2년간 침체되어 있었다.', '빈칸은 be동사의 p.p형인 been 다음으로 보어가 될 수 있는 (A)와 (B)중에 \'국가 경제는 ~ 거의 2년간 침체되어 있었다\' 라는 의미가 되어야 하므로 (A)가 정답이다.'),
('5q027', 'Several newspapers published a press release', 'B', 'that the grand opening of the newlyconstructed M?lange Department Store would be postponed. ', '중', 'stated ', 'stating ', 'statement ', 'state ', '몇몇 신문들은 새로 지어진 M?lange Department Store의 대개장이 연기될 것이라 고 설명하는 보도 자료를 내보냈다. ', '[분사구문 채우기 문제] 명사(a press release) 뒤에서 명사를 꾸미는 것 은 분사이므로 과거분사 (A)와 현재분사 (B)가 정답의 후보이다. 분사(state)와 분사의 꾸밈을 받는 명사(a press release)가 ‘M?lange Department Store의 대개장이 연기될 것이라 고 설명하는 보도 자료’라는 능동의 의미 관계 이므로 현재 분사인 (B) stating이 정답이다. 명 사 (C)와 동사 (D)는 명사 뒤에서 명사를 꾸밀 수 없다. 참고로 분사가 명사를 수식하는 경우, 수식 받는 명사와 분사가 능동관계면 현재분사, 수동관계면 과거분사를 쓴다는 것을 알아둔다.'),
('5q089', 'The laboratorty\'s equipment is', 'D', 'cleaned thoroughly after use to avoid cross-contamination between projects.', '중', 'much', 'afterward', 'straight', 'always', '실험실의 장비는 프로젝트들 사이에 교차 오염을 피하게 위해 사용 후에 항상 철저히 청소된다.', '[부사 어휘] 빈칸은 수동태로 제시된 동사를 수식해줄 부사가 들어갈 자리로, 문맥상 \'항상, 늘\'이란 always가 정답이다.'),
('5q077', 'All chemicals at the lab must be', 'C', 'in air-tight containers with clear labels on the front.', '하', 'served', 'estimated', 'stroed', 'resolved', '실험실에 있는 모든 화학 물질은 전면에 명확한 라벨들이 부착된 밀폐 용기에 보관되어야 한다.', '[동사어휘] 빈칸은 앞에 있는 be와 함께 수동태 동사를 이루는 과거분사가 들어갈 자리로, 문맥상 \'보관하다, 저장하다\'의 뜻의 C가 정답이다.'),
('5q007', 'The consultant was impressed that the draftsmen worked efficiently even without the', 'C', 'of a design director.', '하', 'standard', 'correction', 'supervision', 'accuracy', '그 컨설턴트는 제도사들이 설계 감독자의 관리도 없이 효율적으로 일한 것에 감명을 받았다.', '[명사 어휘 문제] \'그 컨설턴드는 제도사들이 설계 감독자의 관리도 없이 효율적으로 일한 것에 감명을 받았다\'라는 의미가 되어야 자연스러우므로 빈칸에 적절한 명사는 (C ) supervision(관리, 감독)이다. '),
('5q051', 'You should', 'C', 'a taxi from Woodley Airport to the hotel when you arrive', '중', 'go', 'tour', 'take', 'travel', '도착하면 우들리 공항에서 호텔까지 택시를 타야 한다.', '교통수단과 함께 쓰이는 동사를 고르는 문제. \'택시, 버스 등을 타다\'라고 할 때는 동사 take를 쓴다'),
('5q064', 'Minneapolis is now', 'C', 'of these two competing cities.', '하', 'the largest', 'the large', 'the larger', 'larger', '미네아폴리스는 이제 경쟁이 되는 이 두 도시 중에서 더 큰 도시이다.', '둘을 비교하여 「둘 중에서 더 ~한」이라고 할 때에는 비교급이라 할지라도 비교급 앞에 정관사 the를 붙인다. '),
('5q006', '', 'A', 'to secure your exprot products, we recommend that you have them insured before shipment. ', '하', 'In order', 'So that', 'Though', 'Because', '귀하의 수출 제품들을 안전하게 하기 위해, 저희는 선적 전에 제품들을 보험에 들어놓을 것을 제안합니다.', '[in order to 채우기 문제] to와 어울려 쓰일 수 있는 것은 (A) in order로 \'in order to\'는 \'~하기 위해\'라는 의미이다.'),
('5q078', 'To open a new account at Columbus Library, a photo ID', 'D', 'proof of address are required.', '하', 'yet', 'so ', 'through', 'and', '콜럼버스 도서관에서 새 계정을 만들려면, 사진이 있는 신분증과 주소를 증명하는 서류가 필요하다.', '[등위 접속사] 빈칸은 앞뒤의 명사구를 연결해 줄 등위 접속사가 들어갈 자리이며 문맥상 and가 정답이다.'),
('5q019', 'Rooms for the Asian curise were', 'C', 'booked because of the special discount offered to corporate groups.', '중', 'totaling', 'totality', 'totally', 'totals', '기업 단체에게 제동되는 특별 할인가 덕분에 아시아 유람선 객실이 전부 예약되었다.', '[부사 자리채우기 문제] 빈칸이 수동태 동사 were booked의 사이에 위치하므로 동사를 꾸며주는 부사가 올 자리이다. 따라서 부사인 C가 정답이다.'),
('5q008', 'Jerry Cunningham will', 'A', 'the names of researchers and production assistants who will join Ms. Marina Fletcher at the Paris Film Festival.', '하', 'announce', 'diffuse', 'trade', 'command', 'Jerry Cunningham은 파리 영화 페스티벌에서 Ms. Marina Fletcher와 함께 할 조사원과 조연출자들의 이름을 발표할 것이다.', '[동사 어휘 문제] \'Jerry Cunningham은 조사원과 조연출자들의 이름을 발표할 것이다.\'라는 의미가 되어야 자연스러우므로 빈칸에 적절한 동사는 (A) announce(발표하다)이다.'),
('5q096', 'As we have had some problems with our distributor, the phone model is', 'C', 'for the next few weeks.', '상', 'occupied', 'rearranged', 'unavailable', 'correct', '저희 유통업체에 약간의 문제가 있었기 때문에, 그 전화 모델은 향후 몇 주 동안 구할 수 없습니다.', '[형용사 어휘] 빈칸은 be동사 is의 보어가 될 형용사가 들어갈 자리로, 문맥상 문제가 있었던 사실과 관련 지어 \'그 모델은 구할 수 없다\'라는 의미로 전개되는 것이 적절하므로 \'구할 수 없는, 이용할 수 없는\'이라는 뜻의 unavailable이 정답이다.'),
('5q034', 'The fashion magazine had to discard a plan to feature an article on a rising clothing designer due t', 'C', 'change in his plans. ', '상', 'advanced ', 'unfamiliar ', 'unexpected ', 'ordinary ', '그의 계획에 있어 예상치 못한 변화 때문에, 그 패션 잡지는 떠오르는 의류 디자이너에 대 한 기사를 특집으로 하려는 계획을 포기해야만 했다.', '[형용사 어휘 문제] ‘그의 계획에 있어 예상치 못한 변화 때문에, 그 패션 잡지는 떠오르는 의류 디자이너에 대 한 기사를 특집으로 하려는 계획을 포기해야만 했다’라는 문맥이 되어야 하므로 ‘예상치 못한, 뜻밖의’라는 뜻의 형용사 (C) unexpected가 정 답이다. 참고로 (A) advanced는 ‘진보한, 전진 한’, (B) unfamiliar는 ‘익숙지 못한’, (D) ordinary 는 ‘정규의, 보통의’의 의미임을 알아둔다.'),
('5q031', 'Transportation charges have increased due to the rising cost of energy, and this has', 'D', 'affected the prices of major commodities such as wheat and rice. ', '상', 'efficiently ', 'formally ', 'usefully ', 'adversely ', '증가하는 에너지 비용으로 인해 교통비가 올랐 으며, 이것은 밀과 쌀 같은 주요 필수품들의 가격에 부정적으로 영향을 미쳤다.', '[부사 어휘 문제] ‘증가하는 에너지 비용으로 인해 교통비가 올 랐으며, 이것은 밀과 쌀 같은 주요 필수품들의 가격에 부정적으로 영향을 미쳤다’라는 문맥이 되어야 하므로 ‘부정적으로, 불리하게’라는 뜻 의 부사 (D) adversely가 정답이다. 참고로 (A) efficiently는 ‘능률적으로, 유효하게’, (B) formally는 ‘정식으로, 형식적으'),
('5q043', 'An employer must provide a ', 'C', 'reason for terminating an employment contract as well as give the employee one month’s notice.', '상', 'chronic ', 'subtle ', 'valid ', 'habitual ', '고용주는 직원에게 반드시 한 달 전에 통지를 해야 할 뿐만 아니라 고용 계약을 끝내는 데 있어 타당한 이유를 제공해야만 한다. ', '[형용사 어휘 문제] ‘고용주는 직원에게 반드시 한 달 전에 통지를 해야 할 뿐만 아니라 고용 계약을 끝내는 데 있어 타당한 이유를 제공해야만 한다’라는 문 맥이 되어야 하므로 ‘타당한, 유효한’이라는 뜻 의 형용사 (C) valid가 정답이다. 참고로 (A) chronic은 ‘만성적인, 버릇이 된’, (B) subtle은 ‘미묘한, 민감한’, (D) habitual은 ‘습관적인, 끊임 없는’의 의미임을 알아둔다.'),
('5q065', 'He is', 'D', 'the fastest runner in his country.', '하', 'enough', 'far', 'very', 'much', '그는 그의 나라에서 가장 빨리 달릴 수 있는 사람이다.', '최상급을 강조할 때는 much, by far, very 등이 쓰인다. very가 쓰일 때에는 「the very+최상급」의 어순이 되는 것에 주의해야 한다. '),
('5q057', 'The old woman appears', 'A', 'beautiful when she was young.', '하', 'to have been', 'to be', 'was', 'have been', '그 나이 든 여자는 젊었을 때는 아름다웠던 것처럼 보인다.', '주절의 시제보다 하나 앞선 시제를 나타낼 때는 완료형 부정사를 쓰게 된다. 이 문장에서는 그 여자가 어렸을 때의 과거 사실을 언급하고 있으므로 to be 가 아니라 to have been의 완료부정사가 쓰여야 한다.'),
('5q085', 'The supplies in the storage room are for everyone, so workers can take', 'C', 'they need.', '하', 'these', 'many', 'whatever', 'that', '보관실에 있는 비품들은 모두를 위한 것이니, 작업자들은 필요한 것은 무엇이든 가져갈 수 있다.', '[복합 관계 대명사] 빈칸에는 뒤에 있는 절(they need)을 이끌어 앞에 있는 동사 take의 목적어 역할을 할 수 있게 만들어줄 명사절 접속사가 필요한데, 빈칸 뒤의 절에 목적어 자리가 비어 있으므로, 명사절을 이끌며 그 자체로 명사절의 목적어 역할을 할 수 있는 복합 관계 대명사가 필요하다.'),
('5q061', 'He inquired of me', 'C', 'she was my sister.', '하', 'that', 'who', 'whether', 'what', '그는 내게 그녀가 내 여동생인지를 물었다.', '전달동사로 inquire(~을 묻다)가 쓰인 것으로 미루어 의문문의 간접화법임을 알 수 있다. 의문사가 없는 의문문의 간접화법에서 쓰이는 접속사는 if나 whether이다.'),
('5q001', '', 'D', 'wishing to attend the company’s monthly luncheon should notify Oprah Winfry before Sep 3rd.', '하', 'Fewer', 'Another', 'Whoever', 'Anyone', '회사의 월례 오찬에 참석하기를 희망하는 분들은 9월 3일 이전에 Oprah Winfry 씨에게 보고해야 한다.', '[대명사 어휘문제] 분사(wishing)나 who 바로 앞의 대명사문제는 anyone과 those 중에서 정답을 골라야 한다.'),
('5q063', 'Art is the representation of', 'A', 'is perceived to be beauty.', '하', 'what', 'which', 'whom', 'that', '예술이란 아름다움으로 인식되어지는 것의 표현이다.', '문맥상 전치사 of의 목적어가 되는 명사절이 와야 하므로, 선행사를 포함한 관계대명사 what이 가능하다. 다른 관계대명사는 모두 형용사절을 이끄는데 반해 what은 명사절을 이끄는 관계대명사이다.'),
('5q072', 'When the crown prince and princess visited this city, the World Fair was', 'D', '', '상', 'into operation', 'of progress', 'with activity', 'in full swing', '황태자 부부가 이 도시를 방문했을때, 세계 박람회가 성황을 이루고 있었다.', 'in full swing 성황을 이루는 into operation은「실시 중에, 시행 중에」 of progress는「진보의」, with activity는「민첩하게」의 뜻이다.'),
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
('jony8112', '2019-10-04', 900, 7),
('jony8112', '2019-10-03', 800, 8),
('jony8112', '2019-10-02', 770, 9),
('sujin11', '2017-02-03', 425, 29),
('sujin11', '2018-07-23', 236, 30),
('sujin11', '2018-12-31', 523, 31),
('sujin11', '2019-06-05', 60, 120),
('jony8112', '2019-10-07', 800, 143);

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
('jony8112', '1110', 'jony', './img/profile/jony.jpg', 576, '2019-04-02 10:16:38', 95, '중'),
('sujin11', '2220', 'sujin', './img/profile/sujin.jpg', 845, '2019-04-10 14:40:16', 40, '하');

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
('w0001', 'instruct', '[ɪnˈstrʌkt]', '지시하다', '중', './img/word/w0001.jpg'),
('w0002', 'compete', '[kəmˈpiːt]\r\n', '경쟁하다', '중', './img/word/w0002.jpg'),
('w0003', 'merchandise', '[[ˈmɜːtʃəndaɪs; -daɪ', '상품', '중', './img/word/w0003.jpg'),
('w0004', 'refund', '[rìːfʌ́nd]\r\n', '환불', '하', './img/word/w0004.jpg'),
('w0005', 'assignment', '[əˈsaɪnmənt]\r\n', '임무, 과제', '중', './img/word/w0005.jpg'),
('w0006', 'specialize', '[ˈspeʃəlaɪz]\r\n', '전문적으로 다루다', '중', './img/word/w0006.jpg'),
('w0007', 'examine', '[ɪɡˈzæmɪn]\r\n', '조사하다', '중', './img/word/w0007.jpg'),
('w0008', 'automoblie', '', '자동차', '중', './img/word/w0008.jpg'),
('w0009', 'advertisement', '[ˌædvərˈtaɪz-]\r\n', '광고', '하', './img/word/w0009.jpg'),
('w0010', 'deduct', '[dɪˈdʌkt]\r\n', '공제하다, 감하다', '상', './img/word/w0010.jpg'),
('w0011', 'purchase', '[ˈpɜːrtʃəs]\r\n', '구매', '중', './img/word/w0011.jpg'),
('w0012', 'appreciate', '[əˈpriːʃieɪt]\r\n', '고맙게 생각하다', '중', './img/word/w0012.jpg'),
('w0013', 'currently', '[ˈkɜːr-]\r\n', '현재', '중', './img/word/w0013.jpg'),
('w0014', 'submit', '[səbˈmɪt]\r\n', '제출하다', '중', './img/word/w0014.jpg'),
('w0015', 'draft', '[dræft]', '원고, 초안', '중', './img/word/w0015.jpg'),
('w0016', 'otherwise', '[ˈʌðərwaɪz]\r\n', '만약 그렇지 않으면', '하', './img/word/w0016.jpg'),
('w0017', 'achievement', '[əˈtʃiːvmənt]\r\n', '업적', '중', './img/word/w0017.jpg'),
('w0018', 'remarkable', '[-ˈmɑːrk-]\r\n', '놀라운', '중', './img/word/w0018.jpg'),
('w0019', 'positively', '[ˈpɑːz-]\r\n', '긍적적으로', '하', './img/word/w0019.jpg'),
('w0020', 'deserve', '[dɪˈzɜːrv]\r\n', '~을 받을만하다', '하', './img/word/w0020.jpg'),
('w0021', 'performance', '[pərˈfɔːrm-]\r\n', '실적, 성과', '중', './img/word/w0021.jpg'),
('w0022', 'recognition', '[ˌrekəɡˈnɪʃn]\r\n', '(공로 등에 대한) 인정', '중', './img/word/w0022.jpg'),
('w0023', 'capability', '[ˌkeɪpəˈbɪləti]\r\n', '능력', '중', './img/word/w0023.jpg'),
('w0024', 'employment', '[ɪmˈplɔɪmənt]\r\n', '고용, 채용', '중', './img/word/w0024.jpg'),
('w0025', 'eventually', '[ɪˈventʃuəli]\r\n', '결국, 궁극적으로', '중', './img/word/w0025.jpg'),
('w0026', 'prescribe', '[prɪˈskraɪb]\r\n', '처방하다, 규정하다', '중', './img/word/w0026.jpg'),
('w0027', 'installation', '[ˌɪnstəˈleɪʃn]\r\n', '설치, 설비 ', '중', './img/word/w0027.jpg'),
('w0028', 'diverse', '[-ˈvɜːrs]\r\n', '다양한', '하', './img/word/w0028.jpg'),
('w0029', 'foreign', '[ˈfɔːrən;ˈfɑːrən]\r\n', '외국의 ', '하', './img/word/w0029.jpg'),
('w0030', 'passenger', '[ˈpæsɪndʒə(r)]\r\n', '승객 ', '하', './img/word/w0030.jpg'),
('w0031', 'venue', '[ˈvenjuː]\r\n', '장소, 발생지, 입장 ', '상', './img/word/w0031.jpg'),
('w0032', 'vaccination', '[væ̀ksənéiʃən]\r\n', '예방 접종', '상', './img/word/w0032.jpg'),
('w0033', 'supervisor', '[ˈsuːpərv-]\r\n', '감독관 ', '중', './img/word/w0033.jpg'),
('w0034', 'allowance', '[əˈlaʊəns]\r\n', '일당, 일급', '중', './img/word/w0034.jpg'),
('w0035', 'trim', '[trɪm]\r\n', '삭감하다, 다듬다 ', '상', './img/word/w0035.jpg'),
('w0036', 'give notice', '', '알리다, 통지하다', '상', './img/word/w0036.jpg'),
('w0037', 'aspiration', '[ˌæspəˈreɪʃn]\r\n', '포부, 열망 ', '상', './img/word/w0037.jpg'),
('w0038', 'publicity', '[pʌbˈlɪsəti]\r\n', '홍보, 선전 ', '상', './img/word/w0038.jpg'),
('w0039', 'fortunate', '[ˈfɔːrtʃ-]\r\n', '행운의 ', '중', './img/word/w0039.jpg'),
('w0040', 'enviable', '[ˈenviəbl]\r\n', '부러운 ', '하', './img/word/w0040.jpg'),
('w0041', 'commodity', '[-ˈmɑːd-]\r\n', '원자재', '중', './img/word/w0041.jpg'),
('w0042', 'private', '[ˈpraɪvət]\r\n', '개인소유의', '상', './img/word/w0042.jpg'),
('w0043', 'immediate', '[ɪˈmiːdiət]\r\n', '즉시의', '하', './img/word/w0043.jpg'),
('w0044', 'share', '[ʃέər]\r\n', '주식, 몫 ', '중', './img/word/w0044.jpg'),
('w0045', 'hazardous', '[-ərdəs]\r\n', '모험적인, 위험한 ', '상', './img/word/w0045.jpg'),
('w0046', 'affluent', '[ˈæfluənt]', '부유한', '상', './img/word/w0046.jpg'),
('w0047', 'fragile', '[ˈfrædʒaɪl]', '깨지기쉬운', '상', './img/word/w0047.jpg'),
('w0048', 'frightening', '[ˈfraɪtnɪŋ]', '무서운', '상', './img/word/w0048.jpg'),
('w0049', 'announcement', '[əˈnaʊnsmənt]', '발표', '상', './img/word/w0049.jpg'),
('w0050', 'influence', '[ˈɪnfluəns]', '영향력', '상', './img/word/w0050.jpg'),
('w0051', 'steadiness', '[stédinis]', '끈기', '상', './img/word/w0051.jpg'),
('w0052', 'provocative', '[-ˈvɑːkə-]', '도발적인', '상', './img/word/w0052.jpg'),
('w0053', 'accomplishment', '[əˈkɑːm-]', '업적', '상', './img/word/w0053.jpg'),
('w0054', 'undoubtedly', '[ʌ̀ndáutidli]', '확실히', '상', './img/word/w0054.jpg'),
('w0055', 'redundant', '[rɪˈdʌndənt]', '불필요한', '상', './img/word/w0055.jpg'),
('w0056', 'courier', '[ˈkʊriə(r)]', '택배회사', '중', './img/word/w0056.jpg'),
('w0057', 'affix', '[afɪ́ks]', '붙이다', '중', './img/word/w0057.jpg'),
('w0058', 'oblige', '[əˈblaɪdʒ]', '강요하다', '중', './img/word/w0058.jpg'),
('w0059', 'discreet', '[dɪˈskriːt]', '신중한', '중', './img/word/w0059.jpg'),
('w0060', 'profit', '[ˈprɑːfɪt]', '수익', '중', './img/word/w0060.jpg'),
('w0061', 'candidate', '[ˈkændɪdət;-deɪt]', '후보자', '중', './img/word/w0061.jpg'),
('w0062', 'occupation', '[ˌɑːk-]', '직업', '중', './img/word/w0062.jpg'),
('w0063', 'critical', '[ˈkrɪtɪkl]', '비판적인', '중', './img/word/w0063.jpg'),
('w0064', 'tense', '[tens]', '긴장한', '중', './img/word/w0064.jpg'),
('w0065', 'urgent', '[ˈɜːrdʒ-]', '긴급한', '중', './img/word/w0065.jpg'),
('w0066', 'chef', '[ʃef]', '주방장', '하', './img/word/w0066.jpg'),
('w0067', 'delete', '[dɪˈliːt]', '삭제하다', '하', './img/word/w0067.jpg'),
('w0068', 'expensive', '[ɪkˈspensɪv]', '비싼', '하', './img/word/w0068.jpg'),
('w0069', 'skill', '[skɪl]', '기술', '하', './img/word/w0069.jpg'),
('w0070', 'depend', '[dipénd]', '의존하다', '하', './img/word/w0070.jpg'),
('w0071', 'beside', '[bɪˈsaɪd]', '~의 옆에', '하', './img/word/w0071.jpg'),
('w0072', 'hardly', '[ˈhɑːrd-]', '거의 ~않는', '하', './img/word/w0072.jpg'),
('w0073', 'closely', '[klóusli]', '밀접하게', '하', './img/word/w0073.jpg'),
('w0074', 'late', '[leɪt]', '늦은, 늦게', '하', './img/word/w0074.jpg'),
('w0075', 'bridge', '[brɪdʒ]', '다리', '하', './img/word/w0075.jpg'),
('w0076', 'calendar', '[ˈkælɪndə(r)]', '달력', '하', './img/word/w0076.jpg'),
('w0077', 'handle', '[ˈhændl]', '다루다, 처리하다', '하', './img/word/w0077.jpg'),
('w0078', 'operate', '[ˈɑːp-]', '작동되다', '하', './img/word/w0078.jpg'),
('w0079', 'function', '[ˈfʌŋkʃn]', '기능', '하', './img/word/w0079.jpg'),
('w0080', 'purpose', '[ˈpɜːrpəs]', '목적', '하', './img/word/w0080.jpg'),
('w0081', 'require', '[rɪˈkwaɪə(r)]', '필요로하다', '하', './img/word/w0081.jpg'),
('w0082', 'afternoon', '[ˌæftərˈn-]', '오후', '하', './img/word/w0082.jpg'),
('w0083', 'agriculture', '[ˈæɡrɪkʌltʃə(r)]', '농업', '하', './img/word/w0083jpg'),
('w0084', 'consumer', '[-ˈsuː-]', '소비자', '하', './img/word/w0084jpg'),
('w0085', 'court', '[kɔːrt]', '법원', '하', './img/word/w0085jpg'),
('w0086', 'ecology', '[iˈkɑːl-]', '생태학', '상', './img/word/w0086.jpg'),
('w0087', 'diverge', '[-ˈvɜːrdʒ]', '갈라지다', '상', './img/word/w0087.jpg'),
('w0088', 'dwelling', '[ˈdwelɪŋ]', '거주, 거처', '상', './img/word/w0088.jpg'),
('w0089', 'endorsement', '[-ˈdɔːrs-]', '(공개적인)지지', '상', './img/word/w0089.jpg'),
('w0090', 'endowment', '[ɪnˈdaʊmənt]', '기부(금)', '상', './img/word/w0090.jpg'),
('w0091', 'inherit', '[ɪnˈherɪt]', '상속하다', '상', './img/word/w0091.jpg'),
('w0092', 'prospect', '[prɑːs-]', '가망', '상', './img/word/w0092.jpg'),
('w0093', 'applicant', '[ˈæplɪkənt]', '지원자', '상', './img/word/w0093.jpg');

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
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
