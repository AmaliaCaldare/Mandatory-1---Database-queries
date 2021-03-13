CREATE TABLE `vehicle_image` (
  `id` int(10) NOT NULL,
  `vehicle_id` int(10) NOT NULL,
  `source` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `vehicle_image` (`id`, `vehicle_id`, `source`) VALUES
(1, 2, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAA'),
(2, 10, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAA'),
(3, 10, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAA'),
(4, 7, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAA'),
(5, 7, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAA'),
(6, 4, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAA'),
(7, 4, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAA'),
(8, 8, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAA'),
(9, 6, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAA'),
(10, 4, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAA');

ALTER TABLE `vehicle_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

ALTER TABLE `vehicle_image`
  ADD CONSTRAINT `vehicle_image_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`id`);
COMMIT;