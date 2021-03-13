CREATE TABLE `address` (
  `id` int(10) NOT NULL DEFAULT '0',
  `street_name` varchar(50) NOT NULL,
  `street_number` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `postal_code` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `address` (`id`, `street_name`, `street_number`, `city`, `country`, `postal_code`) VALUES
(1, 'Daystar', '68', 'Leipzig', 'Germany', 4288),
(2, 'Oak', '380', 'Berlin', 'Germany', 10409),
(3, 'Golf Course', '8', 'Hamburg', 'Germany', 21037),
(4, 'Bayside', '47565', 'Dillenburg', 'Germany', 35687),
(5, 'Loftsgordon', '64', 'München', 'Germany', 80995),
(6, 'Parkside', '177', 'København', 'Denmark', 1156),
(7, 'Golf Course', '57861', 'Kiel', 'Germany', 24109),
(8, 'Harbort', '57969', 'Stuttgart Stuttgart-Mitte', 'Germany', 70180),
(9, 'Kennedy', '79835', 'København', 'Denmark', 1131),
(10, 'Lukken', '72615', 'Hamburg', 'Germany', 20359),
(11, 'Northfield', '39283', 'Chemnitz', 'Germany', 9123),
(12, 'Susan', '7890', 'Dortmund', 'Germany', 44369),
(13, 'Linden', '68', 'München', 'Germany', 81543),
(14, 'Eagle Crest', '59', 'Essen', 'Germany', 45149),
(15, 'Dayton', '6', 'Frederiksberg', 'Denmark', 1823);

ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);
COMMIT;