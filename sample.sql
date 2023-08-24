-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 23-08-21 04:32
-- 서버 버전: 10.4.11-MariaDB
-- PHP 버전: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `sample`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `customer`
--

CREATE TABLE `customer` (
  `num` int(11) NOT NULL,
  `name` char(20) NOT NULL,
  `tel` char(15) NOT NULL,
  `address` char(100) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `mileage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `customer`
--

INSERT INTO `customer` (`num`, `name`, `tel`, `address`, `gender`, `age`, `mileage`) VALUES
(1, '홍길동', '01012345678', '수원시 권선구 온정로 72', 'W', 20, 1000),
(2, '김영선', '01036545856', '서울시 중구 소공로 123(충무로1가)', 'W', 35, 2500),
(3, '정기찬', '01089576430', '부산시 동래구 명륜로 123(명륜동, 명륜동 힐스테이트)', 'M', 25, 100),
(4, '박찬호', '01029757847', '광주시 남구 회재로 123(지석동, 지석동 한일베라체 아파트)', 'W', 30, 200),
(5, '이상훈', '01035547846', '광주시 남구 도금마을길 123(도금동)', 'M', 27, 50000),
(6, '장영진', '01043687490', '부산시 영도구 장미계단길 123(봉래동5가)', 'M', 35, 25000),
(7, '박용진', '01089576430', '서울시 은평구  은평로20길 123(응암동, 청송아파트)', 'W', 38, 3800),
(8, '박혜빈', '01043546430', '경기도 성남시 중원구 광명로 123(중앙동)', 'W', 44, 2900),
(9, '김문영', '01054564755', '서울시 송파구 오금로 123(신천동)', 'M', 53, 12500),
(10, '차범수', '01004373432', '대전시 서구 둔산북로 123(둔산동)', 'W', 32, 23500),
(11, '김길수', '01054375456', '경기도 수원시 장안구 파장천로 123(파장동)', 'W', 25, 26500),
(12, '김수정', '01025670998', '대구시 달서구 다산로 123(신당동)', 'M', 27, 2500),
(13, '이성현', '01030857556', '경기도 수원시 팔달구 덕영대로 123(매산로1가)', 'W', 20, 27500),
(14, '유한나', '01030975412', '광주시 서구 염화로31번길 123(화정동)', 'W', 32, 2500),
(15, '이명현', '01034088975', '광주시 서구 상무오월로15번길 123(쌍촌동)', 'M', 46, 32500),
(16, '김영우', '01030987975', '경기도 시흥시 복지로 123(대야동)', 'W', 23, 72500),
(17, '김정은', '01037036003', '광주시 남구 이동길 123(원산동)', 'M', 25, 4300),
(18, '고영지', '01036765764', '서울시 은평구 녹번로7길 123(녹번동)', 'M', 34, 300),
(19, '안철영', '01039576770', '서울시 은평구 서오릉로10길 123(대조동)', 'W', 45, 700),
(20, '김진모', '01039576411', '서울시 구로구 연동로 123(항동)', 'W', 35, 7200),
(21, '김영찬', '01099576433', '부산시 영도구 청학동로 123(청학동)', 'M', 59, 12500),
(22, '김재진', '01037573776', '서울시 중구  충무로 123(충무로3가)', 'W', 35, 32500),
(23, '이현우', '01038957387', '경상남도 김해시 장유로301번길 123(무계동)', 'M', 45, 26600),
(24, '강찬수', '01083956405', '부산시 영도구 까치길 123(청학동)', 'W', 22, 3800),
(25, '지영필', '01089576430', '서울시 영등포구 도신로 123(도림동)', 'M', 21, 24300),
(26, '김진호', '01018976433', '인천시 남동구 논고개로 123(도림동)', 'W', 28, 17500),
(27, '박지은', '01038957643', '경상남도 거창군 거창읍 강양5길 123', 'W', 35, 100),
(28, '이지현', '01057643029', '대구시 달서구 조암로 123(월성동)', 'M', 33, 200),
(29, '강부영', '01089576430', '대구시 동구 옻골로22길 123(둔산동)', 'W', 47, 2500),
(30, '문수영', '01089444098', '대구광역시 동구 둔산로45길 123(방촌동)', 'W', 55, 3300),
(31, '정지연', '01089523050', '전라남도 목포시 동목포길 123(용당동)', 'M', 25, 5600),
(32, '고진길', '01049706430', '서울시 은평구 응암로 123(응암동)', 'W', 23, 8300),
(33, '정명진', '01046676430', '대구광역시 동구 둔산로 123(둔산동)', 'M', 32, 52500),
(34, '유지수', '01089576430', '경상남도 창원시 의창구 읍성로33번길 123(중동)', 'W', 35, 37200),
(35, '신달수', '01043974594', '전라남도 목포시 동부로52번길 123(용당동)', 'W', 44, 25000),
(36, '김영찬', '01045628569', '경상남도 창원시 의창구 중동북로 123(중동)', 'M', 29, 12300);

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`num`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `customer`
--
ALTER TABLE `customer`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
