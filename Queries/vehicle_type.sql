CREATE TABLE `vehicle_type` (
  `id` int(10) NOT NULL,
  `label` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `vehicle_type` (`id`, `label`) VALUES
(1, 'sedan'),
(2, 'coupe'),
(3, 'hatchback'),
(4, 'suv');

ALTER TABLE `vehicle_type`
  ADD PRIMARY KEY (`id`);
COMMIT;