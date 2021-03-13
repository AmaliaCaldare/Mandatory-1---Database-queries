CREATE TABLE `contact_info` (
  `id` int(10) NOT NULL,
  `phone_number` int(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `opening_time` time NOT NULL,
  `closing_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `contact_info` (`id`, `phone_number`, `email`, `opening_time`, `closing_time`) VALUES
(1, 2147483647, 'eburrus0@xinhuanet.com', '10:30:00', '18:00:00'),
(2, 1179408575, 'lrubinshtein1@google.fr', '09:00:00', '18:00:00'),
(3, 2147483647, 'haicheson2@squidoo.com', '09:30:00', '17:00:00'),
(4, 2147483647, 'pelliot3@dell.com', '08:00:00', '16:30:00'),
(5, 2147483647, 'hrutley4@digg.com', '09:45:00', '19:45:00');

ALTER TABLE `contact_info`
  ADD PRIMARY KEY (`id`);
COMMIT;