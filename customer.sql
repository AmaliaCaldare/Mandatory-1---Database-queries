CREATE TABLE `customer` (
  `id` int(10) NOT NULL DEFAULT '0',
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone_number` int(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `licence_num` int(20) NOT NULL,
  `address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `customer` (`id`, `first_name`, `last_name`, `phone_number`, `email`, `licence_num`, `address_id`) VALUES
(1, 'Haze', 'Drysdell', 2147483647, 'hdrysdell0@devhub.com', 899414214, 8),
(2, 'Tan', 'Gullyes', 2147483647, 'tgullyes1@house.gov', 2147483647, 5),
(3, 'Barron', 'Gidley', 2147483647, 'bgidley2@dion.ne.jp', 2147483647, 5),
(4, 'Gage', 'Byrom', 2147483647, 'gbyrom3@ucsd.edu', 2147483647, 13),
(5, 'Jon', 'McBain', 2147483647, 'jmcbain4@weather.com', 2147483647, 8),
(6, 'Godfry', 'McLoney', 2147483647, 'gmcloney5@ovh.net', 1383100888, 5),
(7, 'Hasty', 'Bewicke', 2147483647, 'hbewicke6@wisc.edu', 2147483647, 10),
(8, 'Carmine', 'MacElroy', 1286479760, 'cmacelroy7@yellowpages.com', 1947841793, 7),
(9, 'Adrianne', 'Gissing', 2147483647, 'agissing8@amazon.com', 2147483647, 6),
(10, 'Perceval', 'Bangle', 2147483647, 'pbangle9@sciencedaily.com', 2147483647, 7),
(11, 'Ally', 'Trematick', 2147483647, 'atrematicka@comcast.net', 2147483647, 15),
(12, 'Nelly', 'Burger', 2147483647, 'nburgerb@gmpg.org', 2147483647, 6),
(13, 'Cesar', 'Martensen', 2147483647, 'cmartensenc@issuu.com', 2147483647, 10),
(14, 'Leila', 'Baglan', 2147483647, 'lbagland@csmonitor.com', 2147483647, 11),
(15, 'Ginnifer', 'Summergill', 2147483647, 'gsummergille@lycos.com', 1672191076, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address` (`address_id`),
  ADD KEY `name` (`first_name`,`last_name`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
