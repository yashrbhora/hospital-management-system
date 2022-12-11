CREATE DATABASE hm_db;
GRANT ALL PRIVILEGES ON hm_db.* TO 'webapp'@'%';
FLUSH PRIVILEGES;

USE hm_db;

# Department Table
create table department (
	id INT,
	dept_name VARCHAR(18),
	dept_head VARCHAR(50),
	address VARCHAR(50),
	num_employees INT,
	primary key (id)
);
insert into department (id, dept_name, dept_head, address, num_employees) values (1, 'medicine', 'Hartwell Puckring', '3299 Harbort Park', 930);
insert into department (id, dept_name, dept_head, address, num_employees) values (2, 'surgery', 'Debora Caspell', '861 Sherman Junction', 887);
insert into department (id, dept_name, dept_head, address, num_employees) values (3, 'gynaecology', 'Wayland Simnel', '1 Moulton Way', 897);
insert into department (id, dept_name, dept_head, address, num_employees) values (4, 'obstetrics', 'Ines De Vaar', '29745 Mallard Lane', 220);
insert into department (id, dept_name, dept_head, address, num_employees) values (5, 'paediatrics', 'Cassie Halsall', '6225 Rowland Park', 702);
insert into department (id, dept_name, dept_head, address, num_employees) values (6, 'eye', 'Eartha Gromley', '5 Bobwhite Center', 555);
insert into department (id, dept_name, dept_head, address, num_employees) values (7, 'ENT', 'Kattie Whitehead', '1 Vera Terrace', 962);
insert into department (id, dept_name, dept_head, address, num_employees) values (8, 'dental', 'Tanny Hamelyn', '15 Larry Road', 882);
insert into department (id, dept_name, dept_head, address, num_employees) values (9, 'orthopaedics', 'Andree Lavelle', '34800 Glendale Alley', 996);
insert into department (id, dept_name, dept_head, address, num_employees) values (10, 'neurology', 'Ted McGuffie', '53776 Maple Wood Street', 537);
insert into department (id, dept_name, dept_head, address, num_employees) values (11, 'cardiology', 'Stephi Guice', '9920 Thackeray Plaza', 335);
insert into department (id, dept_name, dept_head, address, num_employees) values (12, 'psychiatry', 'Ronda McAuslene', '87581 Scofield Trail', 745);
insert into department (id, dept_name, dept_head, address, num_employees) values (13, 'skin', 'Lorens Matas', '83 Jana Drive', 433);
insert into department (id, dept_name, dept_head, address, num_employees) values (14, 'V.D.', 'Sosanna Conring', '29303 Crowley Avenue', 284);
insert into department (id, dept_name, dept_head, address, num_employees) values (15, 'plastic surgery', 'Lonna Mobbs', '8501 Milwaukee Trail', 691);
insert into department (id, dept_name, dept_head, address, num_employees) values (16, 'nuclear medicine', 'Flory Clousley', '8062 Sachs Center', 963);
insert into department (id, dept_name, dept_head, address, num_employees) values (17, 'infectious disease', 'Frasier Spollen', '935 Lotheville Terrace', 396);

# Doctor Table
create table doctor (
	id INT,
	dept_id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	language VARCHAR(50),
	hire_date VARCHAR(50),
	status VARCHAR(50),
	shift VARCHAR(50),
	education VARCHAR(200),
	PRIMARY KEY (id),
	FOREIGN KEY (dept_id) REFERENCES department (id)
);
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (1, 15, 'Del', 'Jedryka', 'Albanian', '3/28/2018', 'Permanent', 'MWTh', 'Universidad "Arturo Prat"');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (2, 1, 'Charissa', 'Bremmell', 'Kannada', '5/25/2014', 'Visiting', 'MWTh', 'Universidad de Colima');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (3, 13, 'Nomi', 'Sinkings', 'Norwegian', '5/1/2015', 'Permanent', 'MWTh', 'John Marshall Law School');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (4, 10, 'Dar', 'Belsher', 'Czech', '12/20/2020', 'Permanent', 'MWTh', 'College of the Holy Cross');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (5, 4, 'Luci', 'Gruszecki', 'Hindi', '9/9/2014', 'Visiting', 'MWTh', 'Hamadan University of Medical Sciences');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (6, 11, 'Hansiain', 'Scullard', 'Oriya', '3/2/2015', 'Visiting', 'MWTh', 'Florida Metropolitan University, Tampa College Brandon');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (7, 8, 'Cleve', 'Hadrill', 'Greek', '3/30/2017', 'Permanent', 'MWTh', 'Ecole Nationale des Ponts et Chausees');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (8, 7, 'Grenville', 'Dunsmore', 'Malayalam', '5/9/2016', 'Permanent', 'MWTh', 'Medical Faculty, Osh State University');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (9, 6, 'Maressa', 'Swan', 'Luxembourgish', '6/18/2015', 'Permanent', 'MWTh', 'Universidade Católica de Pelotas');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (10, 17, 'Natka', 'Kopps', 'Oriya', '7/6/2017', 'Permanent', 'MWTh', 'Ain Shams University');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (11, 2, 'Howard', 'Fenix', 'Montenegrin', '10/1/2016', 'Permanent', 'MWTh', 'Zhongnan University of Finance and Economics');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (12, 12, 'Binnie', 'Christall', 'Lao', '2/17/2011', 'Permanent', 'MWTh', 'Centre National d''Etudes Agronomiques des Régions Chaudes');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (13, 5, 'Christal', 'Sales', 'Sotho', '1/5/2013', 'Permanent', 'MWTh', 'National Hispanic University');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (14, 14, 'Aubree', 'MacAless', 'Greek', '3/29/2011', 'Visiting', 'MWTh', 'National Academy of Arts');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (15, 3, 'Carmine', 'Guyer', 'Papiamento', '12/20/2015', 'Permanent', 'MWTh', 'Université Hassan II - Aïn Chock');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (16, 16, 'Budd', 'Fredson', 'Amharic', '11/8/2014', 'Visiting', 'MWTh', 'Universidade Estadual de Campinas');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (17, 9, 'Ira', 'Battleson', 'Ndebele', '9/11/2018', 'Permanent', 'MWTh', 'Morgan State University');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (18, 11, 'Evvy', 'Ferrarone', 'Persian', '9/25/2022', 'Permanent', 'MWTh', 'Universitat Rovira I Virgili Tarragona');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (19, 6, 'Quill', 'Handley', 'Assamese', '1/14/2015', 'Visiting', 'MWTh', 'Liaocheng Teachers University');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (20, 4, 'Zorana', 'Goodin', 'Tajik', '3/30/2022', 'Permanent', 'MWTh', 'Celal Bayar University');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (21, 3, 'Bernie', 'Edlington', 'Japanese', '10/23/2014', 'Visiting', 'MWTh', 'Université de Tunis');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (22, 17, 'Deena', 'Monshall', 'Somali', '12/20/2013', 'Permanent', 'MWTh', 'Universidad Peruana de Ciencias Aplicadas');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (23, 5, 'Dania', 'Elleton', 'Tsonga', '6/9/2015', 'Permanent', 'MWTh', 'Trinity College of Vermont');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (24, 12, 'Kacie', 'Guiel', 'Icelandic', '4/5/2015', 'Permanent', 'MWTh', 'RKDF University');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (25, 7, 'Esme', 'Allmann', 'Dzongkha', '7/28/2015', 'Permanent', 'MWTh', 'Erasmushogeschool Brussel');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (26, 9, 'Ashbey', 'Stag', 'English', '8/28/2011', 'Visiting', 'MWTh', 'Chunchon National University of Education');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (27, 2, 'Marena', 'Simo', 'Swedish', '7/28/2019', 'Visiting', 'MWTh', 'Armed Forces Academy of General Milan Rastislav Štefánik');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (28, 14, 'Kelsy', 'Kidby', 'Montenegrin', '3/20/2011', 'Permanent', 'MWTh', 'Washington University in St. Louis');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (29, 1, 'Dionisio', 'Lonsdale', 'Gagauz', '1/14/2018', 'Visiting', 'MWTh', 'Technological University (Kyaukse)');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (30, 8, 'Arni', 'Danielkiewicz', 'West Frisian', '5/10/2021', 'Permanent', 'MWTh', 'Bourgas University "Prof. Assen Zlatarov"');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (31, 15, 'Gerry', 'Chevalier', 'Bulgarian', '1/29/2013', 'Visiting', 'MWTh', 'Tallinn University');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (32, 10, 'Leelah', 'Neames', 'Mongolian', '4/16/2012', 'Permanent', 'MWTh', 'Universidad Santo Tomás');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (33, 16, 'Georgeanne', 'Boxe', 'Malayalam', '11/10/2020', 'Visiting', 'MWTh', 'Newport International University');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (34, 13, 'Darda', 'Josuweit', 'Mongolian', '10/29/2016', 'Permanent', 'MWTh', 'HWP - Hamburger Universität für Wirtschaft und Politik');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (35, 2, 'Tripp', 'Vokins', 'Greek', '8/25/2022', 'Visiting', 'MWTh', 'Southwest University of Political Science and Law');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (36, 11, 'Christy', 'McAlees', 'Finnish', '10/20/2011', 'Visiting', 'MWTh', 'American University Extension, Okinawa');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (37, 9, 'Pierce', 'Radden', 'Azeri', '2/4/2012', 'Visiting', 'MWTh', 'Loyola College in Maryland');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (38, 6, 'Casar', 'Barbery', 'Swedish', '6/3/2020', 'Visiting', 'MWTh', 'Huanghe Science & Technology University');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (39, 7, 'Derrek', 'Marlor', 'German', '6/9/2020', 'Permanent', 'MWTh', 'University of Great Falls');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (40, 16, 'Bordy', 'Prettyjohns', 'Malagasy', '4/20/2010', 'Visiting', 'MWTh', 'Turin Polytechnic University In Tashkent');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (41, 15, 'Edwin', 'Jarvie', 'Malay', '5/25/2017', 'Visiting', 'MWTh', 'Alain University of Science and Technology');
insert into doctor (id, dept_id, first_name, last_name, language, hire_date, status, shift, education) values (42, 13, 'Lanette', 'Anning', 'Kyrgyz', '8/28/2014', 'Permanent', 'MWTh', 'Minnesota School of Professional Psychology');

# Emergency Contact Table
create table emergency_contact (
	id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	contact VARCHAR(50),
	relationship VARCHAR(50),
	PRIMARY KEY (id)
);
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (1, 'Bonnibelle', 'Beardsall', 'bbeardsall0@themeforest.net', '(225) 8976054', 'Mother');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (2, 'Jemmie', 'Morales', 'jmorales1@yelp.com', '(919) 3833861', 'Sibling');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (3, 'Patience', 'Beauly', 'pbeauly2@nymag.com', '(191) 5082006', 'Caretaker');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (4, 'Sib', 'Bode', 'sbode3@latimes.com', '(240) 5471493', 'Child');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (5, 'Lianne', 'Longford', 'llongford4@salon.com', '(566) 7208516', 'Father');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (6, 'Nil', 'Seaward', 'nseaward5@mozilla.com', '(286) 6752158', 'Child');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (7, 'Sheryl', 'Weatherhogg', 'sweatherhogg6@kickstarter.com', '(446) 8163300', 'Father');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (8, 'Caryn', 'Lempel', 'clempel7@ca.gov', '(126) 4957631', 'Father');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (9, 'Crystie', 'Slowgrave', 'cslowgrave8@w3.org', '(445) 5930025', 'Partner');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (10, 'Artemis', 'Harberer', 'aharberer9@rakuten.co.jp', '(108) 9902884', 'Child');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (11, 'Jessika', 'Downie', 'jdowniea@exblog.jp', '(570) 9388173', 'Mother');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (12, 'Deb', 'Ockleshaw', 'dockleshawb@webs.com', '(650) 9342624', 'Guardian');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (13, 'Bethina', 'Montez', 'bmontezc@list-manage.com', '(769) 7010055', 'Employee');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (14, 'Clifford', 'Santus', 'csantusd@yellowbook.com', '(320) 9261481', 'Relative');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (15, 'Becki', 'Dahler', 'bdahlere@geocities.com', '(760) 6362643', 'Employee');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (16, 'Kaja', 'Huckerby', 'khuckerbyf@quantcast.com', '(798) 9416478', 'Partner');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (17, 'Cristionna', 'Gumbley', 'cgumbleyg@theatlantic.com', '(187) 3547519', 'Child');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (18, 'Caren', 'Illidge', 'cillidgeh@shinystat.com', '(445) 5272838', 'Guardian');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (19, 'Milt', 'Birwhistle', 'mbirwhistlei@gizmodo.com', '(942) 8621732', 'Partner');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (20, 'Billye', 'Foulis', 'bfoulisj@indiatimes.com', '(804) 7880092', 'Partner');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (21, 'Serene', 'Drohane', 'sdrohanek@comcast.net', '(662) 4063934', 'Mother');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (22, 'Martainn', 'Bencher', 'mbencherl@tinyurl.com', '(973) 4402334', 'Father');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (23, 'Miranda', 'Gavaghan', 'mgavaghanm@flavors.me', '(506) 7702066', 'Employee');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (24, 'Lexine', 'Alcido', 'lalcidon@wsj.com', '(553) 6868612', 'Employee');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (25, 'Bevan', 'Burrill', 'bburrillo@infoseek.co.jp', '(235) 7140861', 'Employer');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (26, 'Wally', 'Yetts', 'wyettsp@un.org', '(758) 5377003', 'Employee');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (27, 'Corie', 'Tyrone', 'ctyroneq@apple.com', '(389) 1456731', 'Employer');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (28, 'Winona', 'Barta', 'wbartar@sciencedirect.com', '(943) 5846469', 'Sibling');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (29, 'Karolina', 'Hryniewicz', 'khryniewiczs@discuz.net', '(329) 9399386', 'Relative');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (30, 'Rosella', 'Wallwood', 'rwallwoodt@shareasale.com', '(872) 1001066', 'Employee');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (31, 'Dean', 'Newbery', 'dnewberyu@storify.com', '(833) 5073294', 'Sibling');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (32, 'Romy', 'Derby', 'rderbyv@4shared.com', '(929) 5595146', 'Child');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (33, 'Dur', 'Ranfield', 'dranfieldw@pagesperso-orange.fr', '(957) 9324474', 'Caretaker');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (34, 'Myranda', 'Baybutt', 'mbaybuttx@typepad.com', '(970) 9538007', 'Partner');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (35, 'Opal', 'Stacy', 'ostacyy@bizjournals.com', '(662) 9213322', 'Sibling');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (36, 'Paddie', 'Jest', 'pjestz@microsoft.com', '(102) 2747754', 'Employer');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (37, 'Pauletta', 'Normington', 'pnormington10@phpbb.com', '(460) 6881830', 'Father');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (38, 'Jason', 'Cotillard', 'jcotillard11@w3.org', '(923) 8196805', 'Caretaker');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (39, 'Emmy', 'Keningley', 'ekeningley12@icio.us', '(808) 5228757', 'Sibling');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (40, 'Haley', 'Coger', 'hcoger13@state.tx.us', '(370) 7007990', 'Employee');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (41, 'Sinclare', 'Marcus', 'smarcus14@odnoklassniki.ru', '(359) 1862981', 'Sibling');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (42, 'Vivia', 'Jeakins', 'vjeakins15@telegraph.co.uk', '(836) 6832251', 'Father');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (43, 'Hyacinth', 'Allder', 'hallder16@last.fm', '(312) 1756549', 'Relative');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (44, 'Corinna', 'Odby', 'codby17@fotki.com', '(703) 4697818', 'Guardian');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (45, 'Graehme', 'Veck', 'gveck18@mail.ru', '(902) 3254866', 'Mother');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (46, 'Mina', 'Vaneschi', 'mvaneschi19@yellowbook.com', '(239) 1350810', 'Father');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (47, 'Valentia', 'Longden', 'vlongden1a@ftc.gov', '(680) 2031214', 'Caretaker');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (48, 'Sarajane', 'Benasik', 'sbenasik1b@drupal.org', '(537) 8908817', 'Father');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (49, 'Dani', 'Luetkemeyers', 'dluetkemeyers1c@wikimedia.org', '(960) 7445479', 'Relative');
insert into emergency_contact (id, first_name, last_name, email, contact, relationship) values (50, 'Aprilette', 'Babbe', 'ababbe1d@fema.gov', '(522) 8607492', 'Mother');

# Patient Table
create table patient (
	id INT,
	emergency_id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	birth_date VARCHAR(50),
	age INT,
	sex VARCHAR(50),
	address VARCHAR(50),
	language VARCHAR(50),
	medical_history TEXT,
	primary_care_id int,
    PRIMARY KEY (id),
    FOREIGN KEY (emergency_id) REFERENCES emergency_contact (id),
    FOREIGN KEY (primary_care_id) REFERENCES doctor (id)
);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (1, 35, 'Kelsey', 'Pothbury', '8/27/1935', 87, 'Female', '6 Petterle Road', 'Catalan', 'curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec', 23);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (2, 44, 'Klement', 'Kock', '2/21/1909', 113, 'Male', '476 Wayridge Lane', 'Polish', 'in congue etiam justo etiam pretium iaculis justo in hac habitasse', 24);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (3, 22, 'Turner', 'Harrie', '6/9/1950', 72, 'Male', '49239 Oxford Street', 'Nepali', 'odio odio elementum eu interdum eu tincidunt in leo maecenas', 29);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (4, 4, 'Carlye', 'Rounding', '5/31/1990', 32, 'Female', '938 Michigan Center', 'Azeri', 'parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum', 11);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (5, 1, 'Sybil', 'Crewe', '2/5/2000', 22, 'Female', '7790 Steensland Trail', 'Khmer', 'odio justo sollicitudin ut suscipit a feugiat et eros vestibulum', 5);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (6, 20, 'Tannie', 'Hares', '5/26/1934', 88, 'Male', '40 Merry Trail', 'Persian', 'etiam faucibus cursus urna ut tellus nulla ut erat id mauris', 35);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (7, 5, 'Zsa zsa', 'Sharphouse', '7/16/1995', 27, 'Female', '74471 Jay Terrace', 'Punjabi', 'in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit', 34);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (8, 48, 'Alayne', 'Alflatt', '11/13/1959', 63, 'Female', '6511 Novick Circle', 'Telugu', 'libero non mattis pulvinar nulla pede ullamcorper augue a suscipit', 33);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (9, 27, 'Rahal', 'Bisgrove', '5/19/2004', 18, 'Female', '42 Dottie Avenue', 'Khmer', 'nulla justo aliquam quis turpis eget elit sodales scelerisque mauris', 2);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (10, 45, 'Jenine', 'Maylard', '11/13/1986', 36, 'Female', '225 Tennessee Lane', 'Finnish', 'luctus nec molestie sed justo pellentesque viverra pede ac diam', 26);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (11, 11, 'Bennie', 'Blodget', '1/13/1918', 105, 'Male', '540 Kim Terrace', 'Persian', 'lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio', 25);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (12, 43, 'Edward', 'Giorgiutti', '5/17/1939', 83, 'Male', '8495 School Alley', 'Zulu', 'sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus', 41);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (13, 42, 'Charmion', 'Botwright', '10/12/1953', 69, 'Female', '051 Claremont Junction', 'Swahili', 'pede ac diam cras pellentesque volutpat dui maecenas tristique est et', 1);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (14, 17, 'Yvonne', 'Launder', '12/27/2015', 7, 'Female', '48 Old Gate Park', 'Quechua', 'sapien quis libero nullam sit amet turpis elementum ligula vehicula', 4);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (15, 7, 'Burton', 'Gooderridge', '6/9/1925', 97, 'Male', '0828 Northport Parkway', 'Danish', 'aliquet maecenas leo odio condimentum id luctus nec molestie sed justo', 10);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (16, 37, 'Judie', 'Eglese', '6/24/1924', 98, 'Female', '548 Bultman Way', 'Tajik', 'velit donec diam neque vestibulum eget vulputate ut ultrices vel', 28);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (17, 3, 'Mario', 'Carroll', '6/17/1941', 81, 'Male', '2 High Crossing Way', 'Indonesian', 'sed interdum venenatis turpis enim blandit mi in porttitor pede justo', 6);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (18, 25, 'Stanislaus', 'Gozney', '8/23/1922', 100, 'Male', '8206 Susan Circle', 'Polish', 'fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus', 42);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (19, 38, 'Elianora', 'Thunders', '8/12/1956', 66, 'Female', '5706 American Ash Road', 'Marathi', 'interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum', 9);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (20, 10, 'Jo-anne', 'Stearnes', '4/3/2005', 17, 'Female', '53253 International Trail', 'Danish', 'sollicitudin ut suscipit a feugiat et eros vestibulum ac est', 20);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (21, 24, 'Herb', 'Laxtonne', '12/29/1959', 63, 'Male', '65 Grasskamp Parkway', 'Icelandic', 'auctor sed tristique in tempus sit amet sem fusce consequat nulla', 7);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (22, 34, 'Oneida', 'Tresler', '12/15/1945', 77, 'Female', '47 Declaration Point', 'Tetum', 'aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien', 32);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (23, 30, 'Kurtis', 'Harbinson', '6/7/1992', 30, 'Male', '680 Pennsylvania Junction', 'Kannada', 'et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet', 38);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (24, 9, 'Rania', 'Alves', '11/12/1981', 41, 'Female', '26 Larry Lane', 'Bislama', 'mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus', 36);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (25, 19, 'Stephenie', 'Roderighi', '8/19/1924', 98, 'Female', '36 Roth Alley', 'Kyrgyz', 'etiam pretium iaculis justo in hac habitasse platea dictumst etiam', 27);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (26, 15, 'Geno', 'Brayshaw', '8/1/1939', 83, 'Male', '0 Florence Street', 'Guaraní', 'molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc', 22);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (27, 32, 'Blanca', 'Siward', '2/20/1950', 72, 'Female', '8 Esch Circle', 'Oriya', 'at turpis a pede posuere nonummy integer non velit donec', 18);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (28, 21, 'Barry', 'Bussy', '2/8/1904', 118, 'Male', '85 Thompson Parkway', 'French', 'turpis donec posuere metus vitae ipsum aliquam non mauris morbi non', 31);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (29, 41, 'Georges', 'Hawton', '9/29/1912', 110, 'Male', '3 Quincy Crossing', 'Polish', 'faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor', 21);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (30, 18, 'Constantino', 'Berni', '6/24/2009', 13, 'Male', '3946 Logan Point', 'Swati', 'a feugiat et eros vestibulum ac est lacinia nisi venenatis', 39);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (31, 50, 'Carmina', 'Mesant', '1/27/2016', 6, 'Female', '687 Barby Place', 'German', 'pretium iaculis justo in hac habitasse platea dictumst etiam faucibus', 3);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (32, 23, 'Wildon', 'Hugnin', '12/4/1902', 120, 'Male', '93 Stang Court', 'Tetum', 'at velit eu est congue elementum in hac habitasse platea dictumst', 37);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (33, 46, 'Marylynne', 'Ollarenshaw', '12/22/1916', 106, 'Female', '62 Delaware Lane', 'Icelandic', 'eu sapien cursus vestibulum proin eu mi nulla ac enim in', 30);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (34, 26, 'Andreas', 'Milesap', '7/14/1962', 60, 'Male', '258 West Park', 'Indonesian', 'praesent blandit nam nulla integer pede justo lacinia eget tincidunt', 8);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (35, 8, 'Danit', 'Lidyard', '1/25/1981', 41, 'Female', '05143 Dawn Court', 'Portuguese', 'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum', 16);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (36, 33, 'Teodorico', 'Woodroofe', '8/30/1994', 28, 'Male', '33049 Di Loreto Lane', 'Moldovan', 'sit amet consectetuer adipiscing elit proin interdum mauris non ligula', 19);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (37, 36, 'Jimmy', 'Foffano', '7/3/1953', 69, 'Male', '6 Oneill Plaza', 'Ndebele', 'nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue', 15);
insert into patient (id, emergency_id, first_name, last_name, birth_date, age, sex, address, language, medical_history, primary_care_id) values (38, 13, 'Cointon', 'Lowden', '12/28/1956', 66, 'Male', '9563 Marcy Way', 'Latvian', 'id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu', 17);

# Insurance Company Table
create table insurance_company (
	id INT,
	company_name VARCHAR(50),
	company_contact VARCHAR(50),
	company_address VARCHAR(50),
	PRIMARY KEY (id)
);
insert into insurance_company (id, company_name, company_contact, company_address) values (1, 'Eare', 'bholtaway0@google.nl', '91792 Russell Court');
insert into insurance_company (id, company_name, company_contact, company_address) values (2, 'Quatz', 'wscollard1@phoca.cz', '64290 Vahlen Court');
insert into insurance_company (id, company_name, company_contact, company_address) values (3, 'Jatri', 'bdorosario2@mtv.com', '919 Green Ridge Avenue');
insert into insurance_company (id, company_name, company_contact, company_address) values (4, 'Mycat', 'ysilverthorn3@redcross.org', '03623 Blackbird Avenue');
insert into insurance_company (id, company_name, company_contact, company_address) values (5, 'Realfire', 'hberry4@un.org', '56 Ridgeway Pass');
insert into insurance_company (id, company_name, company_contact, company_address) values (6, 'Browsebug', 'mdisman5@bloglovin.com', '5 Anniversary Trail');
insert into insurance_company (id, company_name, company_contact, company_address) values (7, 'Voomm', 'jklein6@amazonaws.com', '56175 Waywood Lane');
insert into insurance_company (id, company_name, company_contact, company_address) values (8, 'Mynte', 'ihinrichsen7@amazon.de', '7 Hoffman Park');
insert into insurance_company (id, company_name, company_contact, company_address) values (9, 'Kwideo', 'nbrainsby8@census.gov', '73 Oxford Terrace');
insert into insurance_company (id, company_name, company_contact, company_address) values (10, 'Realbridge', 'dbennell9@huffingtonpost.com', '28 Kennedy Terrace');
insert into insurance_company (id, company_name, company_contact, company_address) values (11, 'Wikido', 'draysa@paginegialle.it', '2585 Swallow Court');
insert into insurance_company (id, company_name, company_contact, company_address) values (12, 'Youbridge', 'tuziellib@networksolutions.com', '0475 Lindbergh Junction');
insert into insurance_company (id, company_name, company_contact, company_address) values (13, 'Myworks', 'oeliyahuc@tuttocitta.it', '2923 Duke Road');
insert into insurance_company (id, company_name, company_contact, company_address) values (14, 'Muxo', 'dmaggiored@com.com', '8 Corscot Way');
insert into insurance_company (id, company_name, company_contact, company_address) values (15, 'Zooxo', 'gblecklye@columbia.edu', '20 Schmedeman Center');
insert into insurance_company (id, company_name, company_contact, company_address) values (16, 'Omba', 'mtrathenf@hp.com', '33 Gale Avenue');
insert into insurance_company (id, company_name, company_contact, company_address) values (17, 'Trilith', 'atowsg@posterous.com', '6 Commercial Plaza');
insert into insurance_company (id, company_name, company_contact, company_address) values (18, 'Chatterpoint', 'mkleimth@gizmodo.com', '78642 Katie Street');
insert into insurance_company (id, company_name, company_contact, company_address) values (19, 'Kare', 'tgordongilesi@feedburner.com', '46 Dovetail Alley');
insert into insurance_company (id, company_name, company_contact, company_address) values (20, 'Youbridge', 'jzamboniarij@quantcast.com', '68559 Wayridge Crossing');
insert into insurance_company (id, company_name, company_contact, company_address) values (21, 'Skalith', 'zleeburnek@lycos.com', '7655 Hanson Parkway');
insert into insurance_company (id, company_name, company_contact, company_address) values (22, 'Digitube', 'mkellettl@amazon.com', '3960 Laurel Place');
insert into insurance_company (id, company_name, company_contact, company_address) values (23, 'Kwilith', 'lgailm@fda.gov', '522 Toban Point');
insert into insurance_company (id, company_name, company_contact, company_address) values (24, 'Kanoodle', 'bgoldenn@go.com', '799 Talmadge Way');
insert into insurance_company (id, company_name, company_contact, company_address) values (25, 'Topicblab', 'gskipseao@blogger.com', '2 Eastlawn Parkway');
insert into insurance_company (id, company_name, company_contact, company_address) values (26, 'Layo', 'pkobup@theatlantic.com', '533 Stephen Pass');

# Nurse Table
create table nurse (
	id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	contact VARCHAR(50),
	language VARCHAR(50),
	hire_date VARCHAR(50),
	PRIMARY KEY (id)
);
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (1, 'Hallsy', 'Grichukhanov', '554-135-1761', 'Mongolian', '4/29/2014');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (2, 'Maurits', 'Rosenfarb', '997-135-7690', 'Kazakh', '4/4/2016');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (3, 'Vaughn', 'Dinwoodie', '852-282-7190', 'Italian', '2/2/2015');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (4, 'Agatha', 'Kopfer', '505-271-7117', 'Mongolian', '9/5/2020');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (5, 'Gauthier', 'Couling', '600-552-1524', 'Punjabi', '4/10/2021');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (6, 'Karin', 'Lindenstrauss', '520-797-2126', 'Northern Sotho', '5/23/2011');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (7, 'Carrissa', 'Honeywood', '630-932-2583', 'Dhivehi', '3/2/2020');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (8, 'Emili', 'Scotting', '407-376-7276', 'Latvian', '7/3/2010');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (9, 'Zerk', 'Shobrook', '957-669-9337', 'New Zealand Sign Language', '4/13/2022');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (10, 'Flemming', 'De Giorgi', '861-993-8336', 'Guaraní', '4/15/2021');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (11, 'Celestina', 'Phebee', '659-369-4310', 'New Zealand Sign Language', '6/23/2017');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (12, 'Grady', 'Sturgess', '307-234-4914', 'Hindi', '4/13/2012');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (13, 'Flor', 'Barracks', '941-812-1229', 'Burmese', '12/5/2012');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (14, 'Nonie', 'Spencock', '152-867-8135', 'Gujarati', '4/28/2010');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (15, 'Ignacius', 'Skate', '323-600-1338', 'Moldovan', '6/9/2020');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (16, 'Fina', 'Earlam', '991-105-5282', 'Khmer', '3/4/2011');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (17, 'Tedman', 'Comusso', '658-525-3829', 'English', '12/6/2012');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (18, 'Odelle', 'Milstead', '506-745-1236', 'Hiri Motu', '1/14/2019');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (19, 'Cassey', 'Crosen', '432-937-2728', 'Kurdish', '5/10/2012');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (20, 'Clare', 'Esmead', '248-601-6975', 'Czech', '6/17/2019');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (21, 'Darda', 'Kalf', '990-351-7087', 'Zulu', '4/18/2020');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (22, 'Maximilianus', 'Follis', '163-151-8682', 'Dzongkha', '2/9/2014');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (23, 'Ike', 'Diess', '714-708-9825', 'Assamese', '5/31/2017');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (24, 'Felita', 'Tremble', '735-116-5064', 'Kazakh', '9/10/2017');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (25, 'Val', 'Falconar', '172-533-1348', 'Assamese', '9/8/2017');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (26, 'Chuck', 'Heinz', '294-604-7683', 'Bislama', '9/1/2017');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (27, 'Sylvester', 'Purshouse', '697-386-8864', 'Tamil', '9/10/2021');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (28, 'Germana', 'Dancy', '117-418-3135', 'Burmese', '3/23/2022');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (29, 'Karlyn', 'Hise', '620-205-5285', 'Malagasy', '7/14/2022');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (30, 'Carolann', 'Fayerman', '890-228-2030', 'Amharic', '1/1/2016');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (31, 'Clementius', 'Hansen', '815-511-8650', 'Icelandic', '8/25/2011');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (32, 'Charles', 'Feander', '648-816-0157', 'Nepali', '3/25/2019');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (33, 'Angil', 'Dore', '756-898-4523', 'Indonesian', '2/24/2022');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (34, 'Lib', 'Sherwyn', '651-113-1839', 'Fijian', '7/19/2016');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (35, 'Elianora', 'Trembley', '318-894-1270', 'Danish', '2/20/2020');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (36, 'Gizela', 'McQuie', '435-144-3322', 'Belarusian', '12/10/2016');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (37, 'Amberly', 'Arrundale', '837-272-7267', 'Bosnian', '5/23/2016');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (38, 'Jojo', 'Hanna', '534-531-1573', 'Tetum', '5/30/2011');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (39, 'Tiffi', 'Bessell', '144-883-9174', 'Papiamento', '10/30/2018');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (40, 'Farlee', 'Legrand', '284-763-3906', 'Gujarati', '9/2/2011');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (41, 'Emilie', 'Hover', '974-142-5002', 'Chinese', '3/18/2015');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (42, 'Jerry', 'Klimkovich', '105-181-4127', 'Yiddish', '5/10/2013');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (43, 'Kayne', 'Makepeace', '698-923-4742', 'Persian', '7/12/2018');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (44, 'Kelsi', 'Kittles', '502-811-4010', 'Zulu', '5/18/2013');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (45, 'Nikolia', 'Matiasek', '325-707-8090', 'Yiddish', '10/27/2020');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (46, 'Daisie', 'Warmington', '217-645-1079', 'Aymara', '5/26/2021');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (47, 'Melania', 'Hillen', '584-906-3056', 'Malagasy', '2/11/2010');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (48, 'Kellyann', 'Caesar', '473-345-0984', 'Khmer', '10/7/2015');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (49, 'Nonna', 'Brahams', '453-980-0877', 'Estonian', '10/22/2012');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (50, 'Anjanette', 'Bartens', '658-957-8086', 'Guaraní', '10/7/2015');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (51, 'Giacomo', 'Poncet', '406-699-0039', 'Swati', '12/5/2021');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (52, 'Suzy', 'Kaemena', '351-162-0037', 'Somali', '4/14/2020');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (53, 'Sonnie', 'Clandillon', '323-880-8054', 'Guaraní', '10/7/2017');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (54, 'Skylar', 'Janosevic', '927-934-9512', 'Northern Sotho', '3/17/2012');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (55, 'Johny', 'Franzotto', '583-979-3926', 'Papiamento', '2/24/2012');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (56, 'Marcie', 'Cinelli', '518-144-6012', 'Assamese', '4/3/2018');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (57, 'Larissa', 'Bemand', '937-451-3545', 'Irish Gaelic', '9/13/2013');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (58, 'Horatius', 'Cully', '788-835-3649', 'Oriya', '11/5/2012');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (59, 'Samara', 'Vooght', '347-838-0670', 'Swedish', '1/7/2014');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (60, 'Courtnay', 'Grebbin', '164-990-3907', 'Guaraní', '9/22/2020');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (61, 'Carr', 'Kasting', '260-122-6914', 'Filipino', '8/7/2018');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (62, 'Madelyn', 'Dureden', '422-514-1221', 'Dzongkha', '6/19/2012');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (63, 'Mariana', 'Haining', '945-529-5963', 'Hungarian', '6/16/2022');
insert into nurse (id, first_name, last_name, contact, language, hire_date) values (64, 'Clareta', 'Gange', '530-996-0289', 'Quechua', '1/22/2013');

# Bill Table
create table bill (
	id INT,
	patient_id INT,
	total INT,
	items VARCHAR(6),
	date VARCHAR(50),
	PRIMARY KEY (id, patient_id),
	FOREIGN KEY (patient_id) REFERENCES patient (id)
);
insert into bill (id, patient_id, total, items, date) values (1, 36, 55830, 'item 2', '1/22/2022');
insert into bill (id, patient_id, total, items, date) values (2, 37, 16362, 'item 6', '3/11/2022');
insert into bill (id, patient_id, total, items, date) values (3, 22, 30044, 'item 5', '2/2/2022');
insert into bill (id, patient_id, total, items, date) values (4, 15, 5300, 'item 2', '2/19/2022');
insert into bill (id, patient_id, total, items, date) values (5, 18, 89358, 'item 4', '7/30/2022');
insert into bill (id, patient_id, total, items, date) values (6, 24, 41531, 'item 1', '7/10/2022');
insert into bill (id, patient_id, total, items, date) values (7, 8, 72516, 'item 3', '5/15/2022');
insert into bill (id, patient_id, total, items, date) values (8, 20, 44281, 'item 1', '7/6/2022');
insert into bill (id, patient_id, total, items, date) values (9, 28, 86421, 'item 2', '6/28/2022');
insert into bill (id, patient_id, total, items, date) values (10, 2, 16838, 'item 2', '9/2/2022');
insert into bill (id, patient_id, total, items, date) values (11, 23, 2287, 'item 2', '6/16/2022');
insert into bill (id, patient_id, total, items, date) values (12, 17, 69605, 'item 2', '10/17/2022');
insert into bill (id, patient_id, total, items, date) values (13, 26, 79058, 'item 6', '2/23/2022');
insert into bill (id, patient_id, total, items, date) values (14, 29, 36172, 'item 5', '5/24/2022');
insert into bill (id, patient_id, total, items, date) values (15, 7, 83325, 'item 4', '11/24/2021');
insert into bill (id, patient_id, total, items, date) values (16, 30, 50336, 'item 4', '7/23/2022');
insert into bill (id, patient_id, total, items, date) values (17, 14, 44643, 'item 6', '8/27/2022');
insert into bill (id, patient_id, total, items, date) values (18, 38, 66452, 'item 1', '7/5/2022');
insert into bill (id, patient_id, total, items, date) values (19, 16, 19019, 'item 1', '7/17/2022');
insert into bill (id, patient_id, total, items, date) values (20, 5, 24139, 'item 2', '4/24/2022');
insert into bill (id, patient_id, total, items, date) values (21, 1, 12725, 'item 3', '2/25/2022');
insert into bill (id, patient_id, total, items, date) values (22, 11, 46870, 'item 5', '11/21/2022');
insert into bill (id, patient_id, total, items, date) values (23, 12, 10054, 'item 3', '8/14/2022');
insert into bill (id, patient_id, total, items, date) values (24, 10, 24521, 'item 6', '11/23/2021');
insert into bill (id, patient_id, total, items, date) values (25, 13, 53801, 'item 3', '3/22/2022');
insert into bill (id, patient_id, total, items, date) values (26, 19, 85844, 'item 4', '9/27/2022');
insert into bill (id, patient_id, total, items, date) values (27, 4, 47029, 'item 4', '7/2/2022');
insert into bill (id, patient_id, total, items, date) values (28, 21, 16716, 'item 6', '9/8/2022');
insert into bill (id, patient_id, total, items, date) values (29, 35, 2179, 'item 2', '1/3/2022');
insert into bill (id, patient_id, total, items, date) values (30, 32, 67500, 'item 2', '9/6/2022');
insert into bill (id, patient_id, total, items, date) values (31, 6, 45144, 'item 3', '2/11/2022');
insert into bill (id, patient_id, total, items, date) values (32, 27, 54002, 'item 3', '2/28/2022');
insert into bill (id, patient_id, total, items, date) values (33, 25, 44621, 'item 2', '9/17/2022');
insert into bill (id, patient_id, total, items, date) values (34, 9, 25455, 'item 2', '11/4/2022');
insert into bill (id, patient_id, total, items, date) values (35, 33, 10089, 'item 6', '4/21/2022');
insert into bill (id, patient_id, total, items, date) values (36, 31, 24233, 'item 1', '8/2/2022');
insert into bill (id, patient_id, total, items, date) values (37, 3, 1829, 'item 6', '11/21/2022');
insert into bill (id, patient_id, total, items, date) values (38, 34, 17075, 'item 1', '3/28/2022');
insert into bill (id, patient_id, total, items, date) values (39, 30, 87908, 'item 4', '1/29/2022');
insert into bill (id, patient_id, total, items, date) values (40, 3, 51211, 'item 6', '5/31/2022');
insert into bill (id, patient_id, total, items, date) values (41, 32, 14739, 'item 4', '4/8/2022');
insert into bill (id, patient_id, total, items, date) values (42, 10, 13813, 'item 5', '2/1/2022');
insert into bill (id, patient_id, total, items, date) values (43, 35, 70312, 'item 4', '9/15/2022');
insert into bill (id, patient_id, total, items, date) values (44, 5, 55480, 'item 3', '12/6/2021');
insert into bill (id, patient_id, total, items, date) values (45, 38, 31767, 'item 3', '11/11/2022');
insert into bill (id, patient_id, total, items, date) values (46, 25, 72464, 'item 2', '10/5/2022');
insert into bill (id, patient_id, total, items, date) values (47, 21, 40735, 'item 1', '12/11/2021');
insert into bill (id, patient_id, total, items, date) values (48, 28, 33588, 'item 5', '9/3/2022');
insert into bill (id, patient_id, total, items, date) values (49, 12, 75459, 'item 5', '9/10/2022');
insert into bill (id, patient_id, total, items, date) values (50, 7, 40988, 'item 4', '7/12/2022');
insert into bill (id, patient_id, total, items, date) values (51, 13, 77614, 'item 2', '10/12/2022');
insert into bill (id, patient_id, total, items, date) values (52, 36, 88127, 'item 2', '2/13/2022');
insert into bill (id, patient_id, total, items, date) values (53, 27, 92533, 'item 6', '12/1/2021');
insert into bill (id, patient_id, total, items, date) values (54, 18, 75901, 'item 6', '3/17/2022');
insert into bill (id, patient_id, total, items, date) values (55, 29, 1241, 'item 2', '3/24/2022');
insert into bill (id, patient_id, total, items, date) values (56, 19, 39264, 'item 6', '10/4/2022');
insert into bill (id, patient_id, total, items, date) values (57, 37, 13216, 'item 1', '11/14/2022');
insert into bill (id, patient_id, total, items, date) values (58, 8, 32280, 'item 5', '6/11/2022');
insert into bill (id, patient_id, total, items, date) values (59, 1, 51892, 'item 1', '6/5/2022');
insert into bill (id, patient_id, total, items, date) values (60, 2, 15578, 'item 2', '12/13/2021');
insert into bill (id, patient_id, total, items, date) values (61, 26, 54755, 'item 1', '8/4/2022');
insert into bill (id, patient_id, total, items, date) values (62, 34, 14155, 'item 6', '10/8/2022');
insert into bill (id, patient_id, total, items, date) values (63, 16, 84472, 'item 1', '9/19/2022');
insert into bill (id, patient_id, total, items, date) values (64, 14, 60774, 'item 6', '1/24/2022');
insert into bill (id, patient_id, total, items, date) values (65, 6, 5587, 'item 6', '4/3/2022');
insert into bill (id, patient_id, total, items, date) values (66, 23, 19293, 'item 4', '1/7/2022');
insert into bill (id, patient_id, total, items, date) values (67, 17, 79587, 'item 2', '5/11/2022');
insert into bill (id, patient_id, total, items, date) values (68, 20, 63071, 'item 2', '3/22/2022');
insert into bill (id, patient_id, total, items, date) values (69, 24, 71608, 'item 6', '5/31/2022');
insert into bill (id, patient_id, total, items, date) values (70, 4, 8769, 'item 6', '5/14/2022');
insert into bill (id, patient_id, total, items, date) values (71, 9, 34723, 'item 2', '6/10/2022');
insert into bill (id, patient_id, total, items, date) values (72, 15, 25997, 'item 4', '8/9/2022');
insert into bill (id, patient_id, total, items, date) values (73, 11, 39952, 'item 6', '6/23/2022');
insert into bill (id, patient_id, total, items, date) values (74, 33, 55125, 'item 5', '8/16/2022');
insert into bill (id, patient_id, total, items, date) values (75, 22, 72360, 'item 2', '12/22/2021');
insert into bill (id, patient_id, total, items, date) values (76, 31, 35843, 'item 6', '8/15/2022');
insert into bill (id, patient_id, total, items, date) values (77, 24, 2418, 'item 1', '11/18/2022');
insert into bill (id, patient_id, total, items, date) values (78, 6, 49128, 'item 6', '6/7/2022');
insert into bill (id, patient_id, total, items, date) values (79, 16, 50082, 'item 1', '5/27/2022');
insert into bill (id, patient_id, total, items, date) values (80, 37, 91106, 'item 5', '2/5/2022');
insert into bill (id, patient_id, total, items, date) values (81, 19, 19603, 'item 4', '1/29/2022');
insert into bill (id, patient_id, total, items, date) values (82, 32, 20423, 'item 3', '11/21/2022');
insert into bill (id, patient_id, total, items, date) values (83, 29, 69811, 'item 1', '10/2/2022');
insert into bill (id, patient_id, total, items, date) values (84, 2, 26346, 'item 5', '11/5/2022');
insert into bill (id, patient_id, total, items, date) values (85, 25, 67081, 'item 5', '9/22/2022');
insert into bill (id, patient_id, total, items, date) values (86, 38, 27008, 'item 5', '8/31/2022');
insert into bill (id, patient_id, total, items, date) values (87, 36, 58964, 'item 4', '6/19/2022');
insert into bill (id, patient_id, total, items, date) values (88, 33, 11188, 'item 5', '10/31/2022');
insert into bill (id, patient_id, total, items, date) values (89, 17, 98230, 'item 1', '6/30/2022');
insert into bill (id, patient_id, total, items, date) values (90, 4, 42900, 'item 2', '2/10/2022');
insert into bill (id, patient_id, total, items, date) values (91, 13, 82733, 'item 3', '1/30/2022');
insert into bill (id, patient_id, total, items, date) values (92, 23, 49212, 'item 2', '1/10/2022');
insert into bill (id, patient_id, total, items, date) values (93, 10, 67322, 'item 1', '10/20/2022');
insert into bill (id, patient_id, total, items, date) values (94, 30, 65452, 'item 3', '4/21/2022');
insert into bill (id, patient_id, total, items, date) values (95, 26, 25832, 'item 5', '3/28/2022');
insert into bill (id, patient_id, total, items, date) values (96, 8, 3419, 'item 3', '4/16/2022');
insert into bill (id, patient_id, total, items, date) values (97, 35, 84036, 'item 3', '1/7/2022');
insert into bill (id, patient_id, total, items, date) values (98, 7, 33078, 'item 4', '8/4/2022');
insert into bill (id, patient_id, total, items, date) values (99, 3, 83443, 'item 5', '7/19/2022');
insert into bill (id, patient_id, total, items, date) values (100, 20, 97821, 'item 1', '2/26/2022');
insert into bill (id, patient_id, total, items, date) values (101, 21, 50637, 'item 3', '7/22/2022');
insert into bill (id, patient_id, total, items, date) values (102, 9, 43701, 'item 5', '3/31/2022');
insert into bill (id, patient_id, total, items, date) values (103, 28, 21735, 'item 1', '8/25/2022');
insert into bill (id, patient_id, total, items, date) values (104, 27, 32278, 'item 6', '7/15/2022');
insert into bill (id, patient_id, total, items, date) values (105, 34, 15697, 'item 4', '4/6/2022');
insert into bill (id, patient_id, total, items, date) values (106, 14, 73477, 'item 2', '9/3/2022');
insert into bill (id, patient_id, total, items, date) values (107, 11, 74031, 'item 5', '5/27/2022');
insert into bill (id, patient_id, total, items, date) values (108, 31, 25038, 'item 5', '11/29/2021');
insert into bill (id, patient_id, total, items, date) values (109, 15, 29993, 'item 4', '4/21/2022');
insert into bill (id, patient_id, total, items, date) values (110, 18, 11558, 'item 3', '7/23/2022');
insert into bill (id, patient_id, total, items, date) values (111, 12, 91165, 'item 5', '2/13/2022');
insert into bill (id, patient_id, total, items, date) values (112, 1, 9965, 'item 2', '12/9/2021');
insert into bill (id, patient_id, total, items, date) values (113, 22, 56968, 'item 3', '4/9/2022');
insert into bill (id, patient_id, total, items, date) values (114, 5, 1451, 'item 5', '12/25/2021');
insert into bill (id, patient_id, total, items, date) values (115, 30, 86823, 'item 3', '7/25/2022');
insert into bill (id, patient_id, total, items, date) values (116, 4, 38153, 'item 3', '11/9/2022');
insert into bill (id, patient_id, total, items, date) values (117, 3, 4710, 'item 4', '4/27/2022');
insert into bill (id, patient_id, total, items, date) values (118, 27, 89469, 'item 1', '9/1/2022');
insert into bill (id, patient_id, total, items, date) values (119, 14, 35298, 'item 2', '3/19/2022');
insert into bill (id, patient_id, total, items, date) values (120, 37, 56278, 'item 5', '11/26/2021');
insert into bill (id, patient_id, total, items, date) values (121, 2, 17796, 'item 4', '10/21/2022');
insert into bill (id, patient_id, total, items, date) values (122, 9, 42354, 'item 5', '6/28/2022');
insert into bill (id, patient_id, total, items, date) values (123, 19, 10666, 'item 3', '1/14/2022');
insert into bill (id, patient_id, total, items, date) values (124, 24, 20592, 'item 1', '8/30/2022');
insert into bill (id, patient_id, total, items, date) values (125, 12, 97873, 'item 2', '8/1/2022');
insert into bill (id, patient_id, total, items, date) values (126, 5, 89105, 'item 2', '7/21/2022');
insert into bill (id, patient_id, total, items, date) values (127, 33, 63590, 'item 2', '7/9/2022');
insert into bill (id, patient_id, total, items, date) values (128, 20, 30094, 'item 2', '1/15/2022');
insert into bill (id, patient_id, total, items, date) values (129, 7, 94122, 'item 1', '1/25/2022');
insert into bill (id, patient_id, total, items, date) values (130, 18, 50471, 'item 2', '6/6/2022');
insert into bill (id, patient_id, total, items, date) values (131, 34, 98519, 'item 2', '7/10/2022');
insert into bill (id, patient_id, total, items, date) values (132, 13, 22521, 'item 2', '11/12/2022');
insert into bill (id, patient_id, total, items, date) values (133, 21, 99969, 'item 2', '7/15/2022');
insert into bill (id, patient_id, total, items, date) values (134, 38, 99960, 'item 6', '1/27/2022');
insert into bill (id, patient_id, total, items, date) values (135, 10, 72379, 'item 1', '6/13/2022');
insert into bill (id, patient_id, total, items, date) values (136, 36, 12920, 'item 3', '1/25/2022');
insert into bill (id, patient_id, total, items, date) values (137, 32, 20001, 'item 4', '9/23/2022');
insert into bill (id, patient_id, total, items, date) values (138, 31, 94099, 'item 3', '3/6/2022');
insert into bill (id, patient_id, total, items, date) values (139, 11, 11554, 'item 2', '3/28/2022');
insert into bill (id, patient_id, total, items, date) values (140, 1, 21581, 'item 6', '12/5/2021');
insert into bill (id, patient_id, total, items, date) values (141, 23, 53682, 'item 2', '12/1/2021');
insert into bill (id, patient_id, total, items, date) values (142, 16, 96389, 'item 4', '5/25/2022');
insert into bill (id, patient_id, total, items, date) values (143, 28, 53069, 'item 4', '6/10/2022');
insert into bill (id, patient_id, total, items, date) values (144, 35, 70298, 'item 6', '10/21/2022');
insert into bill (id, patient_id, total, items, date) values (145, 8, 94027, 'item 6', '6/9/2022');
insert into bill (id, patient_id, total, items, date) values (146, 26, 9494, 'item 4', '7/14/2022');
insert into bill (id, patient_id, total, items, date) values (147, 22, 69462, 'item 2', '9/20/2022');
insert into bill (id, patient_id, total, items, date) values (148, 6, 24384, 'item 5', '12/6/2021');
insert into bill (id, patient_id, total, items, date) values (149, 29, 83971, 'item 2', '2/15/2022');
insert into bill (id, patient_id, total, items, date) values (150, 25, 14493, 'item 6', '9/23/2022');
insert into bill (id, patient_id, total, items, date) values (151, 17, 34336, 'item 5', '12/13/2021');
insert into bill (id, patient_id, total, items, date) values (152, 15, 15049, 'item 3', '9/23/2022');
insert into bill (id, patient_id, total, items, date) values (153, 13, 95348, 'item 1', '7/15/2022');
insert into bill (id, patient_id, total, items, date) values (154, 26, 57591, 'item 3', '4/15/2022');
insert into bill (id, patient_id, total, items, date) values (155, 16, 54886, 'item 4', '12/13/2021');
insert into bill (id, patient_id, total, items, date) values (156, 35, 94270, 'item 1', '11/13/2022');
insert into bill (id, patient_id, total, items, date) values (157, 5, 2204, 'item 1', '11/9/2022');
insert into bill (id, patient_id, total, items, date) values (158, 33, 73130, 'item 6', '1/1/2022');
insert into bill (id, patient_id, total, items, date) values (159, 2, 11509, 'item 1', '7/1/2022');
insert into bill (id, patient_id, total, items, date) values (160, 12, 24556, 'item 2', '11/27/2021');

# Insurance Plan Table
create table insurance_plan (
	id INT,
	provider_id INT,
	patient_id INT,
	plan_name TEXT,
	yearly_cost INT,
	covers TEXT,
	PRIMARY KEY (id),
	FOREIGN KEY (provider_id) REFERENCES insurance_company (id),
	FOREIGN KEY (patient_id) REFERENCES patient (id)
);
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (1, 21, 36, 'sollicitudin mi sit amet lobortis sapien sapien non mi integer ac', 2484, 'pede ac diam cras pellentesque volutpat dui maecenas tristique est et');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (2, 12, 29, 'sit amet eros suspendisse accumsan tortor quis turpis sed ante', 9222, 'cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (3, 3, 23, 'et tempus semper est quam pharetra magna ac consequat metus sapien', 6370, 'id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (4, 25, 27, 'nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque', 1743, 'sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (5, 20, 26, 'ipsum aliquam non mauris morbi non lectus aliquam sit amet diam', 2846, 'nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (6, 23, 32, 'sed sagittis nam congue risus semper porta volutpat quam pede', 1119, 'in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (7, 2, 38, 'eu est congue elementum in hac habitasse platea dictumst morbi', 6314, 'tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (8, 6, 16, 'vel enim sit amet nunc viverra dapibus nulla suscipit ligula in', 7777, 'quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (9, 17, 35, 'non pretium quis lectus suspendisse potenti in eleifend quam a odio', 2338, 'semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (10, 14, 37, 'aenean fermentum donec ut mauris eget massa tempor convallis nulla', 5952, 'ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (11, 4, 3, 'enim leo rhoncus sed vestibulum sit amet cursus id turpis integer', 2403, 'sit amet lobortis sapien sapien non mi integer ac neque duis');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (12, 18, 34, 'suspendisse potenti in eleifend quam a odio in hac habitasse', 6506, 'tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (13, 16, 4, 'luctus et ultrices posuere cubilia curae duis faucibus accumsan odio', 3362, 'sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (14, 1, 9, 'sed interdum venenatis turpis enim blandit mi in porttitor pede', 7279, 'in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (15, 15, 24, 'donec ut dolor morbi vel lectus in quam fringilla rhoncus', 4366, 'cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (16, 8, 18, 'vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa', 7606, 'in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (17, 22, 6, 'luctus et ultrices posuere cubilia curae duis faucibus accumsan odio', 4520, 'tellus nulla ut erat id mauris vulputate elementum nullam varius');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (18, 19, 25, 'vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis', 9041, 'aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (19, 24, 30, 'adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut', 1390, 'nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (20, 26, 2, 'vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus', 8187, 'vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (21, 7, 13, 'donec dapibus duis at velit eu est congue elementum in', 7886, 'amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (22, 10, 19, 'fusce consequat nulla nisl nunc nisl duis bibendum felis sed', 5489, 'habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (23, 9, 5, 'metus vitae ipsum aliquam non mauris morbi non lectus aliquam', 4008, 'sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (24, 13, 21, 'pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in', 5983, 'phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (25, 5, 10, 'molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget', 8755, 'volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (26, 11, 33, 'mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit', 6646, 'lacus purus aliquet at feugiat non pretium quis lectus suspendisse');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (27, 11, 11, 'purus sit amet nulla quisque arcu libero rutrum ac lobortis', 8540, 'nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (28, 2, 15, 'mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula', 7669, 'sit amet justo morbi ut odio cras mi pede malesuada');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (29, 8, 17, 'ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris', 1851, 'viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (30, 22, 14, 'platea dictumst etiam faucibus cursus urna ut tellus nulla ut', 9977, 'eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (31, 14, 12, 'in quis justo maecenas rhoncus aliquam lacus morbi quis tortor', 3377, 'libero ut massa volutpat convallis morbi odio odio elementum eu');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (32, 25, 8, 'feugiat et eros vestibulum ac est lacinia nisi venenatis tristique', 2836, 'maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (33, 18, 22, 'amet diam in magna bibendum imperdiet nullam orci pede venenatis non', 9948, 'lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (34, 15, 1, 'est quam pharetra magna ac consequat metus sapien ut nunc', 3411, 'in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (35, 5, 31, 'potenti nullam porttitor lacus at turpis donec posuere metus vitae', 6772, 'vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (36, 9, 7, 'hac habitasse platea dictumst etiam faucibus cursus urna ut tellus', 7317, 'amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (37, 19, 28, 'at velit eu est congue elementum in hac habitasse platea', 4357, 'vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (38, 1, 20, 'justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis', 8307, 'neque sapien placerat ante nulla justo aliquam quis turpis eget');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (39, 10, 38, 'lacus morbi quis tortor id nulla ultrices aliquet maecenas leo', 1584, 'convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (40, 23, 8, 'gravida nisi at nibh in hac habitasse platea dictumst aliquam', 5093, 'eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (41, 21, 31, 'vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet', 9551, 'mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (42, 7, 4, 'curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi', 9563, 'neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (43, 6, 18, 'suscipit nulla elit ac nulla sed vel enim sit amet', 3469, 'sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (44, 16, 25, 'posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet', 5453, 'in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (45, 12, 14, 'mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh', 2014, 'consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (46, 24, 17, 'ipsum integer a nibh in quis justo maecenas rhoncus aliquam', 7906, 'gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (47, 26, 33, 'nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis', 5794, 'fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (48, 17, 24, 'sagittis dui vel nisl duis ac nibh fusce lacus purus', 6560, 'in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (49, 20, 6, 'diam erat fermentum justo nec condimentum neque sapien placerat ante nulla', 8241, 'sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (50, 13, 7, 'ac consequat metus sapien ut nunc vestibulum ante ipsum primis in', 8899, 'pede ac diam cras pellentesque volutpat dui maecenas tristique est');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (51, 3, 2, 'at turpis a pede posuere nonummy integer non velit donec', 2075, 'primis in faucibus orci luctus et ultrices posuere cubilia curae nulla');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (52, 4, 37, 'hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla', 2765, 'felis donec semper sapien a libero nam dui proin leo');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (53, 26, 29, 'nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti', 6820, 'luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (54, 13, 34, 'nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam', 7534, 'nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (55, 19, 35, 'nunc proin at turpis a pede posuere nonummy integer non velit', 8471, 'duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (56, 21, 23, 'in tempus sit amet sem fusce consequat nulla nisl nunc nisl', 4452, 'ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (57, 4, 5, 'tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl', 8805, 'ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (58, 1, 32, 'nulla integer pede justo lacinia eget tincidunt eget tempus vel', 9488, 'vulputate luctus cum sociis natoque penatibus et magnis dis parturient');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (59, 23, 12, 'elementum nullam varius nulla facilisi cras non velit nec nisi', 4994, 'odio donec vitae nisi nam ultrices libero non mattis pulvinar');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (60, 25, 10, 'pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor', 7969, 'quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (61, 20, 27, 'at ipsum ac tellus semper interdum mauris ullamcorper purus sit', 2861, 'commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (62, 5, 9, 'vestibulum ac est lacinia nisi venenatis tristique fusce congue diam', 7659, 'amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (63, 17, 22, 'ut at dolor quis odio consequat varius integer ac leo', 9897, 'mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (64, 2, 13, 'dui proin leo odio porttitor id consequat in consequat ut', 7951, 'hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (65, 8, 3, 'bibendum felis sed interdum venenatis turpis enim blandit mi in', 6383, 'iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales');
insert into insurance_plan (id, provider_id, patient_id, plan_name, yearly_cost, covers) values (66, 12, 28, 'consequat nulla nisl nunc nisl duis bibendum felis sed interdum', 7962, 'potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam');

# Insurance Claim Table
create table insurance_claim (
	id INT,
	bill_id INT,
	claim_patient_id INT,
	insurance_id INT,
	claim_date VARCHAR(50),
	claim_amount INT,
	completed VARCHAR(50),
	PRIMARY KEY (id),
	FOREIGN KEY (bill_id) REFERENCES bill (id),
	FOREIGN KEY (claim_patient_id) REFERENCES patient (id),
	FOREIGN KEY (insurance_id) REFERENCES insurance_plan (id)
);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (1, 99, 8, 60, 'Female', 93453, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (2, 36, 17, 34, 'Female', 87608, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (3, 132, 36, 10, 'Genderfluid', 91382, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (4, 7, 14, 21, 'Female', 79412, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (5, 30, 24, 40, 'Male', 47396, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (6, 118, 12, 35, 'Male', 55666, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (7, 77, 20, 26, 'Bigender', 31566, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (8, 15, 15, 23, 'Male', 1226, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (9, 138, 26, 27, 'Female', 29432, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (10, 23, 28, 18, 'Female', 58608, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (11, 69, 32, 2, 'Male', 36793, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (12, 108, 4, 16, 'Male', 38149, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (13, 158, 22, 61, 'Female', 19733, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (14, 125, 7, 33, 'Female', 45737, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (15, 66, 35, 14, 'Bigender', 33182, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (16, 74, 6, 43, 'Female', 67696, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (17, 60, 34, 9, 'Non-binary', 75226, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (18, 152, 11, 3, 'Female', 99808, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (19, 61, 16, 25, 'Female', 75093, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (20, 58, 27, 51, 'Female', 73781, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (21, 8, 9, 36, 'Female', 13111, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (22, 91, 37, 1, 'Male', 76954, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (23, 54, 25, 19, 'Male', 67445, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (24, 107, 3, 46, 'Female', 83482, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (25, 47, 33, 41, 'Female', 14137, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (26, 79, 31, 15, 'Female', 34310, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (27, 80, 38, 57, 'Female', 87753, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (28, 52, 13, 22, 'Male', 94966, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (29, 140, 10, 55, 'Female', 59663, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (30, 43, 30, 17, 'Polygender', 28165, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (31, 81, 19, 37, 'Female', 31122, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (32, 112, 2, 31, 'Female', 70856, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (33, 11, 23, 42, 'Male', 2396, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (34, 75, 29, 47, 'Male', 49142, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (35, 127, 1, 29, 'Male', 73975, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (36, 110, 21, 65, 'Female', 31622, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (37, 71, 18, 48, 'Female', 32118, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (38, 62, 5, 39, 'Female', 86594, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (39, 157, 18, 66, 'Non-binary', 97703, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (40, 147, 1, 30, 'Male', 2181, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (41, 87, 20, 20, 'Genderfluid', 84574, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (42, 26, 30, 7, 'Female', 75981, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (43, 88, 22, 32, 'Female', 35435, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (44, 18, 13, 58, 'Female', 46387, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (45, 105, 2, 6, 'Female', 22354, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (46, 13, 14, 64, 'Male', 76255, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (47, 19, 33, 56, 'Male', 38588, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (48, 63, 38, 52, 'Female', 76090, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (49, 124, 23, 63, 'Male', 66049, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (50, 150, 17, 50, 'Female', 88746, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (51, 86, 27, 24, 'Female', 30956, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (52, 153, 9, 12, 'Male', 72847, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (53, 41, 10, 4, 'Male', 10695, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (54, 156, 12, 53, 'Male', 13268, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (55, 104, 32, 44, 'Female', 12534, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (56, 101, 21, 54, 'Male', 29282, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (57, 117, 28, 49, 'Male', 93544, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (58, 83, 34, 62, 'Female', 49531, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (59, 64, 15, 59, 'Female', 95961, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (60, 159, 31, 45, 'Female', 16106, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (61, 134, 36, 5, 'Male', 10831, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (62, 45, 6, 13, 'Female', 63454, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (63, 111, 11, 11, 'Male', 59189, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (64, 114, 37, 8, 'Female', 77503, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (65, 70, 29, 38, 'Male', 42959, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (66, 6, 26, 28, 'Female', 46392, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (67, 67, 24, 46, 'Female', 56880, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (68, 146, 8, 47, 'Female', 12523, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (69, 48, 4, 39, 'Female', 89538, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (70, 93, 35, 22, 'Female', 98823, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (71, 1, 25, 63, 'Female', 80458, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (72, 14, 16, 64, 'Female', 12356, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (73, 119, 7, 7, 'Female', 98980, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (74, 34, 19, 20, 'Female', 7887, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (75, 151, 5, 3, 'Male', 14978, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (76, 144, 3, 49, 'Male', 84938, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (77, 84, 17, 41, 'Female', 7781, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (78, 98, 30, 9, 'Female', 95013, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (79, 135, 9, 45, 'Male', 95034, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (80, 21, 27, 24, 'Non-binary', 42276, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (81, 53, 6, 5, 'Female', 4267, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (82, 122, 28, 18, 'Female', 93016, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (83, 50, 25, 14, 'Male', 9307, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (84, 116, 3, 65, 'Female', 1918, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (85, 9, 5, 33, 'Male', 45840, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (86, 28, 35, 61, 'Male', 44332, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (87, 31, 7, 34, 'Female', 66940, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (88, 145, 24, 52, 'Male', 96310, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (89, 92, 15, 58, 'Genderfluid', 97086, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (90, 142, 8, 56, 'Polygender', 23457, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (91, 72, 22, 43, 'Female', 98503, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (92, 17, 32, 62, 'Female', 37412, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (93, 5, 1, 19, 'Female', 13206, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (94, 106, 12, 26, 'Female', 93673, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (95, 100, 31, 31, 'Female', 19641, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (96, 95, 14, 53, 'Male', 55291, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (97, 2, 33, 6, 'Male', 20714, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (98, 115, 29, 35, 'Female', 6975, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (99, 96, 4, 27, 'Male', 9157, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (100, 29, 13, 30, 'Female', 39819, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (101, 55, 11, 66, 'Male', 8177, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (102, 109, 10, 37, 'Male', 12279, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (103, 40, 16, 23, 'Female', 15870, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (104, 89, 37, 1, 'Male', 4359, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (105, 4, 18, 16, 'Male', 88533, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (106, 85, 26, 25, 'Male', 43796, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (107, 136, 19, 44, 'Female', 51908, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (108, 49, 2, 17, 'Male', 94681, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (109, 126, 38, 11, 'Male', 21784, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (110, 121, 36, 21, 'Male', 2274, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (111, 59, 34, 36, 'Female', 9372, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (112, 25, 21, 15, 'Male', 3728, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (113, 154, 23, 28, 'Male', 74228, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (114, 27, 20, 50, 'Female', 18638, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (115, 123, 11, 60, 'Female', 1338, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (116, 46, 38, 51, 'Bigender', 61361, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (117, 139, 31, 59, 'Female', 64462, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (118, 73, 10, 29, 'Female', 98423, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (119, 35, 4, 4, 'Male', 28329, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (120, 78, 21, 54, 'Agender', 69346, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (121, 16, 37, 42, 'Genderfluid', 1760, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (122, 65, 9, 13, 'Male', 2485, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (123, 12, 29, 8, 'Male', 64729, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (124, 32, 1, 32, 'Female', 95871, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (125, 97, 23, 38, 'Male', 54152, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (126, 44, 26, 10, 'Male', 48729, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (127, 120, 15, 12, 'Male', 3263, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (128, 82, 6, 40, 'Genderfluid', 20125, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (129, 103, 28, 55, 'Male', 4839, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (130, 37, 2, 57, 'Agender', 4223, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (131, 141, 30, 48, 'Female', 90997, false);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (132, 57, 18, 2, 'Female', 66539, true);
insert into insurance_claim (id, bill_id, claim_patient_id, insurance_id, claim_date, claim_amount, completed) values (133, 51, 7, 4, 'Male', 53779, true);

# Medication Table
create table medication (
	id INT,
	drug_name VARCHAR(200),
	chemical_name VARCHAR(500),
	manufacturer VARCHAR(200),
	ingestion VARCHAR(6),
	side_effects TEXT,
	PRIMARY KEY (id)
);
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (1, 'IRBESARTAN', 'IRBESARTAN', 'Apotex Corp.', 'spray', 'curabitur');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (2, 'Amlodipine', 'Amlodipine', 'Macleods Pharmaceuticals Limited', 'gel', 'suspendisse');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (3, 'Stool Softener', 'DOCUSATE SODIUM', 'Hy-Vee', 'spray', 'felis donec semper sapien a');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (4, 'Peptic Relief', 'Bismuth Subsalicylate', 'Equaline', 'spray', 'magnis dis parturient montes nascetur ridiculus');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (5, 'Triadine Whirlpool', 'povidone-iodine', 'H and P Industries, Inc. dba Triad Group', 'spray', 'mi sit amet lobortis sapien sapien');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (6, 'ACCURETIC', 'quinapril hydrochloride and hydrochlorothiazide', 'Parke-Davis Div of Pfizer Inc', 'liquid', 'eu felis fusce posuere felis sed lacus');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (7, 'CVS COLD AND HOT MEDICATED XL', 'MENTHOL', 'CVS PHARMACY, INC.', 'tablet', 'non interdum in ante vestibulum ante ipsum');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (8, 'Esika', 'OCTINOXATE and TITANIUM DIOXIDE', 'Ventura Corporation (San Juan, P.R)', 'spray', 'convallis nulla neque libero');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (9, 'Atenolol', 'Atenolol', 'RedPharm Drug Inc.', 'spray', 'eget tempus vel pede morbi porttitor lorem id ligula');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (10, 'Mirapharm-22', 'PANAX GINSENG WHOLE', 'Uni Bio-Tech Inc', 'tablet', 'risus semper porta');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (11, 'Diazepam', 'Diazepam', 'Teva Pharmaceuticals USA Inc', 'pill', 'rhoncus aliquet pulvinar sed nisl nunc');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (12, 'CC', 'Titanium dioxide', 'CHANEL PARFUMS BEAUTE', 'tablet', 'ut suscipit');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (13, 'CardinalHealth alcohol prep pads MEDIUM', 'ISOPROPYL ALCOHOL', 'Cardinal Health', 'pill', 'praesent id massa id nisl venenatis lacinia');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (14, 'BENAZEPRIL HYDROCHLORIDE', 'Benazepril hydrochloride', 'Trigen Laboratories, Inc.', 'spray', 'sit amet lobortis sapien sapien');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (15, 'Zaliex ALCOHOL-FREE Antiseptic Hand Sanitizer', 'BENZALKONIUM CHLORIDE', 'SAS Healthcare Inc', 'gel', 'congue eget semper rutrum nulla nunc');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (16, 'Alka-Seltzer Plus Severe Cold, Mucus and Congestion', 'Acetaminophen, Dextromethorphan hydrobromide, guaifenesin, and Phenylephrine hydrochloride', 'Bayer HealthCare LLC, Consumer Care', 'tablet', 'hac habitasse platea dictumst maecenas ut massa quis augue luctus');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (17, 'Wormwood', 'Wormwook', 'Nelco Laboratories, Inc.', 'pill', 'pellentesque ultrices mattis odio donec vitae nisi nam');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (18, 'QUALAQUIN', 'QUININE SULFATE', 'STAT RX USA LLC', 'liquid', 'sem praesent id massa id nisl');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (19, 'Citrus Urtica comp. Special Order', 'Citrus Urtica comp. Special Order', 'Uriel Pharmacy Inc.', 'gel', 'semper interdum mauris ullamcorper');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (20, 'Donepezil Hydrochloride', 'Donepezil Hydrochloride', 'NorthStar RxLLC', 'spray', 'ac lobortis vel dapibus at');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (21, 'Blue Star', 'Camphor', 'GHC Group, LLC', 'tablet', 'non mi integer ac neque duis bibendum morbi non');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (22, 'EpiPen', 'epinephrine', 'Physicians Total Care, Inc.', 'liquid', 'sit amet turpis elementum ligula');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (23, 'Fluconazole', 'Fluconazole', 'IVAX Pharmaceuticals, Inc.', 'gel', 'habitasse platea dictumst maecenas ut massa quis augue luctus');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (24, 'Humco Glycerin and Artificial Rose Water', 'Glycerin', 'Humco Holding Gruop, Inc.', 'pill', '');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (25, 'Carbamazepine', 'Carbamazepine', 'Sandoz Inc', 'gel', 'ac enim in');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (26, 'Refuge HC', 'Hydrocortisone', 'CoValence Inc.', 'pill', 'felis eu sapien cursus vestibulum proin eu mi nulla');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (27, 'Oxygen', 'Oxygen', 'Lowry Drug Company Inc.', 'pill', 'est quam pharetra magna ac consequat metus sapien');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (28, 'Primidone', 'Primidone', 'Amneal Pharmaceuticals', 'spray', 'et tempus semper est quam pharetra magna ac');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (29, 'OXYCODONE AND ACETAMINOPHEN', 'oxycodone hydrochloride and acetaminophen', 'Mallinckrodt, Inc.', 'gel', 'ligula vehicula consequat morbi a');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (30, 'Ibuprofen and Pseudoephedrine hydrochloride', 'ibuprofen and pseudoephedrine hydrochloride', 'Ohm Laboratories Inc.', 'tablet', 'ultrices aliquet maecenas leo odio condimentum id luctus nec molestie');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (31, 'Equaline Allergy', 'Chlorpheniramine Maleate', 'Supervalu Inc', 'pill', 'in faucibus orci luctus et ultrices posuere');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (32, 'Rheumatism', 'Benzoicum acidum, Pulsatilla, Rhododendron chrysanthum, Spiraea ulmaria, Aconitum napellus, Dulcamara, Euphorbium officinarum, Ledum palustre, Asclepias tuberosa, Lithium benzoicum,', 'Deseret Biologicals, Inc.', 'liquid', 'nisl duis bibendum felis sed interdum venenatis turpis');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (33, 'Omeprazole', 'Omeprazole', 'Proficient Rx LP', 'gel', 'tortor risus dapibus augue');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (34, 'Pioglitazone Hydrochloride', 'Pioglitazone Hydrochloride', 'Actavis Pharma, Inc.', 'liquid', 'quam turpis adipiscing lorem vitae mattis nibh ligula nec');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (35, 'Clobetasol Propionate', 'Clobetasol Propionate', 'Preferred Pharmaceuticals, Inc.', 'pill', 'porttitor lacus at turpis donec posuere metus vitae');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (36, 'metformin hydrochloride', 'metformin hydrochloride', 'Eon Labs, Inc.', 'tablet', '');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (37, 'FENTANYL TRANSDERMAL SYSTEM', 'fentanyl transdermal system', 'Lake Erie Medical DBA Quality Care Products LLC', 'spray', 'praesent blandit');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (38, 'Lamisil AT', 'Terbinafine Hydrochloride', 'Novartis Consumer Health, Inc.', 'liquid', 'at velit vivamus vel nulla eget eros elementum pellentesque');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (39, 'Motto', 'sulfur', 'Motto-Elektro Ltd.', 'liquid', '');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (40, 'QUIXIN', 'levofloxacin', 'Vistakon Pharmaceuticals LLC', 'tablet', 'nulla facilisi cras non');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (41, 'R-Gene', 'Arginine Hydrochloride', 'Pharmacia and Upjohn Company', 'tablet', '');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (42, 'Fentanyl', 'Fentanyl', 'Lake Erie Medical & Surgical Supply DBA Quality Care Products LLC', 'pill', 'nullam porttitor lacus at turpis donec posuere metus vitae');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (43, 'hydrocodone bitartrate and acetaminophen', 'hydrocodone bitartrate and acetaminophen', 'Talec Pharma, LLC', 'spray', 'nibh in quis justo maecenas rhoncus aliquam lacus');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (44, 'Quality Choice Ibuprofen 200', 'Ibuprofen', 'Chain Drug Marketing Association', 'spray', 'leo maecenas pulvinar lobortis est phasellus sit amet erat nulla');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (45, 'Ibuprofen', 'Ibuprofen', 'REMEDYREPACK INC.', 'tablet', 'praesent');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (46, 'Hevert Stress Relief', 'BLACK COHOSH, ANAMIRTA COCCULUS SEED, CYPRIPEDIUM PARVIFOLUM ROOT, STRYCHNOS IGNATII SEED, LILIUM LANCIFOLIUM FLOWERING TOP, PASSIFLORA INCARNATA FLOWERING TOP, PLATINUM, VALERIAN, and ZINC VALERATE DIHYDRATE', 'Hevert Pharmaceuticals LLC', 'pill', 'dapibus augue vel accumsan tellus nisi eu orci mauris');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (47, 'ANTI-AGING TINTED MOISTURIZER', 'AVOBENZONE, OCTINOXATE, OCTISALATE, OXYBENZONE', 'Dedra LLC', 'liquid', 'orci pede venenatis non');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (48, 'Colgate Triple Action Original Mint Fluoride', 'Sodium Fluoride', 'Colgate-Palmolive Canada', 'spray', 'in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (49, 'ESIKA', 'Octinoxate and Oxybenzone', 'Ventura Corporation (San Juan, P.R)', 'liquid', 'non');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (50, 'Childrens Pain and Fever', 'Acetaminophen', 'Kroger Company', 'tablet', 'commodo placerat praesent blandit nam nulla integer pede justo lacinia');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (51, 'SUN Solar Defense Hydrating', 'Zinc Oxide, Ethylhexyl Methoxycinnamate, Benzophenone, Ethylhexyl Salicylate', 'Allure Labs, Inc.', 'tablet', 'nullam molestie nibh in');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (52, 'Sinus and Allergy', 'Chlorpheniramine Maleate and Phenylephrine HCl', 'Stephen L. LaFrance Pharmacy, Inc.', 'spray', 'lorem vitae mattis nibh ligula nec sem');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (53, 'Dextrose', 'Dextrose', 'B. Braun Medical Inc.', 'pill', 'duis faucibus');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (54, 'Divalproex Sodium Delayed Release', 'Divalproex Sodium Delayed Release', 'REMEDYREPACK INC.', 'liquid', 'justo sit amet');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (55, 'Aveeno Active Naturals Skin Relief Moisturizing', 'Dimethicone', 'Johnson & Johnson Consumer Products Company, Division of Johnson & Johnson Consumer Companies, Inc.', 'gel', 'amet');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (56, 'Atenolol and Chlorthalidone', 'Atenolol and Chlorthalidone', 'Bryant Ranch Prepack', 'pill', 'erat id mauris vulputate elementum nullam varius nulla facilisi');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (57, 'Terrasil Wound Care', 'Allantoin, Benzethonium Chloride', 'Aidance Skincare & Topical Solutions, LLC', 'tablet', 'congue etiam justo etiam pretium');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (58, 'PANCREAZE', 'PANCRELIPASE', 'Janssen Pharmaceuticals, Inc.', 'gel', '');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (59, 'ORCHID SECRET FOUNDATION', 'TITANIUM DIOXIDE, OCTINOXATE, ZINC OXIDE', 'NATURE REPUBLIC CO., LTD.', 'gel', 'ut volutpat sapien arcu sed augue aliquam');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (60, 'Levocarnitine', 'Levocarnitine', 'Teva Parenteral Medicines, Inc.', 'tablet', 'id justo sit amet sapien dignissim vestibulum');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (61, 'Earwax Removal Aid', 'CARBAMIDE PEROXIDE', 'Major Pharmaceuticals', 'spray', 'varius integer ac leo pellentesque ultrices mattis odio');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (62, 'GODDESS GARDEN ORGANICS Sunny Kids NATURAL SUNSCREEN BROAD SPECTRUM SPF 30 WATER RESISTANT', 'TITANIUM DIOXIDE, ZINC OXIDE', 'Crossing Cultures, LLC dba Goddess Garden', 'tablet', 'a odio in hac habitasse platea');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (63, 'ENALAPRIL MALEATE', 'ENALAPRIL MALEATE', 'Rebel Distributors Corp', 'gel', 'proin risus praesent lectus vestibulum quam sapien varius ut');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (64, 'Risperidone', 'risperidone', 'Mylan Pharmaceuticals Inc.', 'liquid', 'tincidunt eu felis fusce posuere felis');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (65, 'Oxycodone Hydrochloride', 'Oxycodone Hydrochloride', 'PD-Rx Pharmaceuticals, Inc.', 'liquid', 'pulvinar nulla pede ullamcorper');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (66, 'GLONOINUM', 'GLONOINUM', 'HOMEOLAB USA INC.', 'pill', 'metus');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (67, 'Risperidone', 'Risperidone', 'State of Florida DOH Central Pharmacy', 'tablet', 'donec semper sapien a');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (68, 'Propranolol Hydrochloride', 'Propranolol Hydrochloride', 'Roxane Laboratories, Inc', 'liquid', 'integer ac neque duis bibendum morbi non');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (69, 'Hydrocortisone', 'Hydrocortisone', 'Valu Merchandisers, Co.', 'spray', 'maecenas pulvinar lobortis est phasellus sit');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (70, 'Potassium Chloride', 'Potassium Chloride', 'Sandoz Inc.', 'pill', 'donec posuere');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (71, 'naproxen sodium', 'Naproxen Sodium', 'Rite Aid Corporation', 'tablet', '');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (72, 'Ketorolac Tromethamine', 'Ketorolac Tromethamine', 'Carilion Materials Management', 'tablet', 'volutpat dui maecenas tristique est et');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (73, 'Levetiracetam', 'Levetiracetam', 'Lake Erie Medical & Surgical Supply DBA Quality Care Products LLC', 'spray', 'sapien sapien non mi integer ac neque duis bibendum morbi');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (74, 'Nighttime Sleep Aid', 'Diphenhydramine HCl', 'Western Family Foods, Inc.', 'gel', 'amet sapien dignissim');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (75, 'IT RADIANT CC IN MELTING FOUNDATION', 'TITANIUM DIOXIDE, OCTINOXATE', 'F&CO Co., Ltd.', 'tablet', 'auctor gravida sem praesent');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (76, 'NATRUM PHOSPHORICUM', 'NATRUM PHOSPHORICUM', 'HOMEOLAB USA INC', 'spray', 'blandit lacinia erat');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (77, 'AUGMENTIN', 'amoxicillin and clavulanate potassium', 'Dr. Reddy''s Laboratories Inc', 'spray', 'magnis dis parturient montes nascetur ridiculus');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (78, 'QUERCUS ALBA POLLEN', 'Oak White', 'ALK-Abello, Inc.', 'gel', 'quam fringilla rhoncus mauris enim leo rhoncus');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (79, 'ANTIBACTERIAL FOAMING', 'TRICLOSAN', 'HARRIS TEETER', 'liquid', 'est phasellus sit amet erat nulla tempus vivamus in felis');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (80, 'Eve Lom Brilliant Cover Concealer Broad Spectrum SPF 15 Sunscreen', 'Titanium Dioxide and Octinoxate', 'Space Brands Limited', 'pill', 'fusce posuere felis sed lacus morbi sem mauris laoreet ut');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (81, 'Naproxen Sodium', 'NAPROXEN SODIUM', 'Kinray LLC', 'gel', 'sit amet lobortis sapien sapien non mi integer');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (82, 'Curvularia inequalis', 'Curvularia inequalis', 'Nelco Laboratories, Inc.', 'liquid', 'accumsan tellus nisi');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (83, 'Smart Sense NightTime Cold and Flu', 'Acetaminophen, Dextromethorphan HBr, Doxylamine succinate', 'Kmart Corporation', 'pill', '');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (84, 'Oxacillin', 'Oxacillin', 'Sandoz Inc', 'spray', 'quisque id');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (85, 'Hydralazine Hydrochloride', 'Hydralazine Hydrochloride', 'Par Pharmaceutical, Inc.', 'pill', 'ante ipsum primis in faucibus orci luctus et ultrices');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (86, 'CELEBREX', 'Celecoxib', 'Cardinal Health', 'tablet', 'sed interdum venenatis turpis enim blandit mi in');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (87, 'Aspirin', 'Aspirin', 'Publix Super Markets Inc', 'gel', 'vitae quam suspendisse potenti nullam porttitor lacus');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (88, 'ADVAIR', 'fluticasone propionate and salmeterol', 'Rebel Distributors Corp.', 'gel', 'nisi at nibh in hac');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (89, 'CHLORPROMAZINE HYDROCHLORIDE', 'CHLORPROMAZINE HYDROCHLORIDE', 'REMEDYREPACK INC.', 'gel', '');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (90, 'Antioxidant Primer', 'Titanium Dioxide and Zinc Oxide', 'Bare Escentuals Beauty Inc.', 'liquid', '');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (91, 'Famvir', 'famciclovir', 'Novartis Pharmaceuticals Corporation', 'spray', 'lobortis convallis tortor risus dapibus augue vel');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (92, 'D1 Organ Support', 'not applicable', 'Restivo Chiropractic', 'tablet', 'felis sed lacus morbi');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (93, 'formu care ibuprofen', 'Ibuprofen', 'Access Business Group LLC', 'tablet', 'in sagittis dui');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (94, 'Topcare Lansoprazole', 'Lansoprazole', 'Topco Associates LLC', 'spray', 'at nunc commodo placerat praesent blandit nam nulla');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (95, 'Carbon Dioxide', 'Carbon Dioxide', 'Encompass Medical & Specialty Gases, Ltd.', 'spray', 'curae donec pharetra magna vestibulum aliquet');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (96, 'Pyridostigmine Bromide', 'Pyridostigmine Bromide', 'KAISER FOUNDATION HOSPITALS', 'spray', 'nam dui proin leo odio porttitor id consequat');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (97, 'Olanzapine', 'Olanzapine', 'Gen-Source Rx', 'liquid', 'id sapien in sapien iaculis');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (98, 'Pantoprazole Sodium', 'Pantoprazole Sodium', 'REMEDYREPACK INC.', 'gel', 'eget tincidunt eget tempus');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (99, 'Body Blends Vanilla Sugar Anti-bacterial Hand Sanitizer', 'ALCOHOL', 'Xiamen Anna Global Co., Ltd', 'gel', 'nec molestie sed justo pellentesque viverra pede ac');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (100, 'Carbon Dioxide', 'Carbon Dioxide', 'Scott-Gross Company, Inc.', 'gel', 'cras in');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (101, 'berkley and jensen pain relief', 'Acetaminophen', 'BJWC', 'liquid', '');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (102, 'Divalproex Sodium', 'divalproex sodium', 'Cardinal Health', 'tablet', 'vel ipsum praesent blandit lacinia');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (103, 'ketoconazole', 'ketoconazole', 'REMEDYREPACK INC.', 'liquid', 'purus aliquet at feugiat non pretium quis lectus');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (104, 'Nighttime Sleep Easy', 'DIPHENHYDRAMINE HCL', 'P and L Development of New York Corporation (ReadyInCase)', 'pill', 'dui maecenas tristique est et tempus semper est');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (105, 'Caduet', 'amlodipine besylate and atorvastatin calcium', 'Pfizer Laboratories Div Pfizer Inc', 'liquid', 'aliquam convallis nunc proin');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (106, 'Topiramate', 'Topiramate', 'Camber Pharmaceuticals', 'gel', 'potenti cras in purus eu magna');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (107, 'LEVAQUIN', 'levofloxacin', 'PD-Rx Pharmaceuticals, Inc.', 'tablet', 'congue etiam justo');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (108, 'Sun Beige Perfecting Makeup Broad Spectrum SPF 25', 'Octinoxate, Titanium Dioxide', 'Merle Norman Cosmetics, Inc', 'liquid', 'justo eu massa donec dapibus duis at velit');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (109, 'Barbie Striped Fluoride', 'SODIUM FLUORIDE', 'Dr. Fresh, Inc.', 'liquid', 'laoreet ut');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (110, 'Lady Speed Stick', 'ALUMINUM CHLOROHYDRATE', 'Mission Hills S.A de C.V', 'liquid', 'habitasse platea dictumst maecenas ut massa quis');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (111, 'Extra Strength Rapid Release Acetaminophen PM', 'Acetaminophen and Diphenhydramine HCl', 'COSTCO WHOLESALE CORPORATION', 'tablet', 'tortor');
insert into medication (id, drug_name, chemical_name, manufacturer, ingestion, side_effects) values (112, 'Methyldopa', 'Methyldopa', 'Physicians Total Care, Inc.', 'gel', 'lorem ipsum');

# Disease Table
create table diseases (
	id INT,
	disease_name VARCHAR(50),
	symptoms TEXT,
	causes TEXT,
	PRIMARY KEY (id)
);
insert into diseases (id, disease_name, symptoms, causes) values (1, 'Corvus albus', 'hac habitasse platea dictumst maecenas ut massa quis augue luctus', 'eleifend quam a odio in hac habitasse platea dictumst');
insert into diseases (id, disease_name, symptoms, causes) values (2, 'Eumetopias jubatus', 'nec euismod scelerisque quam turpis adipiscing lorem vitae', 'tortor risus dapibus augue vel accumsan tellus nisi eu orci');
insert into diseases (id, disease_name, symptoms, causes) values (3, 'Upupa epops', 'cubilia curae nulla dapibus dolor', 'nulla mollis molestie lorem quisque ut');
insert into diseases (id, disease_name, symptoms, causes) values (4, 'Certotrichas paena', 'nibh fusce lacus purus aliquet at', 'morbi ut odio cras mi');
insert into diseases (id, disease_name, symptoms, causes) values (5, 'Phasianus colchicus', 'turpis enim blandit mi in porttitor', 'donec diam neque vestibulum eget vulputate ut ultrices vel');
insert into diseases (id, disease_name, symptoms, causes) values (6, 'Connochaetus taurinus', 'sapien placerat ante nulla justo', 'curae mauris viverra diam vitae quam suspendisse potenti');
insert into diseases (id, disease_name, symptoms, causes) values (7, 'Semnopithecus entellus', 'diam in magna bibendum imperdiet', 'lectus suspendisse potenti in eleifend quam a odio');
insert into diseases (id, disease_name, symptoms, causes) values (8, 'unavailable', 'augue quam sollicitudin vitae consectetuer eget rutrum at', 'tortor id nulla ultrices aliquet maecenas leo');
insert into diseases (id, disease_name, symptoms, causes) values (9, 'Caiman crocodilus', 'justo nec condimentum neque sapien placerat ante nulla justo', 'ante vivamus tortor duis mattis egestas metus aenean fermentum');
insert into diseases (id, disease_name, symptoms, causes) values (10, 'Aonyx capensis', 'ac lobortis vel dapibus at diam nam tristique tortor eu', 'vulputate luctus cum sociis natoque penatibus');
insert into diseases (id, disease_name, symptoms, causes) values (11, 'Sylvicapra grimma', 'lacinia erat vestibulum sed magna at nunc commodo placerat', 'potenti nullam porttitor lacus at turpis donec posuere metus vitae');
insert into diseases (id, disease_name, symptoms, causes) values (12, 'Kobus leche robertsi', 'rhoncus aliquet pulvinar sed nisl nunc rhoncus dui', 'in libero ut massa volutpat convallis morbi odio');
insert into diseases (id, disease_name, symptoms, causes) values (13, 'Chlidonias leucopterus', 'orci luctus et ultrices posuere cubilia curae duis faucibus accumsan', 'sit amet nunc viverra dapibus');
insert into diseases (id, disease_name, symptoms, causes) values (14, 'Milvus migrans', 'lorem vitae mattis nibh ligula nec sem', 'ultrices libero non mattis pulvinar nulla pede ullamcorper augue');
insert into diseases (id, disease_name, symptoms, causes) values (15, 'Upupa epops', 'eget eleifend luctus ultricies eu nibh quisque id justo sit', 'volutpat quam pede lobortis ligula sit amet');
insert into diseases (id, disease_name, symptoms, causes) values (16, 'Camelus dromedarius', 'vestibulum eget vulputate ut ultrices', 'arcu sed augue aliquam erat volutpat');
insert into diseases (id, disease_name, symptoms, causes) values (17, 'Propithecus verreauxi', 'mi pede malesuada in imperdiet', 'vitae mattis nibh ligula nec sem duis aliquam convallis nunc');
insert into diseases (id, disease_name, symptoms, causes) values (18, 'Phylurus milli', 'luctus cum sociis natoque penatibus et', 'id justo sit amet sapien dignissim vestibulum vestibulum');
insert into diseases (id, disease_name, symptoms, causes) values (19, 'Bubo virginianus', 'odio elementum eu interdum eu tincidunt in', 'ut mauris eget massa tempor convallis');
insert into diseases (id, disease_name, symptoms, causes) values (20, 'Choloepus hoffmani', 'sit amet erat nulla tempus vivamus in felis eu', 'a libero nam dui proin leo odio');
insert into diseases (id, disease_name, symptoms, causes) values (21, 'Porphyrio porphyrio', 'quis lectus suspendisse potenti in eleifend quam a', 'quam sapien varius ut blandit non interdum');
insert into diseases (id, disease_name, symptoms, causes) values (22, 'Marmota caligata', 'ullamcorper purus sit amet nulla quisque', 'eu tincidunt in leo maecenas');
insert into diseases (id, disease_name, symptoms, causes) values (23, 'Lutra canadensis', 'morbi porttitor lorem id ligula suspendisse ornare consequat lectus', 'vulputate luctus cum sociis natoque penatibus et');
insert into diseases (id, disease_name, symptoms, causes) values (24, 'Anas punctata', 'viverra diam vitae quam suspendisse potenti nullam porttitor', 'pede justo eu massa donec dapibus duis at');
insert into diseases (id, disease_name, symptoms, causes) values (25, 'Mazama gouazoubira', 'maecenas leo odio condimentum id', 'vivamus vel nulla eget eros elementum');
insert into diseases (id, disease_name, symptoms, causes) values (26, 'Corvus albicollis', 'aliquam sit amet diam in magna bibendum imperdiet nullam orci', 'fringilla rhoncus mauris enim leo rhoncus sed vestibulum');
insert into diseases (id, disease_name, symptoms, causes) values (27, 'Leptoptilos crumeniferus', 'consequat morbi a ipsum integer a nibh', 'vel augue vestibulum ante ipsum primis');
insert into diseases (id, disease_name, symptoms, causes) values (28, 'Canis mesomelas', 'quisque erat eros viverra eget', 'elit proin interdum mauris non ligula pellentesque ultrices phasellus id');
insert into diseases (id, disease_name, symptoms, causes) values (29, 'Recurvirostra avosetta', 'justo in hac habitasse platea dictumst etiam faucibus cursus urna', 'volutpat convallis morbi odio odio elementum eu interdum eu tincidunt');
insert into diseases (id, disease_name, symptoms, causes) values (30, 'Macropus agilis', 'dolor sit amet consectetuer adipiscing elit proin interdum', 'id turpis integer aliquet massa id lobortis convallis tortor risus');
insert into diseases (id, disease_name, symptoms, causes) values (31, 'Cacatua tenuirostris', 'et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur', 'lectus suspendisse potenti in eleifend quam a odio');
insert into diseases (id, disease_name, symptoms, causes) values (32, 'Rhea americana', 'pellentesque volutpat dui maecenas tristique est', 'ante ipsum primis in faucibus orci luctus et');
insert into diseases (id, disease_name, symptoms, causes) values (33, 'Mazama americana', 'eleifend luctus ultricies eu nibh quisque id', 'auctor gravida sem praesent id massa');
insert into diseases (id, disease_name, symptoms, causes) values (34, 'Dusicyon thous', 'nibh in hac habitasse platea dictumst', 'cum sociis natoque penatibus et');
insert into diseases (id, disease_name, symptoms, causes) values (35, 'Cercatetus concinnus', 'id turpis integer aliquet massa id lobortis convallis', 'nulla nisl nunc nisl duis bibendum felis sed');
insert into diseases (id, disease_name, symptoms, causes) values (36, 'Mazama americana', 'vivamus in felis eu sapien cursus', 'ipsum primis in faucibus orci luctus');
insert into diseases (id, disease_name, symptoms, causes) values (37, 'Alligator mississippiensis', 'congue vivamus metus arcu adipiscing molestie', 'praesent blandit lacinia erat vestibulum sed');
insert into diseases (id, disease_name, symptoms, causes) values (38, 'Orcinus orca', 'donec semper sapien a libero nam dui proin leo odio', 'amet sem fusce consequat nulla nisl nunc nisl');
insert into diseases (id, disease_name, symptoms, causes) values (39, 'Ardea golieth', 'ridiculus mus etiam vel augue', 'odio cras mi pede malesuada');
insert into diseases (id, disease_name, symptoms, causes) values (40, 'Phoenicopterus chilensis', 'in felis donec semper sapien a', 'quam a odio in hac habitasse platea dictumst maecenas ut');
insert into diseases (id, disease_name, symptoms, causes) values (41, 'Anas bahamensis', 'enim blandit mi in porttitor pede justo eu massa donec', 'pretium quis lectus suspendisse potenti in eleifend quam a');
insert into diseases (id, disease_name, symptoms, causes) values (42, 'Petaurus breviceps', 'tristique fusce congue diam id ornare', 'sed sagittis nam congue risus semper porta volutpat');
insert into diseases (id, disease_name, symptoms, causes) values (43, 'Tachybaptus ruficollis', 'donec quis orci eget orci vehicula', 'vulputate justo in blandit ultrices');
insert into diseases (id, disease_name, symptoms, causes) values (44, 'Agkistrodon piscivorus', 'id lobortis convallis tortor risus dapibus augue vel', 'nunc donec quis orci eget orci');
insert into diseases (id, disease_name, symptoms, causes) values (45, 'Pycnonotus barbatus', 'leo odio condimentum id luctus nec molestie sed justo pellentesque', 'non ligula pellentesque ultrices phasellus id sapien in sapien');
insert into diseases (id, disease_name, symptoms, causes) values (46, 'Lama guanicoe', 'aliquam quis turpis eget elit sodales scelerisque mauris sit amet', 'id ornare imperdiet sapien urna pretium nisl ut volutpat');
insert into diseases (id, disease_name, symptoms, causes) values (47, 'Ploceus intermedius', 'ridiculus mus etiam vel augue vestibulum rutrum rutrum', 'eget eros elementum pellentesque quisque porta');
insert into diseases (id, disease_name, symptoms, causes) values (48, 'Meleagris gallopavo', 'nunc donec quis orci eget orci vehicula condimentum curabitur in', 'duis ac nibh fusce lacus purus aliquet at feugiat non');
insert into diseases (id, disease_name, symptoms, causes) values (49, 'Cordylus giganteus', 'non mi integer ac neque duis bibendum', 'venenatis turpis enim blandit mi in porttitor');
insert into diseases (id, disease_name, symptoms, causes) values (50, 'Damaliscus lunatus', 'sapien ut nunc vestibulum ante ipsum', 'justo maecenas rhoncus aliquam lacus morbi quis tortor');
insert into diseases (id, disease_name, symptoms, causes) values (51, 'Cordylus giganteus', 'id luctus nec molestie sed justo pellentesque viverra pede', 'leo odio condimentum id luctus nec molestie sed');
insert into diseases (id, disease_name, symptoms, causes) values (52, 'Gorilla gorilla', 'luctus et ultrices posuere cubilia', 'rutrum at lorem integer tincidunt ante vel ipsum praesent blandit');
insert into diseases (id, disease_name, symptoms, causes) values (53, 'Paradoxurus hermaphroditus', 'massa id nisl venenatis lacinia aenean sit', 'amet erat nulla tempus vivamus in felis eu');
insert into diseases (id, disease_name, symptoms, causes) values (54, 'Physignathus cocincinus', 'platea dictumst morbi vestibulum velit id pretium', 'integer aliquet massa id lobortis convallis tortor risus');
insert into diseases (id, disease_name, symptoms, causes) values (55, 'Sceloporus magister', 'etiam pretium iaculis justo in hac habitasse', 'metus sapien ut nunc vestibulum');
insert into diseases (id, disease_name, symptoms, causes) values (56, 'Fratercula corniculata', 'vestibulum proin eu mi nulla ac', 'aliquam convallis nunc proin at turpis');
insert into diseases (id, disease_name, symptoms, causes) values (57, 'Arctogalidia trivirgata', 'turpis eget elit sodales scelerisque mauris sit amet eros suspendisse', 'pede morbi porttitor lorem id ligula suspendisse');
insert into diseases (id, disease_name, symptoms, causes) values (58, 'Colobus guerza', 'in leo maecenas pulvinar lobortis est phasellus', 'justo pellentesque viverra pede ac diam');
insert into diseases (id, disease_name, symptoms, causes) values (59, 'Colobus guerza', 'nisl nunc rhoncus dui vel sem sed sagittis nam', 'cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat');
insert into diseases (id, disease_name, symptoms, causes) values (60, 'Thylogale stigmatica', 'feugiat non pretium quis lectus suspendisse', 'vivamus in felis eu sapien cursus vestibulum proin eu mi');
insert into diseases (id, disease_name, symptoms, causes) values (61, 'Carphophis sp.', 'tellus in sagittis dui vel nisl', 'cras mi pede malesuada in imperdiet et commodo vulputate');
insert into diseases (id, disease_name, symptoms, causes) values (62, 'Gyps bengalensis', 'commodo vulputate justo in blandit ultrices enim', 'duis consequat dui nec nisi volutpat eleifend donec ut dolor');
insert into diseases (id, disease_name, symptoms, causes) values (63, 'Lasiodora parahybana', 'nam congue risus semper porta volutpat quam', 'elementum ligula vehicula consequat morbi a ipsum');
insert into diseases (id, disease_name, symptoms, causes) values (64, 'Bubalus arnee', 'sed vestibulum sit amet cursus id turpis', 'ac neque duis bibendum morbi non quam');
insert into diseases (id, disease_name, symptoms, causes) values (65, 'Phalacrocorax carbo', 'elementum in hac habitasse platea', 'id ornare imperdiet sapien urna pretium nisl ut volutpat');
insert into diseases (id, disease_name, symptoms, causes) values (66, 'Madoqua kirkii', 'porta volutpat quam pede lobortis ligula', 'venenatis non sodales sed tincidunt eu felis fusce posuere');
insert into diseases (id, disease_name, symptoms, causes) values (67, 'Coluber constrictor', 'risus auctor sed tristique in tempus', 'vel lectus in quam fringilla rhoncus mauris enim leo');
insert into diseases (id, disease_name, symptoms, causes) values (68, 'Mycteria leucocephala', 'ante vel ipsum praesent blandit lacinia erat vestibulum sed magna', 'in faucibus orci luctus et ultrices posuere cubilia curae donec');
insert into diseases (id, disease_name, symptoms, causes) values (69, 'Cacatua tenuirostris', 'vehicula consequat morbi a ipsum', 'leo odio porttitor id consequat in');
insert into diseases (id, disease_name, symptoms, causes) values (70, 'Rhea americana', 'et eros vestibulum ac est lacinia', 'eleifend donec ut dolor morbi vel');
insert into diseases (id, disease_name, symptoms, causes) values (71, 'Gymnorhina tibicen', 'duis at velit eu est congue elementum in hac habitasse', 'nonummy integer non velit donec diam neque');
insert into diseases (id, disease_name, symptoms, causes) values (72, 'Dendrohyrax brucel', 'lacus morbi sem mauris laoreet ut', 'nec nisi vulputate nonummy maecenas');
insert into diseases (id, disease_name, symptoms, causes) values (73, 'Streptopelia senegalensis', 'natoque penatibus et magnis dis parturient montes nascetur ridiculus', 'eu interdum eu tincidunt in leo maecenas pulvinar lobortis');
insert into diseases (id, disease_name, symptoms, causes) values (74, 'Lutra canadensis', 'massa tempor convallis nulla neque libero convallis', 'nunc donec quis orci eget orci');
insert into diseases (id, disease_name, symptoms, causes) values (75, 'Speotyte cuniculata', 'maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices', 'cursus id turpis integer aliquet massa id');
insert into diseases (id, disease_name, symptoms, causes) values (76, 'Crocodylus niloticus', 'fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit', 'donec ut dolor morbi vel lectus in quam fringilla');
insert into diseases (id, disease_name, symptoms, causes) values (77, 'Melophus lathami', 'ante ipsum primis in faucibus orci luctus', 'faucibus accumsan odio curabitur convallis duis consequat dui');
insert into diseases (id, disease_name, symptoms, causes) values (78, 'Coluber constrictor', 'montes nascetur ridiculus mus etiam vel augue vestibulum rutrum', 'et eros vestibulum ac est lacinia nisi venenatis');
insert into diseases (id, disease_name, symptoms, causes) values (79, 'Prionace glauca', 'facilisi cras non velit nec nisi vulputate nonummy maecenas', 'fusce lacus purus aliquet at feugiat non pretium');
insert into diseases (id, disease_name, symptoms, causes) values (80, 'Gyps bengalensis', 'luctus rutrum nulla tellus in sagittis', 'pellentesque quisque porta volutpat erat');
insert into diseases (id, disease_name, symptoms, causes) values (81, 'Zenaida galapagoensis', 'consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien', 'turpis elementum ligula vehicula consequat morbi a ipsum');
insert into diseases (id, disease_name, symptoms, causes) values (82, 'Speothos vanaticus', 'pede venenatis non sodales sed tincidunt eu felis fusce posuere', 'lacus morbi quis tortor id nulla');
insert into diseases (id, disease_name, symptoms, causes) values (83, 'Bubalornis niger', 'id massa id nisl venenatis', 'consequat lectus in est risus auctor sed tristique');
insert into diseases (id, disease_name, symptoms, causes) values (84, 'Tamiasciurus hudsonicus', 'sapien in sapien iaculis congue', 'tortor duis mattis egestas metus aenean fermentum donec ut mauris');
insert into diseases (id, disease_name, symptoms, causes) values (85, 'Pterocles gutturalis', 'sed tristique in tempus sit amet sem', 'luctus et ultrices posuere cubilia curae nulla dapibus dolor');
insert into diseases (id, disease_name, symptoms, causes) values (86, 'Herpestes javanicus', 'nibh in lectus pellentesque at nulla suspendisse', 'orci nullam molestie nibh in lectus pellentesque at nulla');
insert into diseases (id, disease_name, symptoms, causes) values (87, 'Estrilda erythronotos', 'ut mauris eget massa tempor convallis nulla neque libero', 'integer ac neque duis bibendum morbi non');
insert into diseases (id, disease_name, symptoms, causes) values (88, 'Phalacrocorax carbo', 'penatibus et magnis dis parturient montes', 'sit amet turpis elementum ligula vehicula consequat morbi');

# Patient Diagnosis Table
create table patient_diagnosis (
	id INT,
	patient_id INT,
	doctor_id INT,
	disease_id INT,
	diagnosis_date VARCHAR(50),
	notes TEXT,
	primary key (id, patient_id, doctor_id, disease_id),
	foreign key (patient_id) references patient (id),
	foreign key (doctor_id) references doctor (id),
	foreign key (disease_id) references diseases (id)
);
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (1, 4, 16, 43, '3/21/2022', 'ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (2, 23, 25, 17, '9/5/2022', 'sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (3, 19, 13, 34, '10/26/2022', 'odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (4, 6, 27, 72, '11/20/2022', 'ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (5, 35, 26, 15, '7/6/2022', 'aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (6, 5, 24, 53, '3/27/2022', 'ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (7, 13, 36, 78, '11/21/2022', 'tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (8, 1, 31, 47, '2/1/2022', 'donec quis orci eget orci vehicula condimentum curabitur in libero ut');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (9, 26, 33, 82, '10/12/2022', 'volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (10, 18, 34, 63, '3/11/2022', 'diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (11, 9, 4, 49, '12/1/2021', 'tellus nulla ut erat id mauris vulputate elementum nullam varius');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (12, 31, 29, 67, '9/6/2022', 'erat vestibulum sed magna at nunc commodo placerat praesent blandit nam');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (13, 14, 14, 73, '4/5/2022', 'nibh ligula nec sem duis aliquam convallis nunc proin at');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (14, 25, 23, 70, '7/26/2022', 'diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (15, 29, 2, 55, '7/10/2022', 'quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu pede');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (16, 15, 39, 18, '1/10/2022', 'semper rutrum nulla nunc purus phasellus in felis donec semper sapien a');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (17, 12, 42, 85, '6/9/2022', 'vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (18, 16, 3, 75, '3/20/2022', 'eu sapien cursus vestibulum proin eu mi nulla ac enim');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (19, 20, 40, 61, '4/15/2022', 'eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (20, 17, 11, 60, '2/3/2022', 'ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (21, 34, 5, 46, '8/29/2022', 'diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (22, 33, 22, 33, '3/21/2022', 'donec quis orci eget orci vehicula condimentum curabitur in libero');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (23, 38, 35, 35, '12/29/2021', 'donec dapibus duis at velit eu est congue elementum in hac habitasse');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (24, 2, 32, 77, '4/4/2022', 'suspendisse potenti in eleifend quam a odio in hac habitasse platea');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (25, 7, 28, 81, '10/13/2022', 'tempus semper est quam pharetra magna ac consequat metus sapien ut nunc');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (26, 10, 10, 45, '10/1/2022', 'convallis eget eleifend luctus ultricies eu nibh quisque id justo sit');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (27, 3, 37, 41, '8/12/2022', 'sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (28, 37, 8, 7, '11/11/2022', 'purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (29, 36, 15, 6, '12/17/2021', 'sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (30, 8, 19, 56, '5/4/2022', 'aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (31, 27, 12, 5, '6/28/2022', 'dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (32, 21, 30, 12, '9/29/2022', 'orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (33, 24, 7, 88, '2/18/2022', 'eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (34, 30, 20, 4, '3/24/2022', 'nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (35, 22, 1, 84, '12/7/2021', 'lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (36, 32, 9, 32, '2/4/2022', 'orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (37, 28, 6, 36, '2/7/2022', 'eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (38, 11, 17, 74, '8/24/2022', 'congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (39, 3, 18, 24, '3/5/2022', 'facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (40, 15, 38, 16, '5/31/2022', 'erat nulla tempus vivamus in felis eu sapien cursus vestibulum');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (41, 35, 41, 13, '7/22/2022', 'nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (42, 19, 21, 52, '7/11/2022', 'nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (43, 26, 34, 59, '10/19/2022', 'montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (44, 28, 3, 20, '10/16/2022', 'nisl duis ac nibh fusce lacus purus aliquet at feugiat non');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (45, 16, 25, 42, '10/16/2022', 'cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (46, 32, 14, 2, '12/30/2021', 'nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (47, 14, 33, 54, '2/4/2022', 'dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (48, 25, 27, 65, '11/21/2022', 'pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (49, 11, 15, 37, '8/28/2022', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (50, 9, 26, 64, '5/13/2022', 'sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (51, 23, 39, 29, '5/27/2022', 'faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (52, 31, 28, 9, '4/6/2022', 'quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (53, 36, 22, 31, '4/27/2022', 'felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (54, 2, 5, 80, '9/5/2022', 'primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (55, 1, 7, 50, '12/24/2021', 'sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (56, 6, 4, 51, '6/23/2022', 'curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (57, 38, 32, 19, '7/16/2022', 'justo nec condimentum neque sapien placerat ante nulla justo aliquam quis');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (58, 33, 9, 3, '5/7/2022', 'pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (59, 4, 16, 62, '7/11/2022', 'pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (60, 20, 2, 14, '12/13/2021', 'morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (61, 10, 17, 21, '11/16/2022', 'bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (62, 24, 37, 87, '5/7/2022', 'in felis eu sapien cursus vestibulum proin eu mi nulla');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (63, 12, 19, 38, '1/27/2022', 'vivamus in felis eu sapien cursus vestibulum proin eu mi nulla');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (64, 7, 18, 27, '6/8/2022', 'vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (65, 21, 42, 58, '9/4/2022', 'eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (66, 22, 30, 28, '9/29/2022', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (67, 34, 8, 40, '7/26/2022', 'amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (68, 30, 36, 22, '12/15/2021', 'elementum in hac habitasse platea dictumst morbi vestibulum velit id');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (69, 8, 41, 44, '11/30/2021', 'nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (70, 18, 20, 68, '3/20/2022', 'non quam nec dui luctus rutrum nulla tellus in sagittis dui vel');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (71, 29, 6, 48, '5/12/2022', 'odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (72, 5, 35, 79, '11/11/2022', 'ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (73, 17, 29, 11, '11/20/2022', 'at dolor quis odio consequat varius integer ac leo pellentesque');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (74, 27, 1, 1, '9/25/2022', 'consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (75, 13, 11, 25, '5/27/2022', 'orci pede venenatis non sodales sed tincidunt eu felis fusce');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (76, 37, 24, 66, '9/22/2022', 'ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (77, 25, 13, 71, '8/11/2022', 'proin leo odio porttitor id consequat in consequat ut nulla sed');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (78, 3, 12, 86, '5/5/2022', 'turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (79, 38, 10, 57, '1/12/2022', 'tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (80, 34, 31, 39, '4/1/2022', 'eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (81, 11, 23, 23, '7/26/2022', 'ut mauris eget massa tempor convallis nulla neque libero convallis');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (82, 33, 21, 83, '11/6/2022', 'quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (83, 29, 38, 10, '5/1/2022', 'ac consequat metus sapien ut nunc vestibulum ante ipsum primis in');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (84, 26, 40, 69, '10/30/2022', 'odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (85, 24, 5, 30, '12/18/2021', 'est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (86, 37, 42, 26, '6/9/2022', 'est et tempus semper est quam pharetra magna ac consequat metus sapien ut');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (87, 36, 26, 8, '1/28/2022', 'aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (88, 30, 17, 76, '5/19/2022', 'volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (89, 5, 40, 82, '5/11/2022', 'massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (90, 31, 11, 39, '5/25/2022', 'donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (91, 9, 18, 24, '2/10/2022', 'lectus aliquam sit amet diam in magna bibendum imperdiet nullam');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (92, 4, 10, 18, '10/27/2022', 'justo eu massa donec dapibus duis at velit eu est congue');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (93, 32, 35, 53, '9/10/2022', 'nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (94, 12, 14, 48, '10/1/2022', 'odio consequat varius integer ac leo pellentesque ultrices mattis odio');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (95, 17, 33, 59, '5/12/2022', 'molestie nibh in lectus pellentesque at nulla suspendisse potenti cras');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (96, 19, 21, 7, '1/11/2022', 'ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (97, 15, 15, 80, '8/12/2022', 'sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (98, 6, 7, 84, '6/5/2022', 'lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (99, 35, 16, 14, '4/11/2022', 'eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (100, 10, 34, 63, '4/30/2022', 'hac habitasse platea dictumst maecenas ut massa quis augue luctus');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (101, 16, 8, 35, '11/18/2022', 'in libero ut massa volutpat convallis morbi odio odio elementum eu');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (102, 1, 19, 30, '12/3/2021', 'eget tempus vel pede morbi porttitor lorem id ligula suspendisse');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (103, 27, 36, 8, '4/22/2022', 'orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (104, 13, 1, 66, '3/21/2022', 'sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (105, 14, 12, 58, '4/10/2022', 'nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (106, 20, 20, 29, '3/2/2022', 'nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (107, 18, 31, 54, '9/29/2022', 'convallis nunc proin at turpis a pede posuere nonummy integer non velit');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (108, 28, 24, 22, '1/28/2022', 'enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (109, 7, 29, 15, '11/4/2022', 'egestas metus aenean fermentum donec ut mauris eget massa tempor convallis');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (110, 2, 4, 61, '12/18/2021', 'urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (111, 8, 22, 79, '4/22/2022', 'diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (112, 22, 3, 25, '11/14/2022', 'vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (113, 23, 6, 52, '12/7/2021', 'sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (114, 21, 9, 70, '11/6/2022', 'velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (115, 9, 28, 40, '1/16/2022', 'nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (116, 35, 2, 9, '10/28/2022', 'luctus cum sociis natoque penatibus et magnis dis parturient montes');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (117, 1, 13, 55, '10/23/2022', 'viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (118, 32, 37, 28, '12/27/2021', 'semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (119, 34, 27, 62, '11/8/2022', 'interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (120, 2, 25, 69, '9/11/2022', 'id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (121, 38, 23, 64, '5/20/2022', 'sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (122, 15, 38, 78, '10/28/2022', 'scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (123, 31, 30, 57, '5/23/2022', 'tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (124, 8, 41, 32, '10/14/2022', 'aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (125, 16, 39, 75, '1/7/2022', 'maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (126, 7, 32, 1, '10/15/2022', 'sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (127, 30, 8, 76, '6/17/2022', 'lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (128, 21, 19, 42, '4/18/2022', 'amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (129, 11, 2, 5, '10/17/2022', 'lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (130, 5, 24, 16, '5/23/2022', 'consequat metus sapien ut nunc vestibulum ante ipsum primis in');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (131, 29, 34, 34, '6/29/2022', 'consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (132, 18, 4, 27, '1/5/2022', 'enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (133, 19, 31, 47, '1/29/2022', 'lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (134, 25, 30, 17, '5/6/2022', 'cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (135, 33, 21, 13, '3/22/2022', 'donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (136, 17, 15, 37, '9/2/2022', 'turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (137, 10, 17, 72, '9/21/2022', 'vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (138, 37, 13, 87, '12/10/2021', 'lacus at turpis donec posuere metus vitae ipsum aliquam non mauris');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (139, 28, 7, 60, '2/5/2022', 'quam sapien varius ut blandit non interdum in ante vestibulum ante');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (140, 27, 27, 43, '11/17/2022', 'parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (141, 13, 10, 44, '11/22/2022', 'ut tellus nulla ut erat id mauris vulputate elementum nullam');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (142, 4, 42, 74, '5/16/2022', 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (143, 6, 32, 11, '3/17/2022', 'curae duis faucibus accumsan odio curabitur convallis duis consequat dui');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (144, 26, 9, 6, '12/20/2021', 'iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (145, 14, 5, 10, '3/19/2022', 'sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (146, 36, 12, 41, '4/3/2022', 'amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (147, 22, 40, 31, '4/23/2022', 'mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (148, 24, 6, 67, '5/12/2022', 'interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (149, 23, 28, 51, '8/18/2022', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (150, 12, 39, 45, '3/7/2022', 'ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (151, 20, 11, 85, '5/31/2022', 'metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (152, 3, 29, 65, '1/26/2022', 'est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum');
insert into patient_diagnosis (id, patient_id, doctor_id, disease_id, diagnosis_date, notes) values (153, 1, 26, 36, '9/16/2022', 'tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in');

# Patient Prescription Table
create table patient_prescription (
	id INT,
	patient_id INT,
	doctor_id INT,
	medication_id INT,
	date_prescribed VARCHAR(50),
	ingestion_freq VARCHAR(9),
	PRIMARY KEY (id, patient_id, doctor_id, medication_id),
	FOREIGN KEY (patient_id) REFERENCES patient (id),
	FOREIGN KEY (doctor_id) REFERENCES doctor (id),
	FOREIGN KEY (medication_id) REFERENCES medication (id)
);
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (1, 1, 2, 91, '4/5/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (2, 20, 23, 40, '7/29/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (3, 37, 17, 37, '5/17/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (4, 15, 37, 61, '9/30/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (5, 25, 36, 6, '6/21/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (6, 19, 1, 7, '8/31/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (7, 17, 34, 76, '5/31/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (8, 3, 32, 69, '10/27/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (9, 8, 21, 10, '12/6/2021', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (10, 2, 31, 12, '3/15/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (11, 12, 12, 102, '2/14/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (12, 27, 4, 31, '7/1/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (13, 10, 19, 38, '9/8/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (14, 21, 41, 30, '6/22/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (15, 7, 14, 66, '10/11/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (16, 34, 42, 75, '6/2/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (17, 18, 20, 21, '2/2/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (18, 23, 5, 32, '7/8/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (19, 28, 13, 96, '12/24/2021', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (20, 22, 9, 100, '10/14/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (21, 35, 22, 70, '4/26/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (22, 30, 28, 72, '7/13/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (23, 14, 27, 99, '2/6/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (24, 6, 38, 110, '3/18/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (25, 9, 25, 92, '7/3/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (26, 4, 30, 104, '6/12/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (27, 36, 3, 68, '10/13/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (28, 16, 40, 108, '5/23/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (29, 32, 24, 62, '7/24/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (30, 29, 35, 88, '5/24/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (31, 11, 16, 27, '8/7/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (32, 33, 39, 49, '10/10/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (33, 13, 11, 52, '1/6/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (34, 31, 15, 25, '7/22/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (35, 26, 6, 41, '12/6/2021', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (36, 24, 29, 67, '10/31/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (37, 5, 18, 14, '7/2/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (38, 38, 7, 22, '8/7/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (39, 1, 10, 65, '2/21/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (40, 33, 8, 87, '10/9/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (41, 15, 33, 43, '4/13/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (42, 26, 26, 33, '11/16/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (43, 8, 13, 107, '7/6/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (44, 18, 39, 78, '8/28/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (45, 31, 1, 97, '6/11/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (46, 28, 29, 90, '5/12/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (47, 23, 40, 16, '1/3/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (48, 12, 3, 23, '5/1/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (49, 37, 27, 64, '10/22/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (50, 6, 9, 60, '4/2/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (51, 22, 10, 19, '6/5/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (52, 3, 5, 42, '9/3/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (53, 24, 22, 15, '1/29/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (54, 17, 38, 46, '11/6/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (55, 19, 30, 5, '2/1/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (56, 20, 18, 47, '7/1/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (57, 14, 32, 24, '7/7/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (58, 13, 25, 34, '8/1/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (59, 4, 15, 20, '8/14/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (60, 36, 11, 105, '6/3/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (61, 25, 2, 94, '2/28/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (62, 9, 16, 50, '9/25/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (63, 27, 19, 93, '11/20/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (64, 21, 36, 79, '12/30/2021', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (65, 29, 21, 9, '12/17/2021', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (66, 10, 41, 4, '5/27/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (67, 32, 7, 58, '6/18/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (68, 11, 28, 54, '12/19/2021', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (69, 7, 17, 101, '3/1/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (70, 34, 8, 57, '10/26/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (71, 38, 4, 86, '6/1/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (72, 2, 35, 73, '5/8/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (73, 35, 37, 103, '9/23/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (74, 30, 20, 55, '11/15/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (75, 5, 26, 29, '1/19/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (76, 16, 34, 11, '5/7/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (77, 26, 6, 28, '11/2/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (78, 27, 31, 44, '8/31/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (79, 28, 42, 36, '3/24/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (80, 38, 12, 109, '4/11/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (81, 11, 33, 106, '3/5/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (82, 36, 24, 2, '7/5/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (83, 4, 14, 8, '8/21/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (84, 22, 23, 45, '1/26/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (85, 10, 18, 51, '11/23/2021', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (86, 13, 6, 71, '6/28/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (87, 17, 39, 56, '2/24/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (88, 15, 16, 18, '7/5/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (89, 33, 19, 77, '11/3/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (90, 8, 25, 85, '11/2/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (91, 16, 21, 82, '12/25/2021', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (92, 1, 7, 59, '9/16/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (93, 30, 1, 26, '10/18/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (94, 7, 37, 112, '6/12/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (95, 25, 26, 63, '10/15/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (96, 14, 41, 111, '8/18/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (97, 31, 27, 98, '11/22/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (98, 5, 29, 74, '7/12/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (99, 18, 15, 1, '8/28/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (100, 34, 31, 39, '3/22/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (101, 23, 17, 48, '3/10/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (102, 19, 11, 84, '1/10/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (103, 24, 3, 13, '1/26/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (104, 32, 35, 3, '12/7/2021', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (105, 12, 30, 80, '2/12/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (106, 29, 23, 95, '8/28/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (107, 21, 22, 17, '8/28/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (108, 37, 10, 81, '12/29/2021', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (109, 3, 13, 83, '7/25/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (110, 35, 28, 35, '7/21/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (111, 6, 36, 89, '4/14/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (112, 9, 34, 112, '1/4/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (113, 2, 4, 3, '1/18/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (114, 20, 14, 111, '6/12/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (115, 19, 24, 62, '11/22/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (116, 25, 12, 48, '9/17/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (117, 33, 9, 95, '11/8/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (118, 2, 38, 66, '6/16/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (119, 26, 42, 42, '11/10/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (120, 38, 5, 40, '10/8/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (121, 21, 2, 28, '8/14/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (122, 32, 32, 86, '12/10/2021', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (123, 1, 8, 9, '3/3/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (124, 23, 33, 73, '4/15/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (125, 20, 20, 61, '1/14/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (126, 30, 40, 16, '4/9/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (127, 24, 1, 77, '3/3/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (128, 11, 25, 80, '1/4/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (129, 22, 34, 65, '9/20/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (130, 16, 29, 72, '8/17/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (131, 8, 35, 105, '5/29/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (132, 3, 22, 39, '6/14/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (133, 5, 10, 88, '6/4/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (134, 36, 36, 2, '2/4/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (135, 28, 14, 96, '4/11/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (136, 17, 31, 87, '9/21/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (137, 29, 2, 18, '5/10/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (138, 35, 19, 53, '3/26/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (139, 34, 12, 38, '1/22/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (140, 37, 8, 99, '3/21/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (141, 15, 18, 26, '1/9/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (142, 18, 28, 15, '10/22/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (143, 13, 15, 71, '10/8/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (144, 27, 39, 23, '8/12/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (145, 7, 26, 63, '7/3/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (146, 12, 7, 25, '11/9/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (147, 10, 3, 90, '12/15/2021', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (148, 4, 27, 11, '11/5/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (149, 9, 38, 10, '6/2/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (150, 14, 4, 60, '2/21/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (151, 31, 20, 19, '11/9/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (152, 6, 41, 45, '4/1/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (153, 26, 23, 81, '10/6/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (154, 2, 42, 110, '3/29/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (155, 1, 40, 41, '7/20/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (156, 23, 33, 93, '3/13/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (157, 3, 24, 1, '5/26/2022', '3 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (158, 27, 17, 6, '8/17/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (159, 38, 37, 46, '1/5/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (160, 4, 9, 107, '9/29/2022', '2 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (161, 13, 6, 78, '4/10/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (162, 32, 32, 34, '10/14/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (163, 18, 11, 75, '8/19/2022', '1 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (164, 34, 16, 43, '4/21/2022', '4 per day');
insert into patient_prescription (id, patient_id, doctor_id, medication_id, date_prescribed, ingestion_freq) values (165, 16, 30, 74, '1/26/2022', '1 per day');

# Appointment table
create table appointment (
	id INT,
	patient_id INT,
	doctor_id INT,
	date VARCHAR(50),
	time VARCHAR(50),
	symptoms TEXT,
	PRIMARY KEY (id, patient_id, doctor_id),
	FOREIGN KEY (patient_id) REFERENCES patient (id),
	FOREIGN KEY (doctor_id) REFERENCES doctor (id)
);
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (1, 30, 26, '11/2/2022', '4:19 PM', 'est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (2, 23, 24, '4/28/2022', '7:25 PM', 'quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (3, 3, 38, '9/29/2022', '6:55 PM', 'duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (4, 32, 39, '8/12/2022', '5:43 AM', 'quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (5, 21, 20, '8/31/2022', '8:08 PM', 'risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (6, 2, 21, '2/9/2022', '9:17 AM', 'pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (7, 18, 30, '2/25/2022', '10:23 PM', 'pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (8, 35, 32, '12/27/2021', '11:48 PM', 'donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (9, 36, 25, '12/14/2021', '6:19 PM', 'nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (10, 24, 34, '5/15/2022', '6:09 AM', 'ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (11, 37, 36, '5/13/2022', '6:41 AM', 'enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (12, 11, 28, '1/4/2022', '9:01 PM', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (13, 1, 1, '2/22/2022', '4:33 AM', 'elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (14, 27, 31, '1/13/2022', '10:46 AM', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (15, 17, 22, '9/18/2022', '7:12 PM', 'consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (16, 20, 27, '8/11/2022', '5:12 PM', 'pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (17, 9, 4, '4/11/2022', '3:11 PM', 'in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (18, 31, 2, '1/28/2022', '12:48 AM', 'morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (19, 29, 7, '10/19/2022', '3:17 AM', 'sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (20, 34, 16, '12/3/2021', '12:37 PM', 'congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (21, 8, 8, '5/31/2022', '8:01 AM', 'dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (22, 7, 5, '5/8/2022', '6:25 AM', 'magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (23, 6, 13, '10/10/2022', '1:52 AM', 'sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (24, 25, 19, '7/21/2022', '5:41 PM', 'sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (25, 13, 23, '6/23/2022', '4:02 AM', 'sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (26, 10, 35, '8/30/2022', '8:45 AM', 'ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (27, 28, 14, '9/17/2022', '3:53 PM', 'eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (28, 19, 29, '7/25/2022', '4:01 PM', 'imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (29, 26, 37, '10/28/2022', '10:56 PM', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (30, 5, 18, '3/17/2022', '10:42 PM', 'luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (31, 22, 11, '4/6/2022', '6:08 AM', 'sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (32, 38, 3, '8/24/2022', '1:38 AM', 'purus phasellus in felis donec semper sapien a libero nam');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (33, 16, 6, '8/17/2022', '11:30 PM', 'sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (34, 14, 10, '3/16/2022', '6:53 PM', 'placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (35, 33, 17, '5/29/2022', '4:14 PM', 'in imperdiet et commodo vulputate justo in blandit ultrices enim lorem');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (36, 15, 12, '5/9/2022', '4:18 PM', 'in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (37, 12, 40, '12/12/2021', '1:25 AM', 'mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (38, 4, 15, '6/15/2022', '11:14 PM', 'sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (39, 36, 42, '8/9/2022', '1:20 PM', 'quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (40, 3, 33, '4/6/2022', '8:43 AM', 'etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (41, 10, 9, '5/4/2022', '7:43 PM', 'at turpis donec posuere metus vitae ipsum aliquam non mauris morbi');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (42, 37, 41, '8/16/2022', '9:12 AM', 'pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (43, 18, 15, '7/11/2022', '2:08 PM', 'suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (44, 15, 31, '2/21/2022', '3:03 PM', 'lorem quisque ut erat curabitur gravida nisi at nibh in');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (45, 6, 16, '4/21/2022', '10:09 PM', 'ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (46, 38, 33, '7/11/2022', '7:43 PM', 'tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (47, 26, 11, '5/6/2022', '12:32 PM', 'donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (48, 32, 20, '10/13/2022', '4:55 AM', 'feugiat et eros vestibulum ac est lacinia nisi venenatis tristique');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (49, 30, 3, '5/3/2022', '7:16 AM', 'nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (50, 22, 26, '2/21/2022', '10:53 AM', 'tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (51, 19, 40, '10/26/2022', '11:26 PM', 'risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (52, 13, 38, '3/8/2022', '5:03 PM', 'suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (53, 21, 27, '9/10/2022', '1:05 AM', 'lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (54, 35, 1, '9/22/2022', '6:42 PM', 'ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (55, 27, 8, '8/21/2022', '7:32 PM', 'vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (56, 4, 28, '7/2/2022', '11:13 AM', 'eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (57, 31, 35, '3/24/2022', '7:46 PM', 'tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (58, 20, 22, '3/16/2022', '4:04 AM', 'massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (59, 23, 25, '11/19/2022', '10:35 AM', 'commodo vulputate justo in blandit ultrices enim lorem ipsum dolor');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (60, 7, 18, '6/26/2022', '3:19 PM', 'nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (61, 14, 6, '8/3/2022', '3:36 AM', 'nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (62, 29, 21, '7/26/2022', '12:01 PM', 'nullam orci pede venenatis non sodales sed tincidunt eu felis');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (63, 2, 10, '7/6/2022', '2:58 AM', 'consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (64, 34, 7, '4/24/2022', '11:00 PM', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (65, 28, 36, '1/21/2022', '9:55 AM', 'venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (66, 25, 19, '4/9/2022', '6:42 AM', 'morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (67, 1, 32, '8/22/2022', '4:09 AM', 'massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (68, 11, 12, '2/26/2022', '4:25 AM', 'sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (69, 12, 42, '7/31/2022', '4:36 AM', 'nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (70, 16, 41, '3/5/2022', '7:12 PM', 'condimentum neque sapien placerat ante nulla justo aliquam quis turpis');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (71, 33, 4, '2/12/2022', '1:34 AM', 'ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (72, 24, 14, '7/1/2022', '6:01 AM', 'viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (73, 8, 39, '3/16/2022', '11:17 AM', 'bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (74, 17, 30, '8/2/2022', '3:32 AM', 'risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (75, 5, 2, '10/27/2022', '6:17 PM', 'odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (76, 9, 29, '3/10/2022', '11:22 AM', 'risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (77, 18, 37, '3/12/2022', '11:33 PM', 'phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (78, 20, 9, '11/11/2022', '12:17 PM', 'elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (79, 3, 23, '1/27/2022', '5:46 PM', 'faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (80, 34, 13, '3/4/2022', '10:36 AM', 'cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (81, 19, 24, '3/31/2022', '10:32 PM', 'id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (82, 14, 17, '3/20/2022', '6:14 AM', 'nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (83, 17, 34, '7/14/2022', '8:46 PM', 'morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (84, 30, 5, '3/4/2022', '3:35 PM', 'adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (85, 10, 27, '2/15/2022', '12:20 PM', 'nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (86, 32, 16, '10/29/2022', '4:44 PM', 'rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (87, 27, 28, '6/14/2022', '8:18 AM', 'a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (88, 13, 32, '3/25/2022', '11:36 AM', 'mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (89, 12, 33, '9/13/2022', '6:35 PM', 'nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (90, 4, 31, '2/9/2022', '4:11 AM', 'et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (91, 16, 4, '1/23/2022', '6:35 AM', 'sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (92, 37, 40, '8/19/2022', '11:13 AM', 'ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (93, 8, 3, '7/27/2022', '1:35 AM', 'ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (94, 2, 15, '7/2/2022', '10:32 PM', 'nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (95, 36, 26, '12/21/2021', '6:31 PM', 'vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (96, 29, 24, '5/19/2022', '3:51 AM', 'vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (97, 6, 36, '9/21/2022', '5:47 PM', 'ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (98, 33, 18, '8/10/2022', '5:50 AM', 'pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (99, 28, 9, '5/9/2022', '8:11 AM', 'molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (100, 5, 17, '12/25/2021', '10:40 PM', 'nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (101, 24, 7, '12/24/2021', '10:31 AM', 'donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (102, 25, 29, '3/7/2022', '2:40 PM', 'tellus nisi eu orci mauris lacinia sapien quis libero nullam');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (103, 21, 20, '12/24/2021', '11:41 AM', 'massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (104, 15, 39, '9/2/2022', '12:47 PM', 'leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (105, 38, 23, '4/16/2022', '7:20 PM', 'aenean sit amet justo morbi ut odio cras mi pede malesuada in');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (106, 35, 6, '12/9/2021', '3:31 PM', 'nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (107, 9, 25, '1/14/2022', '8:00 AM', 'ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (108, 26, 34, '5/29/2022', '6:58 AM', 'sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (109, 31, 21, '11/18/2022', '10:02 PM', 'eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (110, 22, 5, '6/27/2022', '6:31 AM', 'ut ultrices vel augue vestibulum ante ipsum primis in faucibus');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (111, 11, 35, '1/7/2022', '10:38 PM', 'blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (112, 1, 19, '7/14/2022', '4:41 PM', 'leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (113, 7, 14, '7/27/2022', '4:13 PM', 'nisl nunc rhoncus dui vel sem sed sagittis nam congue risus');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (114, 23, 22, '2/21/2022', '2:18 AM', 'aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (115, 22, 8, '7/7/2022', '8:36 AM', 'donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (116, 31, 13, '11/5/2022', '11:32 PM', 'pede lobortis ligula sit amet eleifend pede libero quis orci nullam');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (117, 26, 41, '6/19/2022', '12:05 AM', 'cum sociis natoque penatibus et magnis dis parturient montes nascetur');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (118, 35, 1, '10/1/2022', '8:12 AM', 'porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (119, 4, 11, '12/31/2021', '6:57 PM', 'sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (120, 38, 12, '7/14/2022', '11:18 PM', 'auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (121, 37, 30, '11/16/2022', '11:28 AM', 'vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (122, 17, 2, '12/9/2021', '6:59 AM', 'iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (123, 1, 42, '11/16/2022', '2:13 AM', 'nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (124, 8, 10, '5/28/2022', '12:23 PM', 'aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (125, 5, 37, '2/27/2022', '6:46 AM', 'maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (126, 27, 38, '6/16/2022', '9:04 PM', 'ornare consequat lectus in est risus auctor sed tristique in tempus sit amet');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (127, 11, 34, '1/22/2022', '6:03 PM', 'ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (128, 29, 1, '4/9/2022', '2:27 AM', 'mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (129, 33, 16, '9/16/2022', '1:19 PM', 'donec posuere metus vitae ipsum aliquam non mauris morbi non');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (130, 12, 24, '11/18/2022', '12:55 AM', 'et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (131, 25, 25, '12/20/2021', '3:06 PM', 'hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (132, 24, 14, '7/10/2022', '4:39 AM', 'consequat in consequat ut nulla sed accumsan felis ut at');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (133, 36, 18, '10/17/2022', '2:42 AM', 'tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (134, 32, 41, '5/2/2022', '9:57 PM', 'id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (135, 20, 4, '5/16/2022', '3:15 AM', 'tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (136, 7, 12, '1/29/2022', '3:56 PM', 'nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (137, 2, 21, '4/4/2022', '1:52 AM', 'nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (138, 19, 33, '3/20/2022', '7:16 PM', 'nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (139, 34, 3, '4/5/2022', '7:04 PM', 'augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (140, 3, 11, '10/3/2022', '1:32 AM', 'quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (141, 28, 5, '9/16/2022', '4:19 AM', 'curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (142, 21, 8, '5/20/2022', '6:57 AM', 'id pretium iaculis diam erat fermentum justo nec condimentum neque');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (143, 30, 2, '3/26/2022', '3:04 AM', 'quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea');
insert into appointment (id, patient_id, doctor_id, date, time, symptoms) values (144, 14, 36, '12/5/2021', '1:51 PM', 'sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc');

# Assigned Nurse Table
create table assigned_nurse (
	doctor_id INT,
	nurse_id INT,
	assign_date VARCHAR(50),
	PRIMARY KEY (doctor_id, nurse_id),
	FOREIGN KEY (doctor_id) REFERENCES doctor (id),
	FOREIGN KEY (nurse_id) REFERENCES nurse (id)
);
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (33, 42, '6/13/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (25, 36, '9/16/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (13, 45, '9/3/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (36, 10, '12/29/2021');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (42, 21, '12/18/2021');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (5, 25, '12/28/2021');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (23, 50, '3/29/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (24, 55, '8/31/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (29, 4, '4/8/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (38, 61, '3/14/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (2, 39, '5/2/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (30, 44, '2/7/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (34, 11, '5/26/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (39, 64, '11/28/2021');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (22, 28, '4/27/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (12, 59, '5/7/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (4, 43, '11/9/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (19, 37, '1/23/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (16, 6, '11/27/2021');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (27, 31, '8/22/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (15, 14, '6/4/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (14, 33, '11/14/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (32, 60, '2/16/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (28, 7, '4/28/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (18, 32, '12/3/2021');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (9, 57, '1/1/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (1, 15, '1/19/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (31, 34, '11/10/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (7, 18, '2/11/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (10, 54, '7/13/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (20, 22, '5/22/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (17, 53, '12/29/2021');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (21, 20, '10/27/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (40, 49, '4/14/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (6, 3, '5/14/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (3, 46, '11/10/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (41, 24, '2/14/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (35, 62, '10/12/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (8, 23, '5/1/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (37, 56, '1/20/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (11, 2, '1/21/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (26, 16, '12/11/2021');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (6, 19, '8/19/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (38, 12, '4/15/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (32, 13, '10/31/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (17, 17, '6/1/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (4, 38, '5/16/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (1, 5, '11/17/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (13, 40, '2/5/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (16, 51, '3/12/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (25, 63, '1/14/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (3, 29, '11/26/2021');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (9, 41, '8/20/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (15, 30, '12/1/2021');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (33, 9, '2/26/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (30, 8, '7/28/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (39, 52, '9/26/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (24, 35, '2/4/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (20, 1, '2/14/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (7, 47, '2/2/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (28, 58, '1/5/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (41, 27, '7/2/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (21, 48, '1/4/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (34, 26, '11/14/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (10, 51, '4/24/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (29, 42, '3/19/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (5, 16, '10/3/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (37, 30, '8/6/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (11, 61, '9/18/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (35, 1, '3/22/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (27, 44, '11/2/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (26, 36, '11/15/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (18, 33, '1/5/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (12, 23, '8/25/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (23, 39, '1/24/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (22, 46, '3/20/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (14, 19, '12/9/2021');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (36, 48, '5/19/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (40, 35, '6/1/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (31, 17, '2/27/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (19, 57, '12/15/2021');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (2, 40, '6/3/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (8, 38, '1/4/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (42, 32, '6/10/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (4, 24, '6/11/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (30, 45, '5/9/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (13, 49, '2/21/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (26, 56, '10/14/2022');
insert into assigned_nurse (doctor_id, nurse_id, assign_date) values (34, 27, '7/19/2022');
