SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `psw` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `admin` (`aid`, `name`, `psw`) VALUES
(0, 'siddu', 'siddu1234');

CREATE TABLE `venue` (
  `vid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `descr` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `venue` (`vid`, `name`, `price`, `descr`) VALUES
(1, 'Taj Hotel', '100000', 'Beautiful view '),
(2, 'Raj Palace', '90000', 'very good place');

CREATE TABLE `theme` (
  `tid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `descr` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `theme` (`tid`, `name`, `price`, `descr`) VALUES
(1, 'Western theme', '60000', 'looking very good'),
(2, 'Retro theme', '100000', 'wow....!');

CREATE TABLE `photoshop` (
  `pid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `descr` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `photoshop` (`pid`, `name`, `price`, `descr`) VALUES
(1, 'Dslr ', '55000', 'dslr System '),
(2, 'Iphone quality', '5000', 'High level Photography');

CREATE TABLE `music` (
  `mid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `descr` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `music` (`mid`, `name`, `price`, `descr`) VALUES
(1, 'Dj Madric', '25000', 'bhangda'),
(2, 'Dj rahaman', '50000', 'pop');

CREATE TABLE `decoration` (
  `did` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `descr` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `decoration` (`did`, `name`, `price`, `descr`) VALUES
(1, 'NRI Style', '125000', 'good'),
(2, 'Deshi Style', '120000', 'Kadak');

CREATE TABLE `catering` (
  `cid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL,
  `descr` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `catering` (`cid`, `name`, `price`, `descr`) VALUES
(1, 'Punjabi Food', '100000', 'PAji da dhamal'),
(2, 'South Indian Food', '120000', 'Annaji.... ahaaa!'),
(3, 'Maharashtra Food', '120000', 'Kay re Bhava maja alina!');

CREATE TABLE `registration` (
  `reg_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `dname` varchar(30) NOT NULL,
  `dlname` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `pno` varchar(20) NOT NULL,
  `vid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `registration` (`reg_id`, `name`, `dname`, `dlname`, `date`, `pno`, `vid`, `mid`, `cid`, `did`, `tid`, `pid`) VALUES
(1, 'Siddu', 'Shubham', 'sandhya', '2023-02-13', '500', 1, 1, 1, 1, 1, 1);

CREATE TABLE `u_info` (
  `uid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pno` varchar(30) NOT NULL,
  `adds` varchar(30) NOT NULL,
  `psw` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
INSERT INTO `u_info` (`uid`, `name`, `uname`, `email`, `pno`, `adds`, `psw`) VALUES
(1,'siddu','siddu2511','sidduaarya@gmail.com','7387348406','soddi','1234');

ALTER TABLE `catering`
  ADD PRIMARY KEY (`cid`);

ALTER TABLE `decoration`
  ADD PRIMARY KEY (`did`);

ALTER TABLE `music`
  ADD PRIMARY KEY (`mid`);

ALTER TABLE `photoshop`
  ADD PRIMARY KEY (`pid`);

ALTER TABLE `registration`
  ADD PRIMARY KEY (`reg_id`);

ALTER TABLE `theme`
  ADD PRIMARY KEY (`tid`);

ALTER TABLE `u_info`
  ADD PRIMARY KEY (`uid`);

ALTER TABLE `venue`
  ADD PRIMARY KEY (`vid`);

ALTER TABLE `catering`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `decoration`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `music`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `photoshop`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `registration`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `theme`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `u_info`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `venue`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

COMMIT;