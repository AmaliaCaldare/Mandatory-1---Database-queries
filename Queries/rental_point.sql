CREATE TABLE `rental_point` (
  `id` int(10) NOT NULL,
  `address_id` int(10) NOT NULL,
  `contact_info_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `rental_point` (`id`, `address_id`, `contact_info_id`) VALUES
(1, 15, 2),
(2, 8, 5),
(3, 3, 2),
(4, 5, 4),
(5, 10, 5);

ALTER TABLE `rental_point`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_id` (`address_id`),
  ADD KEY `contact_info_id` (`contact_info_id`);

ALTER TABLE `rental_point`
  ADD CONSTRAINT `rental_point_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `rental_point_ibfk_2` FOREIGN KEY (`contact_info_id`) REFERENCES `contact_info` (`id`);
COMMIT;