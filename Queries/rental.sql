CREATE TABLE `rental` (
  `id` int(10) NOT NULL,
  `rental_start` date NOT NULL,
  `rental_end` date NOT NULL,
  `vehicle_id` int(10) NOT NULL,
  `customer_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `rental` (`id`, `rental_start`, `rental_end`, `vehicle_id`, `customer_id`) VALUES
(1, '2021-03-01', '2021-03-08', 8, 8),
(2, '2021-03-08', '2021-03-16', 8, 2),
(3, '2021-03-17', '2021-03-24', 1, 14),
(4, '2021-03-23', '2021-03-24', 1, 15),
(5, '2021-04-22', '2021-04-30', 7, 1),
(6, '2021-03-31', '2021-04-08', 1, 6),
(7, '2021-05-01', '2021-05-06', 10, 15),
(8, '2021-03-17', '2021-03-18', 3, 9),
(9, '2021-03-01', '2021-03-03', 2, 12),
(10, '2021-03-31', '2021-04-02', 8, 7);

ALTER TABLE `rental`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `customer_id` (`customer_id`);

ALTER TABLE `rental`
  ADD CONSTRAINT `rental_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`id`),
  ADD CONSTRAINT `rental_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);
COMMIT;