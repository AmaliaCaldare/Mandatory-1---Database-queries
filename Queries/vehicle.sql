CREATE TABLE `vehicle` (
  `id` int(10) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `number_plate` varchar(10) NOT NULL,
  `vehicle_type_id` int(10) NOT NULL,
  `rental_point_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `vehicle` (`id`, `brand`, `model`, `description`, `price`, `number_plate`, `vehicle_type_id`, `rental_point_id`) VALUES
(1, 'Ford', 'Explorer Sport', 'Annular pancreas', 1302, 'AB123VG', 3, 2),
(2, 'Buick', 'Skyhawk', 'Adhesions and ankylosis of right temporomandibular', 505, 'AS37553', 4, 1),
(3, 'Ford', 'Crown Victoria', 'Other serum reaction due to administration of bloo', 945, 'WBAVD1354', 3, 5),
(4, 'Chevrolet', 'Impala', 'Other physeal fracture of upper end of radius, lef', 1691, '2DN070', 1, 4),
(5, 'Isuzu', 'Ascender', 'Central cord syndrome at C8 level of cervical spin', 1193, 'KG3A2', 4, 3),
(6, 'Mazda', 'Mazda5', 'Laceration without foreign body of penis, subseque', 885, 'ML44E15', 3, 4),
(7, 'Buick', 'Somerset', 'Underdosing of other nonsteroidal anti-inflammator', 595, 'FL6AA90', 4, 3),
(8, 'Porsche', '911', 'Subacute combined degeneration of spinal cord in d', 527, 'EBU5JR', 3, 1),
(9, 'Kia', 'Rio', 'Intestine transplant rejection', 645, '1C4AJ', 1, 2),
(10, 'Toyota', 'Yaris', 'Foreign body in left ear, initial encounter', 1331, '1D4SE6', 2, 5);

ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_type_id` (`vehicle_type_id`),
  ADD KEY `rental_point_id` (`rental_point_id`);
  
ALTER TABLE `vehicle`
  ADD CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_type` (`id`),
  ADD CONSTRAINT `vehicle_ibfk_2` FOREIGN KEY (`rental_point_id`) REFERENCES `rental_point` (`id`);
COMMIT;