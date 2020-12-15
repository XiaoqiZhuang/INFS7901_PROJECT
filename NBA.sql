
CREATE TABLE `Advanced_stat` (
  `Player_ID` int(2) DEFAULT NULL,
  `Season` varchar(7) DEFAULT NULL,
  `Team_Name` varchar(21) DEFAULT NULL,
  `FG%` decimal(4,3) DEFAULT NULL,
  `3P%` decimal(4,3) DEFAULT NULL,
  `2P%` decimal(4,3) DEFAULT NULL,
  `eFG%` decimal(4,3) DEFAULT NULL,
  `FT%` decimal(4,3) DEFAULT NULL,
  `OWS` decimal(3,1) DEFAULT NULL,
  `DWS` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (Player_ID, Season),
  FOREIGN KEY (Player_ID) REFERENCES Player(Player_ID) ON DELETE CASCADE
) ;

INSERT INTO `Advanced_stat` (`Player_ID`, `Season`, `Team_Name`, `FG%`, `3P%`, `2P%`, `eFG%`, `FT%`, `OWS`, `DWS`) VALUES
(1, '2017-18', 'Houston Rockets', '0.449', '0.367', '0.531', '0.541', '0.858', '11.6', '3.8'),
(1, '2018-19', 'Houston Rockets', '0.442', '0.368', '0.528', '0.541', '0.879', '11.4', '3.8'),
(2, '2017-18', 'Houston Rockets', '0.390', '0.371', '0.435', '0.520', '0.717', '1.0', '3.0'),
(2, '2018-19', 'Houston Rockets', '0.396', '0.377', '0.449', '0.535', '0.695', '2.0', '3.0'),
(3, '2017-18', 'Houston Rockets', '0.652', '0.000', '0.653', '0.652', '0.560', '6.2', '4.1'),
(3, '2018-19', 'Houston Rockets', '0.648', '0.000', '0.648', '0.648', '0.636', '7.8', '3.0'),
(4, '2017-18', 'Houston Rockets', '0.460', '0.380', '0.532', '0.550', '0.919', '7.5', '2.7'),
(4, '2018-19', 'Houston Rockets', '0.419', '0.358', '0.479', '0.508', '0.862', '4.4', '2.2'),
(5, '2017-18', 'Houston Rockets', '0.428', '0.359', '0.544', '0.540', '0.809', '2.9', '1.8'),
(5, '2018-19', 'Houston Rockets', '0.409', '0.360', '0.497', '0.525', '0.783', '1.7', '1.0'),
(6, '2017-18', 'Golden State Warriors', '0.488', '0.440', '0.526', '0.585', '0.837', '3.1', '1.8'),
(6, '2018-19', 'Golden State Warriors', '0.467', '0.402', '0.516', '0.553', '0.816', '2.9', '2.3'),
(7, '2017-18', 'Golden State Warriors', '0.454', '0.301', '0.562', '0.516', '0.775', '2.6', '3.4'),
(7, '2018-19', 'Golden State Warriors', '0.445', '0.285', '0.549', '0.501', '0.692', '1.1', '3.2'),
(8, '2017-18', 'Golden State Warriors', '0.495', '0.423', '0.595', '0.618', '0.921', '7.2', '1.9'),
(8, '2018-19', 'Golden State Warriors', '0.472', '0.437', '0.525', '0.604', '0.916', '7.2', '2.5'),
(9, '2017-18', 'Golden State Warriors', '0.470', '0.354', '0.530', '0.530', '0.746', '1.5', '3.2'),
(9, '2018-19', 'Golden State Warriors', '0.480', '0.274', '0.551', '0.515', '0.736', '0.9', '1.5'),
(10, '2017-18', 'Golden State Warriors', '0.516', '0.419', '0.565', '0.586', '0.889', '7.5', '2.9'),
(10, '2018-19', 'Golden State Warriors', '0.521', '0.353', '0.587', '0.571', '0.885', '8.6', '2.9'),
(11, '2017-18', 'Philadelphia 76ers', '0.474', '0.350', '0.509', '0.512', '0.854', '7.1', '1.8'),
(11, '2018-19', 'Philadelphia 76ers', '0.461', '0.338', '0.491', '0.494', '0.868', '4.4', '2.1'),
(12, '2017-18', 'Philadelphia 76ers', '0.551', '0.200', '0.551', '0.551', '0.788', '0.7', '0.3'),
(12, '2018-19', 'Philadelphia 76ers', '0.625', '0.500', '0.634', '0.642', '0.722', '0.9', '0.4'),
(13, '2017-18', 'Philadelphia 76ers', '0.545', '0.000', '0.551', '0.545', '0.560', '4.2', '5.0'),
(13, '2018-19', 'Philadelphia 76ers', '0.563', '0.000', '0.566', '0.563', '0.600', '4.6', '3.6'),
(14, '2017-18', 'Philadelphia 76ers', '0.473', '0.414', '0.501', '0.541', '0.800', '1.6', '1.0'),
(14, '2018-19', 'Philadelphia 76ers', '0.469', '0.326', '0.542', '0.524', '0.841', '1.2', '0.9'),
(15, '2017-18', 'Philadelphia 76ers', '0.499', '0.435', '0.510', '0.531', '0.795', '1.3', '2.5'),
(15, '2018-19', 'Philadelphia 76ers', '0.525', '0.333', '0.546', '0.542', '0.784', '1.2', '1.7'),
(16, '2017-18', 'Boston Celtics', '0.491', '0.408', '0.541', '0.568', '0.889', '6.3', '2.7'),
(16, '2018-19', 'Boston Celtics', '0.487', '0.401', '0.533', '0.557', '0.873', '6.2', '2.9'),
(17, '2017-18', 'Boston Celtics', '0.429', '0.368', '0.467', '0.499', '0.805', '1.1', '2.2'),
(17, '2018-19', 'Boston Celtics', '0.447', '0.375', '0.508', '0.533', '0.844', '2.1', '2.5'),
(18, '2017-18', 'Boston Celtics', '0.395', '0.381', '0.410', '0.491', '0.772', '2.2', '3.4'),
(18, '2018-19', 'Boston Celtics', '0.387', '0.353', '0.422', '0.477', '0.785', '0.9', '2.3'),
(19, '2017-18', 'Boston Celtics', '0.489', '0.429', '0.514', '0.553', '0.783', '4.0', '3.8'),
(19, '2018-19', 'Boston Celtics', '0.535', '0.360', '0.604', '0.586', '0.821', '4.5', '2.9'),
(20, '2017-18', 'Boston Celtics', '0.465', '0.395', '0.507', '0.540', '0.644', '0.6', '0.7'),
(20, '2018-19', 'Boston Celtics', '0.465', '0.344', '0.529', '0.525', '0.658', '0.1', '0.2'),
(21, '2017-18', 'Los Angeles Lakers', '0.489', '0.445', '0.536', '0.603', '0.796', '2.8', '1.4'),
(21, '2018-19', 'Los Angeles Lakers', '0.412', '0.343', '0.537', '0.523', '0.810', '0.2', '0.4'),
(22, '2017-18', 'Los Angeles Lakers', '0.458', '0.371', '0.559', '0.558', '0.919', '1.5', '0.9'),
(22, '2018-19', 'Los Angeles Lakers', '0.434', '0.368', '0.577', '0.560', '0.875', '0.3', '0.3'),
(23, '2017-18', 'Los Angeles Lakers', '0.426', '0.383', '0.473', '0.526', '0.789', '2.6', '2.7'),
(23, '2018-19', 'Los Angeles Lakers', '0.430', '0.347', '0.542', '0.530', '0.867', '2.3', '1.8'),
(24, '2017-18', 'Los Angeles Lakers', '0.468', '0.333', '0.526', '0.518', '0.543', '1.9', '1.7'),
(24, '2018-19', 'Los Angeles Lakers', '0.405', '0.359', '0.428', '0.464', '0.639', '-0.2', '1.5'),
(25, '2017-18', 'Los Angeles Lakers', '0.542', '0.367', '0.603', '0.542', '0.731', '11.0', '3.0'),
(25, '2018-19', 'Los Angeles Lakers', '0.510', '0.339', '0.582', '0.510', '0.665', '4.7', '2.6'),
(26, '2017-18', 'Cleveland Cavaliers', '0.572', '0.143', '0.578', '0.573', '0.570', '2.8', '2.2'),
(26, '2018-19', 'Cleveland Cavaliers', '0.463', '0.355', '0.556', '0.545', '0.600', '0.1', '0.4'),
(27, '2017-18', 'Cleveland Cavaliers', '0.234', '0.156', '0.400', '0.287', '0.818', '-0.3', '0.0'),
(27, '2018-19', 'Cleveland Cavaliers', '0.413', '0.371', '0.448', '0.498', '0.783', '0.3', '0.0'),
(28, '2017-18', 'Cleveland Cavaliers', '0.458', '0.415', '0.494', '0.552', '0.880', '4.7', '1.6'),
(28, '2018-19', 'Cleveland Cavaliers', '0.385', '0.361', '0.412', '0.479', '0.904', '1.0', '0.4'),
(29, '2017-18', 'Cleveland Cavaliers', '0.403', '0.375', '0.453', '0.524', '0.696', '0.6', '0.9'),
(29, '2018-19', 'Cleveland Cavaliers', '0.342', '0.308', '0.375', '0.418', '0.800', '-0.3', '0.1'),
(30, '2017-18', 'Cleveland Cavaliers', '0.562', '0.000', '0.562', '0.562', '0.544', '1.8', '0.7'),
(30, '2018-19', 'Cleveland Cavaliers', '0.529', '0.000', '0.529', '0.529', '0.642', '2.1', '0.5');


CREATE TABLE `Basic_stat` (
  `Player_ID` int(2) DEFAULT NULL,
  `Season` varchar(7) DEFAULT NULL,
  `Rebunds` decimal(3,1) DEFAULT NULL,
  `Assists` decimal(2,1) DEFAULT NULL,
  `Steals` decimal(2,1) DEFAULT NULL,
  `Blocks` decimal(2,1) DEFAULT NULL,
  `Turnovers` decimal(2,1) DEFAULT NULL,
  `Points` decimal(3,1) DEFAULT NULL,
  `Uniform_number` int(2) DEFAULT NULL,
  PRIMARY KEY(Player_ID,Season),
  FOREIGN KEY(Player_ID) REFERENCES Player(Player_ID) ON DELETE CASCADE
) ;



INSERT INTO `Basic_stat` (`Player_ID`, `Season`, `Rebunds`, `Assists`, `Steals`, `Blocks`, `Turnovers`, `Points`, `Uniform_number`) VALUES
(1, '2017-18', '5.4', '8.8', '1.8', '0.7', '4.4', '30.4', 13),
(1, '2018-19', '6.6', '7.5', '2.0', '0.7', '5.0', '36.1', 13),
(1, '2019-20', '99', '99', '99', '99', '0', '99', 13),
(2, '2017-18', '5.6', '0.9', '1.0', '0.3', '0.9', '6.1', 4),
(2, '2018-19', '5.8', '1.2', '1.6', '0.5', '0.8', '7.3', 17),
(3, '2017-18', '10.8', '0.9', '0.8', '1.9', '1.4', '13.9', 15),
(3, '2018-19', '12.7', '1.4', '0.7', '1.5', '1.4', '16.6', 15),
(4, '2017-18', '5.4', '7.9', '1.7', '0.2', '2.2', '18.6', 3),
(4, '2018-19', '4.6', '8.2', '2.0', '0.3', '2.6', '15.6', 3),
(5, '2017-18', '2.5', '2.2', '0.6', '0.4', '1.9', '18.0', 10),
(5, '2018-19', '2.2', '1.9', '0.6', '0.4', '1.3', '16.2', 10),
(6, '2017-18', '3.8', '2.5', '0.8', '0.5', '1.8', '20.0', 11),
(6, '2018-19', '3.8', '2.4', '1.1', '0.6', '1.5', '21.5', 11),
(7, '2017-18', '7.6', '7.3', '1.4', '1.3', '2.9', '11.0', 23),
(7, '2018-19', '7.3', '6.9', '1.4', '1.1', '2.6', '7.4', 23),
(8, '2017-18', '5.1', '6.1', '1.6', '0.2', '3.0', '26.4', 30),
(8, '2018-19', '5.3', '5.2', '1.3', '0.4', '2.8', '27.3', 30),
(9, '2017-18', '12.9', '5.4', '1.6', '1.6', '5.0', '25.2', 0),
(9, '2018-19', '8.2', '3.6', '1.3', '1.5', '2.4', '16.3', 0),
(10, '2017-18', '6.8', '5.4', '0.7', '1.8', '3.0', '26.4', 35),
(10, '2018-19', '6.4', '5.9', '0.7', '1.1', '2.9', '26.0', 35),
(11, '2017-18', '5.3', '4.9', '2.0', '0.4', '1.8', '22.2', 21),
(11, '2018-19', '5.3', '4.0', '1.8', '0.5', '1.5', '18.2', 23),
(12, '2017-18', '4.4', '0.4', '0.3', '0.3', '0.7', '5.9', 51),
(12, '2018-19', '5.1', '1.5', '0.2', '0.5', '1.0', '6.2', 51),
(13, '2017-18', '8.1', '8.2', '1.7', '0.9', '3.4', '15.8', 25),
(13, '2018-19', '8.8', '7.7', '1.4', '0.8', '3.5', '16.9', 25),
(14, '2017-18', '6.0', '2.0', '0.7', '0.6', '1.1', '19.3', 34),
(14, '2018-19', '7.9', '2.9', '0.4', '0.5', '1.6', '18.2', 33),
(15, '2017-18', '3.0', '4.0', '1.2', '0.2', '1.5', '6.3', 12),
(15, '2018-19', '2.3', '3.4', '1.0', '0.2', '1.2', '6.4', 12),
(16, '2017-18', '3.8', '5.1', '1.1', '0.3', '2.3', '24.4', 2),
(16, '2018-19', '5.0', '6.9', '1.5', '0.5', '2.6', '23.8', 11),
(17, '2017-18', '5.4', '1.3', '0.6', '0.3', '1.2', '13.6', 13),
(17, '2018-19', '6.1', '1.5', '0.6', '0.2', '1.2', '13.9', 13),
(18, '2017-18', '4.7', '2.9', '1.0', '0.3', '1.0', '11.3', 12),
(18, '2018-19', '3.9', '2.9', '0.9', '0.2', '0.9', '9.0', 12),
(19, '2017-18', '7.4', '4.7', '0.6', '1.1', '1.8', '12.9', 42),
(19, '2018-19', '6.7', '4.2', '0.9', '1.3', '1.5', '13.6', 42),
(20, '2017-18', '4.9', '1.6', '1.0', '0.4', '1.8', '14.5', 7),
(20, '2018-19', '4.2', '1.4', '0.9', '0.4', '1.3', '13.0', 7),
(21, '2017-18', '2.5', '1.5', '0.8', '0.2', '0.8', '11.3', 25),
(21, '2018-19', '2.6', '1.1', '0.8', '0.4', '0.6', '9.3', 35),
(22, '2017-18', '4.3', '1.0', '0.6', '0.5', '0.8', '7.6', 31),
(22, '2018-19', '2.6', '0.8', '0.2', '0.6', '0.3', '5.9', 31),
(23, '2017-18', '5.2', '2.2', '1.4', '0.2', '1.3', '13.4', 1),
(23, '2018-19', '2.9', '1.3', '0.9', '0.2', '0.8', '11.4', 1),
(24, '2017-18', '4.0', '8.2', '1.1', '0.2', '2.3', '8.3', 9),
(24, '2018-19', '5.3', '8.0', '1.2', '0.2', '2.8', '9.2', 9),
(25, '2017-18', '8.6', '9.1', '1.4', '0.9', '4.2', '27.5', 23),
(25, '2018-19', '8.5', '8.3', '1.3', '0.6', '3.6', '27.4', 23),
(26, '2017-18', '6.8', '1.5', '0.6', '1.4', '1.1', '8.8', 31),
(26, '2018-19', '5.1', '1.0', '0.5', '0.8', '0.9', '5.6', 31),
(27, '2017-18', '0.8', '0.8', '0.2', '0.0', '0.4', '3.0', 20),
(27, '2018-19', '1.9', '2.3', '0.7', '0.1', '0.9', '8.5', 20),
(28, '2017-18', '9.3', '1.7', '0.7', '0.4', '1.5', '17.6', 0),
(28, '2018-19', '10.9', '2.2', '0.3', '0.2', '1.9', '17.0', 0),
(29, '2017-18', '2.9', '1.8', '0.9', '0.1', '1.0', '8.3', 5),
(29, '2018-19', '1.6', '1.9', '1.0', '0.3', '1.0', '6.7', 5),
(30, '2017-18', '6.6', '0.6', '0.3', '0.3', '0.7', '5.8', 13),
(30, '2018-19', '10.2', '2.0', '0.7', '0.4', '1.4', '10.9', 13);

CREATE TABLE `Boss` (
  `Employee_ID` int(2) DEFAULT NULL,
  `Company` varchar(34) DEFAULT NULL,
  FOREIGN KEY(Employee_ID) REFERENCES Employee(Employee_ID) ON DELETE CASCADE
);


INSERT INTO `Boss` (`Employee_ID`, `Company`) VALUES
(4, 'Landry s'),
(10, 'Kleiner Perkins'),
(12, 'Investor group'),
(19, 'Boston Basketball Partner Company'),
(22, 'Los Angeles Lakers'),
(26, 'The Goodyear Tire & Rubber Company');


CREATE TABLE `Coach` (
  `Employee_ID` int(2) DEFAULT NULL,
  `Position` varchar(18) DEFAULT NULL,
  FOREIGN KEY(Employee_ID) REFERENCES Employee(Employee_ID) ON DELETE CASCADE
) ;



INSERT INTO `Coach` (`Employee_ID`, `Position`) VALUES
(2, 'main coach'),
(3, 'assistant coach'),
(7, 'main coach'),
(8, 'assistant coach'),
(9, 'Player Development'),
(11, 'main coach'),
(13, 'assistant coach'),
(16, 'main coach'),
(18, 'assistant coach'),
(21, 'main coach'),
(23, 'assistant coach'),
(25, 'main coach'),
(27, 'assistant coach');


CREATE TABLE `Employee` (
  `Team_Name` varchar(21) DEFAULT NULL,
  `Employee_ID` int(2) DEFAULT NULL,
  `Ename` varchar(20) DEFAULT NULL,
  PRIMARY KEY(Employee_ID),
  FOREIGN KEY(Team_Name) REFERENCES Team(Team_Name) ON DELETE CASCADE
) ;



INSERT INTO `Employee` (`Team_Name`, `Employee_ID`, `Ename`) VALUES
('Houston Rockets', 1, 'Daryl Morey'),
('Houston Rockets', 2, 'Mike D Antoni'),
('Houston Rockets', 3, 'Matt Brase'),
('Houston Rockets', 4, 'Tilman Fertitta'),
('Houston Rockets', 5, 'Clutch the Bear'),
('Golden State Warriors', 6, 'Robert Myers'),
('Golden State Warriors', 7, 'Steve Kerr'),
('Golden State Warriors', 8, 'Ron Adams'),
('Golden State Warriors', 9, 'Willie Green '),
('Golden State Warriors', 10, 'Joe Lacob'),
('Philadelphia 76ers', 11, 'Brett William Brown'),
('Philadelphia 76ers', 12, 'Joshua Harris'),
('Philadelphia 76ers', 13, 'Chad Eske'),
('Philadelphia 76ers', 14, 'Daniel Ray Ainge'),
('Philadelphia 76ers', 15, 'Franklin'),
('Boston Celtics', 16, 'Bradley Kent Stevens'),
('Boston Celtics', 17, 'Daniel Ray Ainge'),
('Boston Celtics', 18, 'Jamie Young'),
('Boston Celtics', 19, 'Wyc Grousbeck'),
('Boston Celtics', 20, 'Leprechaun'),
('Los Angeles Lakers', 21, 'Brian Shaw'),
('Los Angeles Lakers', 22, 'Jeanie Buss'),
('Los Angeles Lakers', 23, 'Brian Keefe'),
('Los Angeles Lakers', 24, 'Rob Pelinka'),
('Cleveland Cavaliers', 25, 'Larry Drew'),
('Cleveland Cavaliers', 26, 'Frank Seiberling'),
('Cleveland Cavaliers', 27, 'Damon Jones'),
('Cleveland Cavaliers', 28, 'Koby Altman'),
('Cleveland Cavaliers', 29, 'moon dog');



CREATE TABLE `Manager` (
  `Employee_ID` int(2) DEFAULT NULL,
  `Time_in_job` int(2) DEFAULT NULL,
  FOREIGN KEY(Employee_ID) REFERENCES Employee(Employee_ID) ON DELETE CASCADE
) ;



INSERT INTO `Manager` (`Employee_ID`, `Time_in_job`) VALUES
(1, 12),
(6, 7),
(14, 1),
(17, 16),
(24, 2),
(28, 2);



CREATE TABLE `Mascot` (
  `Employee_ID` int(2) DEFAULT NULL,
  `Appearance` varchar(8) DEFAULT NULL,
  FOREIGN KEY(Employee_ID) REFERENCES Employee(Employee_ID) ON DELETE CASCADE
) ;


INSERT INTO `Mascot` (`Employee_ID`, `Appearance`) VALUES
(5, 'Bear'),
(15, 'Blue dog'),
(20, 'Fairy'),
(29, 'Dog');



CREATE TABLE `Player` (
  `Team_Name` varchar(21) DEFAULT NULL,
  `Player_ID` int(2) DEFAULT NULL,
  `Player_name` varchar(24) DEFAULT NULL,
  `Player_Age` int(2) DEFAULT NULL,
  `Nationality` varchar(18) DEFAULT NULL,
  `Salary` int(8) DEFAULT NULL,
  `Position` varchar(2) DEFAULT NULL,
  PRIMARY KEY(Player_ID),
  FOREIGN KEY(Team_Name) REFERENCES Team(Team_Name) ON DELETE CASCADE
) ;



INSERT INTO `Player` (`Team_Name`, `Player_ID`, `Player_name`, `Player_Age`, `Nationality`, `Salary`, `Position`) VALUES
('Houston Rockets', 1, 'James Harden', 29, 'America', 30431854, 'SG'),
('Houston Rockets', 2, 'P.J. Tucker', 33, 'America', 7969537, 'PF'),
('Houston Rockets', 3, 'Clint Capela', 24, 'Swiss', 15293104, 'C'),
('Houston Rockets', 4, 'Chris Paul', 33, 'America', 35654150, 'PG'),
('Houston Rockets', 5, 'Eric Gordon', 30, 'America', 13500375, 'SF'),
('Golden State Warriors', 6, 'Klay Thompson', 28, 'America', 18988725, 'SG'),
('Golden State Warriors', 7, 'Draymond Green', 28, 'America', 17469565, 'PF'),
('Golden State Warriors', 8, 'Stephen Curry', 30, 'America', 37457154, 'PG'),
('Golden State Warriors', 9, 'DeMarcus Cousins', 28, 'America', 533700, 'C'),
('Golden State Warriors', 10, 'Kevin Durant', 30, 'America', 30000000, 'PF'),
('Philadelphia 76ers', 11, 'Jimmy Butler', 29, 'America', 19301070, 'SG'),
('Philadelphia 76ers', 12, 'Boban Marjanovic', 30, 'Serbia', 7000000, 'C'),
('Philadelphia 76ers', 13, 'Ben Simmons', 22, 'Australia', 6168840, 'SF'),
('Philadelphia 76ers', 14, 'Tobias Harris', 26, 'America', 16000000, 'PF'),
('Philadelphia 76ers', 15, 'Timothy John McConnell', 27, 'America', 1471382, 'PG'),
('Boston Celtics', 16, 'Kyrie Andrew Irving', 27, 'Australia', 18868625, 'PG'),
('Boston Celtics', 17, 'Marcus Morris', 29, 'America', 5000000, 'SF'),
('Boston Celtics', 18, 'Terry William Rozier', 25, 'America', 1988520, 'PG'),
('Boston Celtics', 19, 'Alfred Joel Horford', 32, 'Dominican Republic', 27734405, 'PF'),
('Boston Celtics', 20, 'Jaylen Marselles Brown', 24, 'America', 4956480, 'SG'),
('Los Angeles Lakers', 21, 'Reggie Bullock', 28, 'America', 2500000, 'SG'),
('Los Angeles Lakers', 22, 'Mike Muscala', 28, 'America', 5000000, 'PF'),
('Los Angeles Lakers', 23, 'Kentavious Caldwell-Pope', 26, 'America', 12000000, 'SG'),
('Los Angeles Lakers', 24, 'Rajon Rondo', 33, 'America', 9000000, 'PG'),
('Los Angeles Lakers', 25, 'LeBron James', 35, 'America', 35654000, 'SF'),
('Cleveland Cavaliers', 26, 'John Henson', 29, 'America', 11327466, 'C'),
('Cleveland Cavaliers', 27, 'Brandon Knight', 28, 'America', 14631250, 'PG'),
('Cleveland Cavaliers', 28, 'Kevin Love', 31, 'America', 24119025, 'PF'),
('Cleveland Cavaliers', 29, 'J.R. Smith', 34, 'America', 14720000, 'SG'),
('Cleveland Cavaliers', 30, 'Tristan Thompson', 28, 'Canada', 17469565, 'C');



CREATE TABLE `Team` (
  `Team_Name` varchar(22) DEFAULT NULL,
  `City` varchar(32) DEFAULT NULL,
  `Team_Area` varchar(4) DEFAULT NULL,
  `Rank` int(2) DEFAULT NULL,
  PRIMARY KEY(Team_Name)
) ;



INSERT INTO `Team` (`Team_Name`, `City`, `Team_Area`, `Rank`) VALUES
('Atlanta Hawks', 'Atlanta, Georgia', 'EAST', 12),
('Boston Celtics', 'Boston,  Massachuselts', 'EAST', 4),
('Brooklyn Nets', 'Brooklyn, New York', 'EAST', 6),
('Charlotte Hornets', 'Charlotte, North Carolina', 'EAST', 9),
('Chicago Bulls', 'Chicago, lllinois', 'EAST', 13),
('Cleveland Cavaliers', 'Cleveland, Ohio', 'EAST', 14),
('Dallas Mavericks', 'Dallas, Texas', 'WEST', 14),
('Denver Nuggets', 'Denver,  Colorado', 'WEST', 2),
('Detroit Pistons', 'Detroit,  Michigan', 'EAST', 8),
('Golden State Warriors', 'Oakland, California', 'WEST', 1),
('Houston Rockets', 'Houston, Texas', 'WEST', 4),
('Indiana Pacers', 'Indianapolis,  Indiana', 'EAST', 5),
('Los Angeles Clippers', 'Los Angeles, California', 'WEST', 8),
('Los Angeles Lakers', 'Los Angeles, California', 'WEST', 10),
('Memphis Grizzlies', 'Memphis, Tennessee', 'WEST', 12),
('Miami Heat', 'Miami, Florida', 'EAST', 10),
('Milwaukee Bucks', 'Milwaukee, Wisconsin', 'EAST', 1),
('Minnesota Timberwolves', 'Minneapolis, Minnesota', 'WEST', 11),
('New Orleans Pelicans', 'New Orleans, Louisiana', 'WEST', 13),
('New York Knicks', 'New York,  New York', 'EAST', 15),
('Oklahoma City Thunder', 'Oklahoma City, Oklahoma', 'WEST', 6),
('Orlando Magic', 'Orlando, Florida', 'EAST', 7),
('Philadelphia 76ers', 'Philadelphia, Pennsylvania', 'EAST', 3),
('Phoenix Suns', 'Phoenix, Arizona', 'WEST', 15),
('Portland Trail Blazers', 'Portland, Oregon', 'WEST', 3),
('Sacramento Kings', 'Sacramento,  California', 'WEST', 9),
('San Antonio Spurs', 'San Antonio,  Texas', 'WEST', 7),
('Toronto Raptors', 'Toronto, Canada', 'EAST', 2),
('Utah Jazz', 'Salt Lake City, Utah', 'WEST', 5),
('Washington Wizards', 'Washington, District of Columbia', 'EAST', 11);



CREATE TABLE `Teamstat` (
  `Team_Name` varchar(21) DEFAULT NULL,
  `Season` varchar(7) DEFAULT NULL,
  `Average_attack` decimal(4,1) DEFAULT NULL,
  `Average_defense` decimal(4,1) DEFAULT NULL,
  PRIMARY KEY(Team_Name, Season),
  FOREIGN KEY(Team_Name) REFERENCES Team(Team_Name) ON DELETE CASCADE
) ;



INSERT INTO `Teamstat` (`Team_Name`, `Season`, `Average_attack`, `Average_defense`) VALUES
('Houston Rockets', '2017-18', '112.4', '103.9'),
('Houston Rockets', '2018-19', '113.9', '109.1'),
('Golden State Warriors', '2017-18', '113.5', '107.5'),
('Golden State Warriors', '2018-19', '117.7', '111.2'),
('Philadelphia 76ers', '2017-18', '109.8', '105.3'),
('Philadelphia 76ers', '2018-19', '115.2', '112.5'),
('Boston Celtics', '2017-18', '104.0', '100.4'),
('Boston Celtics', '2018-19', '112.4', '108.0'),
('Los Angeles Lakers', '2017-18', '108.1', '109.6'),
('Los Angeles Lakers', '2018-19', '111.8', '113.5'),
('Cleveland Cavaliers', '2017-18', '110.9', '109.9'),
('Cleveland Cavaliers', '2018-19', '104.5', '114.1');

CREATE TABLE Player_history (
  `Team_Name` varchar(21) DEFAULT NULL,
  `Player_ID` int(2) DEFAULT NULL,
  `Player_name` varchar(24) DEFAULT NULL,
  `Player_Age` int(2) DEFAULT NULL,
  `Nationality` varchar(18) DEFAULT NULL,
  `Salary` int(8) DEFAULT NULL,
  `Position` varchar(2) DEFAULT NULL
) ;

CREATE TABLE users
( username varchar(255), 
email varchar(255),
password varchar(255),
PRIMARY KEY (username) 
);

CREATE TRIGGER update_player AFTER update ON Player
begin
	INSERT INTO Player_history values(old.Team_Name,old.Player_ID,old.Player_name,old.Player_Age,old.Nationality,old.Salary,old.Position);
    end

PRAGMA foreign_keys = ON