-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 23-11-17 02:20
-- 서버 버전: 10.4.27-MariaDB
-- PHP 버전: 8.2.0

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
-- 테이블 구조 `_mem`
--

CREATE TABLE `_mem` (
  `num` int(11) NOT NULL,
  `id` char(20) NOT NULL,
  `pass` char(20) NOT NULL,
  `name` char(20) NOT NULL,
  `email` char(80) DEFAULT NULL,
  `regist_day` char(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 테이블의 덤프 데이터 `_mem`
--

INSERT INTO `_mem` (`num`, `id`, `pass`, `name`, `email`, `regist_day`, `level`, `point`) VALUES
(1, 'a', 'a', 'a', 'a', '2023-11-17 (01:28)', 9, 100);

-- --------------------------------------------------------

--
-- 테이블 구조 `_notice`
--

CREATE TABLE `_notice` (
  `num` int(11) NOT NULL,
  `id` char(20) NOT NULL,
  `name` char(20) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text DEFAULT NULL,
  `is_html` char(1) DEFAULT NULL,
  `regist_day` char(20) DEFAULT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- 테이블 구조 `_qna`
--

CREATE TABLE `_qna` (
  `num` int(11) NOT NULL,
  `id` char(20) NOT NULL,
  `name` char(20) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text DEFAULT NULL,
  `is_html` char(1) DEFAULT NULL,
  `regist_day` char(20) DEFAULT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 테이블의 덤프 데이터 `_qna`
--

INSERT INTO `_qna` (`num`, `id`, `name`, `subject`, `content`, `is_html`, `regist_day`, `file_name`, `file_type`, `file_copied`) VALUES
(2, 'a', 'a', 'asd', 'asd', '', '2023-11-17 (02:05)', '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `_qna_ripple`
--

CREATE TABLE `_qna_ripple` (
  `num` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `id` char(20) NOT NULL,
  `name` char(20) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 테이블의 덤프 데이터 `_qna_ripple`
--

INSERT INTO `_qna_ripple` (`num`, `parent`, `id`, `name`, `content`, `regist_day`) VALUES
(1, 1, 'a', 'a', 'zazsdasfasdasdasd', '2023-11-17 (01:48)'),
(2, 1, 'a', 'a', 'asdasdasdasd', '2023-11-17 (01:48)');

-- --------------------------------------------------------

--
-- 테이블 구조 `_youtube`
--

CREATE TABLE `_youtube` (
  `num` int(11) NOT NULL,
  `id` char(20) NOT NULL,
  `name` char(20) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text DEFAULT NULL,
  `is_html` char(1) DEFAULT NULL,
  `regist_day` char(20) DEFAULT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 테이블의 덤프 데이터 `_youtube`
--

INSERT INTO `_youtube` (`num`, `id`, `name`, `subject`, `content`, `is_html`, `regist_day`, `file_name`, `file_type`, `file_copied`) VALUES
(1, 'a', 'a', 'asd', 'asd', '', '2023-11-17 (01:47)', '', '', '');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `_mem`
--
ALTER TABLE `_mem`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `_notice`
--
ALTER TABLE `_notice`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `_qna`
--
ALTER TABLE `_qna`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `_qna_ripple`
--
ALTER TABLE `_qna_ripple`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `_youtube`
--
ALTER TABLE `_youtube`
  ADD PRIMARY KEY (`num`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `_mem`
--
ALTER TABLE `_mem`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 테이블의 AUTO_INCREMENT `_notice`
--
ALTER TABLE `_notice`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 테이블의 AUTO_INCREMENT `_qna`
--
ALTER TABLE `_qna`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 테이블의 AUTO_INCREMENT `_qna_ripple`
--
ALTER TABLE `_qna_ripple`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 테이블의 AUTO_INCREMENT `_youtube`
--
ALTER TABLE `_youtube`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
