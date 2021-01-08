
CREATE SCHEMA myflaskapp;
USE myflaskapp;

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idno` varchar(30) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8;


INSERT INTO `students` (`id`, `idno`, `firstname`, `lastname`, `gender`, `course`, `year`, `create_date`) VALUES
(6, '2018-5829', 'Zia Mae', 'Beveridge', 'Female', 'BS Computer Science', 3, '2020-10-19 13:19:38'),
(7, '2018-5830', 'Mersan', 'Canonigo', 'Male', 'BS Computer Science', 3, '2020-10-19 13:19:52');
COMMIT;



DROP TABLE IF EXISTS `userlogin`;
CREATE TABLE IF NOT EXISTS `userlogin` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;


INSERT INTO `userlogin` (`userid`, `name`, `email`, `username`, `password`, `register_date`) VALUES
(9, 'Zia Abella', 'abellazia17@gmail.com', 'ziamaea', '$5$rounds=535000$V/eBVbPCk1FqYe3/$eJjwFF7D98gP1Vea1YUHPrnFejxaw8bYMpVG30ae/zD', '2020-10-18 14:56:09'),
(10, 'Andre', 'isaiahandre.pabillon@g.msuiit.edu.ph', 'isaiahandre', '$5$rounds=535000$bw/hfZGaIP8ZYkbN$OXfxOaDwzMLsH/BPX515ls5/Ho.Ld2CdhC9QR4AGTO.', '2020-10-19 17:23:03');
COMMIT;

