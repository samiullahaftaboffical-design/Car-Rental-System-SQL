use Database_Project
	create table sign_up (
	users_id int not null primary key,
	username varchar(50) not null,
	u_password varchar(100) not null
	);

	create table loginn(
	login_ID int not null primary key,
	users_id int not null,
	username varchar(50) not null,
	u_password varchar(50) not null,
	foreign key(users_id) references sign_up(users_id)
	);

	create table Customer(
	C_ID int not null primary key,
	login_ID int not null,
	C_Name varchar(50) not null,
	Contact_Number nchar(11) not null unique,
	C_Address varchar(50) not null,
	Driving_Lincense nchar(20) not null unique,
	foreign key(login_ID) references loginn(login_ID)
	);

	create table vehicle(
	V_ID int not null primary key,
	C_ID int not null,
	V_Type varchar(50) not null,
	V_Model int not null,
	V_Brand varchar(50) not null,
	Rent_Per_Day varchar(50) not null,
	Availability_Status varchar(50) not null
	);

	create table rental_contract(
	Rental_ID int not null primary key,
	C_ID int not null,
	S_Date varchar(50) not null,
	E_Date varchar(50) not null,
	Total_Cost int not null,
	Payment_Status varchar(50) not null,
	foreign key(C_ID) references Customer(C_ID)
	);

	create table payment_details(
	P_Id int not null primary key,
	Rental_ID int not null,
	Amount_Paid int not null,
	Payment_Method varchar(50) not null,
	Payment_Date varchar(50) not null,
	foreign key(Rental_ID) references rental_contract(Rental_ID)
	);

	create table Maintenance_Detail(
	V_ID int not null,
	Last_Service_Date varchar(50) not null,
	Next_Service_Date varchar(50) not null,
	foreign key(V_ID) references vehicle(V_ID)
	);

	INSERT INTO sign_up 
	VALUES
	(1, 'user1', 'pass1'),
	(2, 'user2', 'pass2'),
	(3, 'user3', 'pass3'),
	(4, 'user4', 'pass4'),
	(5, 'user5', 'pass5'),
	(6, 'user6', 'pass6'),
	(7, 'user7', 'pass7'),
	(8, 'user8', 'pass8'),
	(9, 'user9', 'pass9'),
	(10, 'user10', 'pass10'),
	(11, 'user11', 'pass11'),
	(12, 'user12', 'pass12'),
	(13, 'user13', 'pass13'),
	(14, 'user14', 'pass14'),
	(15, 'user15', 'pass15'),
	(16, 'user16', 'pass16'),
	(17, 'user17', 'pass17'),
	(18, 'user18', 'pass18'),
	(19, 'user19', 'pass19'),
	(20, 'user20', 'pass20');

	INSERT INTO loginn 
	VALUES
	(21, 1, 'user1', 'pass1'),
	(22, 2, 'user2', 'pass2'),
	(23, 3, 'user3', 'pass3'),
	(24, 4, 'user4', 'pass4'),
	(25, 5, 'user5', 'pass5'),
	(26, 6, 'user6', 'pass6'),
	(27, 7, 'user7', 'pass7'),
	(28, 8, 'user8', 'pass8'),
	(29, 9, 'user9', 'pass9'),
	(30, 10, 'user10', 'pass10'),
	(31, 11, 'user11', 'pass11'),
	(32, 12, 'user12', 'pass12'),
	(33, 13, 'user13', 'pass13'),
	(34, 14, 'user14', 'pass14'),
	(35, 15, 'user15', 'pass15'),
	(36, 16, 'user16', 'pass16'),
	(37, 17, 'user17', 'pass17'),
	(38, 18, 'user18', 'pass18'),
	(39, 19, 'user19', 'pass19'),
	(40, 20, 'user20', 'pass20');

	INSERT INTO Customer
	VALUES
	(41, 21, 'Ali Khan', '0301', 'Lahore', 'D11'),
	(42, 22, 'Sara Malik', '0302', 'Karachi', 'D12'),
	(43, 23, 'Hamza Tariq', '0303', 'Islamabad', 'D13'),
	(44, 24, 'Nida Rauf', '0304', 'Rawalpindi', 'D14'),
	(45, 25, 'Ahmed Iqbal', '0305', 'Multan', 'D15'),
	(46, 26, 'Ayesha Noor', '0306', 'Faisalabad', 'D16'),
	(47, 27, 'Bilal Zafar', '0307', 'Sialkot', 'D17'),
	(48, 28, 'Zara Shah', '0308', 'Gujranwala', 'D18'),
	(49, 29, 'Hassan Raza', '0309', 'Peshawar', 'D19'),
	(50, 30, 'Mehwish Ali', '0310', 'Quetta', 'D20'),
	(51, 31, 'Umar Javed', '0311', 'Lahore', 'D21'),
	(52, 32, 'Sana Rizwan', '0312', 'Karachi', 'D22'),
	(53, 33, 'Shahbaz Ahmed', '0313', 'Islamabad', 'D23'),
	(54, 34, 'Hina Akbar', '0314', 'Rawalpindi', 'D24'),
	(55, 35, 'Rizwan Latif', '0315', 'Multan', 'D25'),
	(56, 36, 'Lubna Farooq', '0316', 'Faisalabad', 'D26'),
	(57, 37, 'Saad Anwar', '0317', 'Sialkot', 'D27'),
	(58, 38, 'Maham Zia', '0318', 'Gujranwala', 'D28'),
	(59, 39, 'Kashif Mehmood', '0319', 'Peshawar', 'D29'),
	(60, 40, 'Nimra Asif', '0320', 'Quetta', 'D30');

	INSERT INTO vehicle VALUES
	(61, 41, 'Car', 2020, 'Toyota', '5000', 'Available'),
	(62, 42, 'Bike', 2021, 'Honda', '1500', 'Rented'),
	(63, 43, 'Car', 2019, 'Suzuki', '4500', 'Available'),
	(64, 44, 'SUV', 2022, 'Kia', '7000', 'Available'),
	(65, 45, 'Car', 2020, 'Hyundai', '5500', 'Rented'),
	(66, 46, 'Bike', 2021, 'Yamaha', '1600', 'Available'),
	(67, 47, 'Car', 2023, 'Changan', '6000', 'Available'),
	(68, 48, 'Van', 2021, 'Nissan', '8000', 'Rented'),
	(69, 49, 'Car', 2018, 'Suzuki', '4000', 'Available'),
	(70, 50, 'SUV', 2022, 'MG', '7500', 'Available'),
	(71, 51, 'Bike', 2020, 'Honda', '1400', 'Rented'),
	(72, 52, 'Car', 2021, 'Toyota', '5200', 'Available'),
	(73, 53, 'Car', 2022, 'Hyundai', '5800', 'Available'),
	(74, 54, 'SUV', 2023, 'Kia', '7200', 'Rented'),
	(75, 55, 'Van', 2020, 'Suzuki', '7700', 'Available'),
	(76, 56, 'Car', 2019, 'Toyota', '5000', 'Available'),
	(77, 57, 'Bike', 2021, 'Yamaha', '1600', 'Rented'),
	(78, 58, 'Car', 2023, 'Honda', '6100', 'Available'),
	(79, 59, 'SUV', 2022, 'Kia', '7300', 'Available'),
	(80, 60, 'Van', 2021, 'Toyota', '8200', 'Rented');

	INSERT INTO rental_contract VALUES
	(81, 42, '2025-04-01', '2025-04-05', 6000, 'Paid'),
	(82, 45, '2025-03-20', '2025-03-25', 27500, 'Unpaid'),
	(83, 48, '2025-04-10', '2025-04-15', 40000, 'Paid'),
	(84, 51, '2025-04-12', '2025-04-13', 1400, 'Paid'),
	(85, 54, '2025-03-28', '2025-04-01', 28800, 'Unpaid'),
	(86, 57, '2025-04-02', '2025-04-03', 1600, 'Paid'),
	(87, 60, '2025-04-05', '2025-04-09', 32800, 'Paid'),
	(88, 41, '2025-04-01', '2025-04-04', 15000, 'Paid'),
	(89, 43, '2025-04-06', '2025-04-09', 18000, 'Paid'),
	(90, 46, '2025-04-10', '2025-04-13', 4800, 'Paid'),
	(91, 49, '2025-04-11', '2025-04-15', 20000, 'Unpaid'),
	(92, 52, '2025-04-01', '2025-04-03', 10400, 'Paid'),
	(93, 53, '2025-04-04', '2025-04-07', 17400, 'Paid'),
	(94, 55, '2025-04-02', '2025-04-05', 23100, 'Paid'),
	(95, 56, '2025-04-03', '2025-04-06', 15000, 'Paid'),
	(96, 58, '2025-04-05', '2025-04-08', 18300, 'Unpaid'),
	(97, 59, '2025-04-06', '2025-04-10', 29200, 'Paid'),
	(98, 44, '2025-04-07', '2025-04-10', 21000, 'Unpaid'),
	(99, 47, '2025-04-08', '2025-04-12', 24000, 'Paid'),
	(100, 50, '2025-04-10', '2025-04-13', 22500, 'Unpaid');

	INSERT INTO payment_details VALUES
	(101, 81, 6000, 'Credit Card', '2025-04-05'),
	(102, 82, 0, 'Pending', '2025-03-25'),
	(103, 83, 40000, 'Bank Transfer', '2025-04-15'),
	(104, 84, 1400, 'Cash', '2025-04-13'),
	(105, 85, 0, 'Pending', '2025-04-01'),
	(106, 86, 1600, 'JazzCash', '2025-04-03'),
	(107, 87, 32800, 'Easypaisa', '2025-04-09'),
	(108, 88, 15000, 'Cash', '2025-04-04'),
	(109, 89, 18000, 'Bank Transfer', '2025-04-09'),
	(110, 90, 4800, 'Credit Card', '2025-04-13'),
	(111, 91, 0, 'Pending', '2025-04-15'),
	(112, 92, 10400, 'JazzCash', '2025-04-03'),
	(113, 93, 17400, 'Easypaisa', '2025-04-07'),
	(114, 94, 23100, 'Cash', '2025-04-05'),
	(115, 95, 15000, 'Bank Transfer', '2025-04-06'),
	(116, 96, 0, 'Pending', '2025-04-08'),
	(117, 97, 29200, 'Credit Card', '2025-04-10'),
	(118, 98, 0, 'Pending', '2025-04-10'),
	(119, 99, 24000, 'Bank Transfer', '2025-04-12'),
	(120, 100, 0, 'Pending', '2025-04-13');

	INSERT INTO Maintenance_Detail 
	VALUES
	(61, '2025-03-20', '2025-06-20'),
	(62, '2025-03-25', '2025-06-25'),
	(63, '2025-03-22', '2025-06-22'),
	(64, '2025-03-28', '2025-06-28'),
	(65, '2025-03-15', '2025-06-15'),
	(66, '2025-03-10', '2025-06-10'),
	(67, '2025-03-18', '2025-06-18'),
	(68, '2025-03-05', '2025-06-05'),
	(69, '2025-03-12', '2025-06-12'),
	(70, '2025-03-17', '2025-06-17'),
	(71, '2025-03-21', '2025-06-21'),
	(72, '2025-03-26', '2025-06-26'),
	(73, '2025-03-29', '2025-06-29'),
	(74, '2025-04-01', '2025-07-01'),
	(75, '2025-03-15', '2025-06-15'),
	(76, '2025-03-18', '2025-06-18'),
	(77, '2025-03-19', '2025-06-19'),
	(78, '2025-03-23', '2025-06-23'),
	(79, '2025-03-27', '2025-06-27'),
	(80, '2025-03-30', '2025-06-30');
	--Insert into Signup
create procedure insert_signup
@users_id int,@username varchar(255),@u_password varchar(255)
as
begin
insert into sign_up (users_id, username, u_password)values (@users_id, @username, @u_password);
end;

--Insert Into Login
create procedure insert_login
@login_id int,@users_id int,@username varchar(255),@u_password varchar(255)
as
begin
    insert into loginn (login_id, users_id, username, u_password)
    values (@login_id, @users_id, @username, @u_password);
end;

--Insert Customer
create procedure insert_customer
    @c_id int,
    @login_id int,
    @c_name varchar(255),
    @contact_number varchar(20),
    @c_address varchar(255),
    @driving_license varchar(255)
as
begin
    insert into customer (c_id, login_id, c_name, contact_number, c_address, driving_lincense)
    values (@c_id, @login_id, @c_name, @contact_number, @c_address, @driving_license);
end;

--  Insert into Vehicle
create procedure insert_vehicle
    @v_id int,
    @c_id int,
    @v_type varchar(50),
    @v_model int,
    @v_brand varchar(255),
    @rent_per_day varchar(50),
    @availability_status varchar(50)
as
begin
    insert into vehicle (v_id, c_id, v_type, v_model, v_brand, rent_per_day, availability_status)
    values (@v_id, @c_id, @v_type, @v_model, @v_brand, @rent_per_day, @availability_status);
end;

	--Full Rental Information: rental contract, customer, vehicle 
	create procedure Rental_Information 
	@R_ID int
	As
	Begin
	select R.Rental_ID,R.S_Date,R.E_Date,R.Payment_Status,R.Total_Cost,C.C_ID,C.C_Name,C.Contact_Number,C.Driving_Lincense,C.C_Address,V.V_Model,V.V_Brand,V.V_Type,V.Rent_Per_Day from rental_contract as R 
	inner join Customer as C on R.C_ID=C.C_ID
	inner join vehicle as V on V.C_ID = C.C_ID where R.Rental_ID=@R_ID
	End;

	Exec Rental_Information @R_ID =87;


	--Customer Search
	create procedure Search_Customer
	@C_ID int
	As
	begin
	select C.C_ID,C.C_Name,C.Contact_Number,C.Driving_Lincense,C.C_Address,R.Rental_ID from Customer as C inner join rental_contract as R on C.C_ID=R.C_ID where C.C_ID=@C_ID
	end;

	Exec Search_Customer @C_ID = 51;

	--Count Number of rental contract of every customer
	select C.C_ID,C.C_Name, count(R.Rental_ID) as Number_of_Contracts from rental_contract as R join Customer as C on R.C_ID = C.C_ID group by C.C_ID,C.C_Name;

	--Count how many payments are through which methods
	select P.Payment_Method ,count(P.P_Id) from payment_details as P group by P.Payment_Method


	--Triggers: history of maintenance in a history table
	create table history(
	Last_Service_Date varchar(50) not null,
	Next_Service_Date varchar(50) not null,
	);

	create trigger Maintence_History
	on Maintenance_Detail
	after insert
	as begin
	insert into history (Last_Service_Date, Next_Service_Date)
	select Last_Service_Date, Next_Service_Date from INSERTED;
	end;

	drop trigger Maintence_History

	--vehicle availability seach vehicle =available 
	create view check_Vehicle_Avaiblility as
	select * from vehicle where Availability_Status='Available';

	select *from check_Vehicle_Avaiblility


	--Total revenue calculation
	create view Total_Revenue as
	select sum(P.Amount_Paid) as T_Revenue  from payment_details as P 
	inner join rental_contract as R on P.Rental_ID = R.Rental_ID where R.Payment_Status='Paid';

	select *from Total_Revenue

	--Full Rental Information: rental contract, customer, vehicle 
	Exec Rental_Information @R_ID =87;

	--customer seach
	Exec Search_Customer @C_ID = 51;

	--Count Number of rental contract of every customer
	select C.C_ID,C.C_Name, count(R.Rental_ID) as Number_of_Contracts from rental_contract as R join Customer as C on R.C_ID = C.C_ID group by C.C_ID,C.C_Name;

	-- VIEW vehicle availability seach vehicle =available 
	select *from check_Vehicle_Avaiblility

	--Total revenue calculation VIEW
	select *from Total_Revenue

	--Update Rental Payment 
	exec update_rental_payment
	@rental_id=, 
	@amount =, 
	@payment_method =, 
	@payment_date=

	--show Vehicle of specific names
	select V_Brand, count(*) as total from vehicle
	group by V_Brand having V_Brand= 'Toyota';

	--Insert Into Signup
exec insert_signup 
@users_id = , @username = '', @u_password = '';

-- Insert into login
exec insert_login 
@login_id = , 
@users_id = , 
@username = '', 
@u_password = '';

--Insert into customer
exec insert_customer 
@customer_id = , 
@login_id = , 
@customer_name = '', 
@contact_number = '', 
@c_address = '', 
@driving_license = '';

--Insert Into Vehicle
exec insert_vehicle 
@vehicle_id = , 
@customer_id = , 
@v_type = '', 
@v_model = , 
@v_brand = '', 
@rent_per_day = '', 
@availability_status = '';

--FUNCTION to get Customer Name by customer ID
--SVF
CREATE FUNCTION GetcustomerName (@C_ID int)
returns varchar(50)
as begin
declare @CName varchar(50)

select @CName = C_Name from Customer where C_ID = @C_ID
return @CName
end

select dbo.GetcustomerName(43)



