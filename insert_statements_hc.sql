delete from SEASON;
insert into SEASON (seasonName, seasonCoefficient, startDate, endDate) values ('Christmas', 0.2, '2020-12-20', '2020-12-30');
insert into SEASON (seasonName, seasonCoefficient, startDate, endDate) values ('Beach', 0.4, '2020-06-01', '2020-08-31');

delete from HOTEL;
insert into HOTEL (hotelID, hotelAddress, hotelName) values (1, '1052, Boulevard Ameghino, Catamarca, AR', 'Twin Peaks Hotel');
insert into HOTEL (hotelID, hotelAddress, hotelName) values (2, '7 The Laurels, Egremont",CA22 2HY', 'Twin Peaks Hotel');
insert into HOTEL (hotelID, hotelAddress, hotelName) values (3, '395, Liesing, Oberösterreich, AT, 1190', 'Twin Peaks Hotel');
insert into HOTEL (hotelID, hotelAddress, hotelName) values (4, '38, Carretera de la Comella i de la Plana, Aargau, 4600', 'Twin Peaks Hotel');
insert into HOTEL (hotelID, hotelAddress, hotelName) values (5, '38, Im Meierhof, Solothurn, AD, 5726, Switzerland', 'Twin Peaks Hotel');

delete from HOTELFEATURES;
insert into HOTELFEATURES (features, hotelID) values ('Spa', 1);
insert into HOTELFEATURES (features, hotelID) values ('24-hour fitness center', 1);
insert into HOTELFEATURES (features, hotelID) values ('Indoor pool', 2);
insert into HOTELFEATURES (features, hotelID) values ('Wi-Fi in all public space', 2);
insert into HOTELFEATURES (features, hotelID) values ('Parking', 3);
insert into HOTELFEATURES (features, hotelID) values ('Laundry and dry cleaning', 5);

delete from HOTELPHONENUMBER;
insert into HOTELPHONENUMBER (phoneNumber, hotelID) values (1212308910, 1);
insert into HOTELPHONENUMBER (phoneNumber, hotelID) values (1212308912, 2);
insert into HOTELPHONENUMBER (phoneNumber, hotelID) values (1214922020, 3);
insert into HOTELPHONENUMBER (phoneNumber, hotelID) values (3512192491, 4);
insert into HOTELPHONENUMBER (phoneNumber, hotelID) values (9025231131, 5);

delete from GUEST;
insert into GUEST (guestID, ID_type, ID_number, address, guestStatus, discountCoefficient, username, password) values (1, 'Passport', 452134094578, 'Dave Street, Canada, N2C 2P6', 'VIP', 0.4, null, null);
insert into GUEST (guestID, ID_type, ID_number, address, guestStatus, discountCoefficient, username, password) values (2, 'Passport', 962156459543, 'E South St, Globe, AZ, USA, 85501', null , null, null, null);
insert into GUEST (guestID, ID_type, ID_number, address, guestStatus, discountCoefficient, username, password) values (3, 'Passport', 962156459543, 'Atomic Street, Ottawa, New York, USA, 756 145', null , null, null, null);
insert into GUEST (guestID, ID_type, ID_number, address, guestStatus, discountCoefficient, username, password) values (4, 'Passport', 962156459543, 'Thames Rd, Gujarat, India, 145 895', 'Silver' , 0.2, 'doctor.who', 'dd12345');
insert into GUEST (guestID, ID_type, ID_number, address, guestStatus, discountCoefficient, username, password) values (5, 'Passport', 872155659542, 'King George Boulevard, Surrey, BC, Canada, V3W 5B4', 'Golden' , 0.3, null, null);

delete from EMPLOYEE;
insert into EMPLOYEE (employeeID, firstName, lastName, address, sex, contactNumber, employeeStatus, hotelID, payroll, workingHours, workingDays, username, password) values (1, 'Jessica', 'Doe', 'Thames Rd, Gujarat, India, 145 895', 'F', 34234034256, 'Waiter', 1, 120500, 12, 135, 'jessica.doe', '1010');
insert into EMPLOYEE (employeeID, firstName, lastName, address, sex, contactNumber, employeeStatus, hotelID, payroll, workingHours, workingDays, username, password) values (2, 'Tom', 'Pitt', 'Saint Jake Rd, San Jose, USA, 675 846', 'M', 4465365565, 'Manager', 1, 300000.5, 15, 12345, 'tom.pitt', '2010');
insert into EMPLOYEE (employeeID, firstName, lastName, address, sex, contactNumber, employeeStatus, hotelID, payroll, workingHours, workingDays, username, password) values (3, 'Jenny', 'Patel', 'Martin Street, Ottawa, Canada, 263 987', 'F', 4354034256, 'Cook', 2, 800020, 13, 246, 'jenny.patel', '3020');
insert into EMPLOYEE (employeeID, firstName, lastName, address, sex, contactNumber, employeeStatus, hotelID, payroll, workingHours, workingDays, username, password) values (4, 'David', 'Lawrence', 'Lincoln Street, Guelph, Canada, N2C 2E8', 'M', 343265342675, 'Waiter', 4, 150300, 10, 135, 'david.lawrance', '4040');

delete from GUESTPHONENUMBER;
insert into GUESTPHONENUMBER (phoneNumber, guestID) values (25134943423, 1);
insert into GUESTPHONENUMBER (phoneNumber, guestID) values (13435565335, 2);
insert into GUESTPHONENUMBER (phoneNumber, guestID) values (12434656785, 3);
insert into GUESTPHONENUMBER (phoneNumber, guestID) values (34435565335, 4);
insert into GUESTPHONENUMBER (phoneNumber, guestID) values (78343657785, 5);

delete from ROOMTYPE;
insert into ROOMTYPE (RTname, capacity, size, hotelID) values ('Single', 1, 38, 1);
insert into ROOMTYPE (RTname, capacity, size, hotelID) values ('Double', 2, 42, 1);
insert into ROOMTYPE (RTname, capacity, size, hotelID) values ('Twin', 2, 45, 1);
insert into ROOMTYPE (RTname, capacity, size, hotelID) values ('Single', 1, 40, 2);
insert into ROOMTYPE (RTname, capacity, size, hotelID) values ('Double', 2, 45, 2);
insert into ROOMTYPE (RTname, capacity, size, hotelID) values ('Twin', 2, 35, 2);
insert into ROOMTYPE (RTname, capacity, size, hotelID) values ('President Suite', 3, 110, 3);
insert into ROOMTYPE (RTname, capacity, size, hotelID) values ('Connecting Room', 3, 46, 4);
insert into ROOMTYPE (RTname, capacity, size, hotelID) values ('Twin', 2, 39, 5);
insert into ROOMTYPE (RTname, capacity, size, hotelID) values ('Double', 2, 50, 5);

delete from ROOMTYPEWEEKDAYPRICE;
insert into ROOMTYPEWEEKDAYPRICE (weekdayPrice, RTname, hotelID, weekDay) values (20000, 'Single', 1, 'Monday');
insert into ROOMTYPEWEEKDAYPRICE (weekdayPrice, RTname, hotelID, weekDay) values (50000, 'Double', 1, 'Monday');
insert into ROOMTYPEWEEKDAYPRICE (weekdayPrice, RTname, hotelID, weekDay) values (20000, 'Single', 2, 'Tuesday');
insert into ROOMTYPEWEEKDAYPRICE (weekdayPrice, RTname, hotelID, weekDay) values (50000, 'Double', 2, 'Friday');
insert into ROOMTYPEWEEKDAYPRICE (weekdayPrice, RTname, hotelID, weekDay) values (30000, 'Twin', 5, 'Wednesday');
insert into ROOMTYPEWEEKDAYPRICE (weekdayPrice, RTname, hotelID, weekDay) values (100000, 'President Suite', 3, 'Monday');
insert into ROOMTYPEWEEKDAYPRICE (weekdayPrice, RTname, hotelID, weekDay) values (70000, 'Connecting Room', 4, 'Sunday');

delete from ROOMTYPEFEATURES;
insert into ROOMTYPEFEATURES (features, RTname, hotelID) values ('Single bed', 'Single', 1);
insert into ROOMTYPEFEATURES (features, RTname, hotelID) values ('Bathroom', 'Single', 1);
insert into ROOMTYPEFEATURES (features, RTname, hotelID) values ('Dressing Table', 'Single', 1);
insert into ROOMTYPEFEATURES (features, RTname, hotelID) values ('Bedside table', 'Single', 1);
insert into ROOMTYPEFEATURES (features, RTname, hotelID) values ('Small writing table', 'Single', 2);
insert into ROOMTYPEFEATURES (features, RTname, hotelID) values ('Two Single Bed', 'Twin', 5);
insert into ROOMTYPEFEATURES (features, RTname, hotelID) values ('Dressing Table', 'Twin', 5);
insert into ROOMTYPEFEATURES (features, RTname, hotelID) values ('1 Bedside Table', 'Twin', 5);
insert into ROOMTYPEFEATURES (features, RTname, hotelID) values ('2 Headboards', 'Twin', 5);
insert into ROOMTYPEFEATURES (features, RTname, hotelID) values ('Research', 'Twin', 5);
insert into ROOMTYPEFEATURES (features, RTname, hotelID) values ('Double bed', 'Double', 2);
insert into ROOMTYPEFEATURES (features, RTname, hotelID) values ('Dressing table', 'Double', 1);
insert into ROOMTYPEFEATURES (features, RTname, hotelID) values ('Writing table', 'Double', 2);
insert into ROOMTYPEFEATURES (features, RTname, hotelID) values ('TV', 'Double', 1);
insert into ROOMTYPEFEATURES (features, RTname, hotelID) values ('Small Fridge', 'Double', 2);
insert into ROOMTYPEFEATURES (features, RTname, hotelID) values ('Jacuzzi Bathtub', 'President Suite', 3);
insert into ROOMTYPEFEATURES (features, RTname, hotelID) values ('LCD TV', 'President Suite', 3);
insert into ROOMTYPEFEATURES (features, RTname, hotelID) values ('Private Bar Cornerin living room', 'President Suite', 3);
insert into ROOMTYPEFEATURES (features, RTname, hotelID) values ('Mini Fridge', 'Connecting Room', 4);
insert into ROOMTYPEFEATURES (features, RTname, hotelID) values ('Bathroom', 'Connecting Room', 4);
insert into ROOMTYPEFEATURES (features, RTname, hotelID) values ('Coffee Machine', 'Connecting Room', 4);

delete from ROOM;
insert into ROOM (roomNumber, floor, cleanDate, hotelID, RTname) values (100, 1, '2020-11-01', 1, 'Single');
insert into ROOM (roomNumber, floor, cleanDate, hotelID, RTname) values (201, 2, '2020-11-02', 1, 'Twin');
insert into ROOM (roomNumber, floor, cleanDate, hotelID, RTname) values (302, 3, '2020-11-01', 1, 'Single');
insert into ROOM (roomNumber, floor, cleanDate, hotelID, RTname) values (220, 2, '2020-10-30', 2, 'Single');
insert into ROOM (roomNumber, floor, cleanDate, hotelID, RTname) values (312, 3, '2020-10-31', 2, 'Twin');
insert into ROOM (roomNumber, floor, cleanDate, hotelID, RTname) values (302, 3, '2020-11-01', 3, 'Single');
insert into ROOM (roomNumber, floor, cleanDate, hotelID, RTname) values (406, 4, '2020-11-01', 4, 'Single');
insert into ROOM (roomNumber, floor, cleanDate, hotelID, RTname) values (511, 5, '2020-11-03', 4, 'Connecting Room');
insert into ROOM (roomNumber, floor, cleanDate, hotelID, RTname) values (410, 4, '2020-11-03', 5, 'President Suite');

delete from RESERVATION;
insert into RESERVATION (reservationID, checkIn, checkOut, paid, peopleNumber, hotelID, guestID, totalPayment) values (1, '2020-10-20', '2020-10-30', 1, 2, 1, 1, 300000);
insert into RESERVATION (reservationID, checkIn, checkOut, paid, peopleNumber, hotelID, guestID, totalPayment) values (2, '2020-11-01', '2020-11-05', 0, 1, 2, 2, 250000);
insert into RESERVATION (reservationID, checkIn, checkOut, paid, peopleNumber, hotelID, guestID, totalPayment) values (3, '2020-11-02', '2020-11-03', 1, 2, 3, 3, 80000);
insert into RESERVATION (reservationID, checkIn, checkOut, paid, peopleNumber, hotelID, guestID, totalPayment) values (4, '2020-10-31', '2020-11-04', 1, 1, 4, 4, 100320);
insert into RESERVATION (reservationID, checkIn, checkOut, paid, peopleNumber, hotelID, guestID, totalPayment) values (5, '2020-11-01', '2020-11-10', 0, 2, 5, 5, 134453);

delete from RESERVATION_HAS_ROOM;
insert into RESERVATION_HAS_ROOM (reservationID, guestID, roomNumber, hotelID) values (1, 1, 201, 1);
insert into RESERVATION_HAS_ROOM (reservationID, guestID, roomNumber, hotelID) values (2, 2, 312, 2);
insert into RESERVATION_HAS_ROOM (reservationID, guestID, roomNumber, hotelID) values (3, 3, 302, 3);
insert into RESERVATION_HAS_ROOM (reservationID, guestID, roomNumber, hotelID) values (4, 4, 406, 4);
insert into RESERVATION_HAS_ROOM (reservationID, guestID, roomNumber, hotelID) values (5, 5, 410, 5);

delete from SERVICES;
insert into SERVICES (serviceID, serviceName, description, cost) values (1, 'Laundry', 'Laundry/Dry services available for certain hours', 2000);
insert into SERVICES (serviceID, serviceName, description, cost) values (2, 'Massage', 'Guest can order relaxing massage service', 5000);
insert into SERVICES (serviceID, serviceName, description, cost) values (3, '24-hour Room Service', 'There will be 24-hour Room Service to take care of customers needs', 10000);
insert into SERVICES (serviceID, serviceName, description, cost) values (4, 'Entertainment Room', 'Read books and watch movies', 12000);

delete from RESERVATION_HAS_SERVICES;
insert into RESERVATION_HAS_SERVICES (reservationID, hotelID, guestID, serviceID) values (1, 1, 1, 1);
insert into RESERVATION_HAS_SERVICES (reservationID, hotelID, guestID, serviceID) values (2, 2, 2, 2);
insert into RESERVATION_HAS_SERVICES (reservationID, hotelID, guestID, serviceID) values (3, 3, 3, 3);
insert into RESERVATION_HAS_SERVICES (reservationID, hotelID, guestID, serviceID) values (4, 4, 4, 4);
insert into RESERVATION_HAS_SERVICES (reservationID, hotelID, guestID, serviceID) values (5, 5, 5, 3);

delete from RESERVATION_BILL;
insert into RESERVATION_BILL (billAmount, reservationID, hotelID, guestID) values (10000, 1, 1, 1);
insert into RESERVATION_BILL (billAmount, reservationID, hotelID, guestID) values (20000, 2, 2, 2);
insert into RESERVATION_BILL (billAmount, reservationID, hotelID, guestID) values (30000, 3, 3, 3);
insert into RESERVATION_BILL (billAmount, reservationID, hotelID, guestID) values (40000, 4, 4, 4);
insert into RESERVATION_BILL (billAmount, reservationID, hotelID, guestID) values (50000, 5, 5, 5);

delete from HOTEL_PROVIDES_SERVICES;
insert into HOTEL_PROVIDES_SERVICES (serviceID, hotelID) values (1, 1);
insert into HOTEL_PROVIDES_SERVICES (serviceID, hotelID) values (1, 2);
insert into HOTEL_PROVIDES_SERVICES (serviceID, hotelID) values (1, 3);
insert into HOTEL_PROVIDES_SERVICES (serviceID, hotelID) values (2, 1);
insert into HOTEL_PROVIDES_SERVICES (serviceID, hotelID) values (2, 2);
insert into HOTEL_PROVIDES_SERVICES (serviceID, hotelID) values (2, 3);
insert into HOTEL_PROVIDES_SERVICES (serviceID, hotelID) values (2, 4);
insert into HOTEL_PROVIDES_SERVICES (serviceID, hotelID) values (3, 3);
insert into HOTEL_PROVIDES_SERVICES (serviceID, hotelID) values (4, 3);

delete from ROLES;
insert into ROLES (roleID) values (1);
insert into ROLES (roleID) values (2);
insert into ROLES (roleID) values (3);

delete from USER;
insert into USER (userID, roleID, username, password) values (1, 1, 'user1', '12345');
insert into USER (userID, roleID, username, password) values (2, 1, 'user2', '23456');
insert into USER (userID, roleID, username, password) values (3, 1, 'user3', '34567');

delete from ADMIN;
insert into ADMIN (adminID, roleID, username, password) values (1, 2, 'admin1', '00000');
insert into ADMIN (adminID, roleID, username, password) values (2, 2, 'admin2', '00001');
insert into ADMIN (adminID, roleID, username, password) values (3, 2, 'admin3', '00010');
insert into ADMIN (adminID, roleID, username, password) values (4, 2, 'admin4', '00011');
insert into ADMIN (adminID, roleID, username, password) values (5, 2, 'admin5', '00100');

delete from DESKCLERK;
insert into DESKCLERK (deskclerkID, roleID, username, password) values (1, 3, 'deskclerk1', '1000');
insert into DESKCLERK (deskclerkID, roleID, username, password) values (2, 3, 'deskclerk2', '1001');
insert into DESKCLERK (deskclerkID, roleID, username, password) values (3, 3, 'deskclerk3', '1010');
insert into DESKCLERK (deskclerkID, roleID, username, password) values (4, 3, 'deskclerk4', '1011');
insert into DESKCLERK (deskclerkID, roleID, username, password) values (5, 3, 'deskclerk5', '1100');
