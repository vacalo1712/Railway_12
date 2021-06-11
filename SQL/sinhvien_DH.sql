DROP DATABASE IF EXISTS sinhvien_DH;
CREATE DATABASE sinhvien_DH;
USE sinhvien_DH;

DROP TABLE IF EXISTS university;
create table university (
	universityID INT AUTO_INCREMENT PRIMARY KEY,
	universityCode VARCHAR(50),
	universityName VARCHAR(50)
);
INSERT INTO university(universityID, universityCode, universityName) 
VALUES(1, 'DHBK', 'Dai Hoc Back Khoa'),
(2, 'DHHN', 'Dai Hoc Ha Noi'),
(3, 'DHCNBCVT', 'Dai Hoc Cong nghe buu chinh vien thong'),
(4, 'DHQGHN', 'Dai Hoc quoc gia Ha Noi'),
(5, 'DHCN', 'Dai Hoc Cong nghiep'),
(6, 'DHXD', 'Dai Hoc Xay Dung'),
(7, 'DHKTQD', 'Dai Hoc Kinh te quoc dan'),
(8, 'HVKTQS', 'Hoc Vien Ki thuat quan su');
DROP TABLE IF EXISTS major;
create table major (
	majorID INT AUTO_INCREMENT PRIMARY KEY,
	majorCode VARCHAR(50),
	majorName VARCHAR(50)
);
INSERT INTO major(majorID, majorCode, majorName) 
VALUES(1, 'CNTT', 'cong nghe thong tin'),
(2, 'DTVT', 'Dien tu vien thong'),
(3, 'KHMT', 'Khoa Hoc May Tinh'),
(4, 'ANM', 'An Ninh Mang');
DROP TABLE IF EXISTS student;
create table student (
	studentID INT,
	masv VARCHAR(50),
	fullname VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(50),
	majorID INT,
	universityID INT,
    FOREIGN KEY(majorID) REFERENCES major(majorID),
    FOREIGN KEY(universityID) REFERENCES university(universityID)
);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (1, '61310-101', 'Levens', 'blevens0@census.gov', 'Genderfluid', 3, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (2, '43269-762', 'Clem', 'aclem1@noaa.gov', 'Non-binary', 3, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (3, '0615-7824', 'Scripture', 'sscripture2@washingtonpost.com', 'Male', 3, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (4, '68084-283', 'O''Siaghail', 'aosiaghail3@cloudflare.com', 'Genderfluid', 4, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (5, '17187-1061', 'Greatbach', 'egreatbach4@elpais.com', 'Agender', 2, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (6, '36987-2050', 'Langeley', 'jlangeley5@google.ru', 'Female', 2, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (7, '0781-2168', 'Bloxland', 'abloxland6@fc2.com', 'Genderfluid', 1, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (8, '62011-0243', 'Carlisle', 'rcarlisle7@craigslist.org', 'Female', 2, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (9, '36987-2245', 'Soall', 'jsoall8@arizona.edu', 'Bigender', 1, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (10, '50436-4357', 'Broomhead', 'abroomhead9@discuz.net', 'Genderfluid', 3, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (11, '59779-304', 'Clyant', 'lclyanta@dropbox.com', 'Genderqueer', 3, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (12, '23155-044', 'Symon', 'psymonb@behance.net', 'Bigender', 4, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (13, '41250-380', 'MacLeod', 'mmacleodc@php.net', 'Male', 2, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (14, '53808-0586', 'Cullington', 'ccullingtond@vkontakte.ru', 'Genderqueer', 1, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (15, '54569-5595', 'Garmon', 'egarmone@shop-pro.jp', 'Genderfluid', 3, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (16, '60429-036', 'Gossington', 'bgossingtonf@hexun.com', 'Genderfluid', 1, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (17, '21130-416', 'Cardenas', 'kcardenasg@mit.edu', 'Polygender', 2, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (18, '21695-777', 'Rulton', 'grultonh@baidu.com', 'Genderqueer', 2, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (19, '49349-970', 'Eliez', 'keliezi@github.io', 'Genderfluid', 1, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (20, '63629-2718', 'Usmar', 'cusmarj@cnn.com', 'Male', 4, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (21, '54569-0510', 'Abazi', 'cabazik@live.com', 'Polygender', 3, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (22, '36987-3389', 'Rudeforth', 'erudeforthl@google.ru', 'Bigender', 3, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (23, '0113-0227', 'Brende', 'kbrendem@nhs.uk', 'Male', 3, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (24, '0574-7224', 'Compson', 'ecompsonn@w3.org', 'Genderqueer', 4, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (25, '63629-3994', 'Walbrook', 'rwalbrooko@t-online.de', 'Genderqueer', 2, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (26, '16714-377', 'Marshallsay', 'jmarshallsayp@ibm.com', 'Male', 2, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (27, '54868-5565', 'Maly', 'rmalyq@amazonaws.com', 'Female', 2, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (28, '50025-1001', 'Roads', 'proadsr@dailymail.co.uk', 'Genderfluid', 4, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (29, '61477-201', 'Grigolli', 'kgrigollis@desdev.cn', 'Bigender', 1, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (30, '43353-544', 'Sammes', 'gsammest@instagram.com', 'Female', 3, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (31, '61957-0333', 'Leeuwerink', 'cleeuwerinku@t.co', 'Bigender', 4, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (32, '66336-536', 'Keenlayside', 'jkeenlaysidev@meetup.com', 'Male', 2, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (33, '76439-340', 'Boggs', 'jboggsw@economist.com', 'Agender', 2, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (34, '62802-362', 'D''Souza', 'odsouzax@wsj.com', 'Polygender', 1, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (35, '52937-001', 'Evers', 'deversy@nydailynews.com', 'Bigender', 4, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (36, '43596-0005', 'Daddow', 'rdaddowz@com.com', 'Male', 3, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (37, '54569-3335', 'Bollard', 'mbollard10@buzzfeed.com', 'Genderfluid', 3, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (38, '49349-155', 'Eberts', 'jeberts11@samsung.com', 'Genderfluid', 2, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (39, '0409-7903', 'Halso', 'fhalso12@mac.com', 'Non-binary', 3, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (40, '57520-0018', 'Ody', 'dody13@rediff.com', 'Agender', 4, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (41, '31645-174', 'Samples', 'rsamples14@independent.co.uk', 'Agender', 1, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (42, '65862-501', 'Fidge', 'gfidge15@skyrock.com', 'Female', 2, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (43, '45334-600', 'McCreary', 'bmccreary16@theguardian.com', 'Agender', 1, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (44, '10237-736', 'O'' Flaherty', 'voflaherty17@ucoz.com', 'Genderfluid', 4, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (45, '50051-0014', 'McQuilty', 'kmcquilty18@yelp.com', 'Female', 2, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (46, '52125-654', 'Juniper', 'sjuniper19@hc360.com', 'Non-binary', 3, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (47, '49035-072', 'Sprakes', 'nsprakes1a@ifeng.com', 'Genderfluid', 4, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (48, '0054-0222', 'Standidge', 'mstandidge1b@jimdo.com', 'Genderfluid', 2, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (49, '0078-0489', 'Muscat', 'hmuscat1c@mediafire.com', 'Male', 3, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (50, '11523-7217', 'Bennoe', 'lbennoe1d@flavors.me', 'Male', 3, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (51, '10914-552', 'Vasnev', 'lvasnev1e@mapquest.com', 'Female', 4, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (52, '55316-974', 'Gowanlock', 'rgowanlock1f@dailymotion.com', 'Bigender', 2, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (53, '66096-687', 'Tanslie', 'dtanslie1g@prlog.org', 'Genderqueer', 1, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (54, '67691-769', 'Van der Kruys', 'cvanderkruys1h@dagondesign.com', 'Polygender', 2, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (55, '63304-168', 'Sankey', 'gsankey1i@a8.net', 'Polygender', 3, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (56, '57520-0966', 'Flye', 'aflye1j@china.com.cn', 'Polygender', 4, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (57, '16038-001', 'Niblo', 'aniblo1k@meetup.com', 'Agender', 3, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (58, '55154-6247', 'Penk', 'cpenk1l@quantcast.com', 'Genderfluid', 3, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (59, '53329-641', 'Dyhouse', 'gdyhouse1m@mapy.cz', 'Bigender', 2, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (60, '0904-6190', 'Cutler', 'kcutler1n@admin.ch', 'Genderqueer', 3, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (61, '67938-2030', 'Beminster', 'abeminster1o@sogou.com', 'Polygender', 3, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (62, '55111-264', 'Shortell', 'lshortell1p@amazonaws.com', 'Agender', 3, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (63, '52686-331', 'Russilll', 'drussilll1q@xing.com', 'Polygender', 3, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (64, '68647-169', 'Renad', 'grenad1r@t-online.de', 'Female', 1, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (65, '61601-0079', 'Craddock', 'acraddock1s@seattletimes.com', 'Bigender', 3, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (66, '21695-274', 'Catteroll', 'ccatteroll1t@opensource.org', 'Non-binary', 3, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (67, '58503-049', 'Midden', 'mmidden1u@zimbio.com', 'Bigender', 4, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (68, '57520-0519', 'Meeson', 'cmeeson1v@mysql.com', 'Polygender', 4, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (69, '68745-2029', 'Grieves', 'mgrieves1w@vinaora.com', 'Male', 3, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (70, '63187-091', 'Jacob', 'hjacob1x@cnbc.com', 'Male', 1, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (71, '57520-0532', 'Connelly', 'gconnelly1y@bravesites.com', 'Female', 4, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (72, '0517-3020', 'Card', 'acard1z@wisc.edu', 'Bigender', 2, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (73, '63783-008', 'Douris', 'cdouris20@aol.com', 'Polygender', 1, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (74, '49349-615', 'Trevaskiss', 'ztrevaskiss21@altervista.org', 'Polygender', 1, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (75, '16714-413', 'Ragdale', 'eragdale22@psu.edu', 'Male', 3, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (76, '10578-038', 'Garretts', 'vgarretts23@smugmug.com', 'Male', 1, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (77, '13630-0043', 'Dallas', 'adallas24@fotki.com', 'Genderqueer', 1, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (78, '0378-3631', 'Maric', 'pmaric25@trellian.com', 'Polygender', 3, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (79, '63323-403', 'Beveridge', 'nbeveridge26@umich.edu', 'Female', 4, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (80, '68151-4487', 'Corkell', 'jcorkell27@google.nl', 'Female', 4, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (81, '50458-253', 'Cumpsty', 'ncumpsty28@feedburner.com', 'Polygender', 3, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (82, '51885-7500', 'Argent', 'aargent29@live.com', 'Bigender', 2, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (83, '0944-2844', 'Giovannacci', 'tgiovannacci2a@netlog.com', 'Male', 4, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (84, '61957-0800', 'Faulder', 'cfaulder2b@acquirethisname.com', 'Genderqueer', 1, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (85, '13537-114', 'Cornbell', 'scornbell2c@ucoz.ru', 'Genderqueer', 2, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (86, '49349-618', 'Hubbucke', 'mhubbucke2d@webnode.com', 'Genderfluid', 1, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (87, '54868-2655', 'Gorse', 'ngorse2e@macromedia.com', 'Agender', 1, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (88, '52533-102', 'McCreery', 'emccreery2f@netvibes.com', 'Female', 1, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (89, '54575-948', 'Salterne', 'wsalterne2g@thetimes.co.uk', 'Male', 1, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (90, '51060-012', 'Penylton', 'rpenylton2h@ox.ac.uk', 'Male', 2, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (91, '60760-974', 'Emburey', 'lemburey2i@histats.com', 'Bigender', 2, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (92, '43063-091', 'Greenin', 'agreenin2j@hp.com', 'Male', 4, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (93, '0268-1527', 'Sarjent', 'ssarjent2k@blogs.com', 'Genderqueer', 3, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (94, '0268-0628', 'Philps', 'ophilps2l@canalblog.com', 'Genderfluid', 1, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (95, '65954-007', 'Jaynes', 'sjaynes2m@noaa.gov', 'Genderqueer', 4, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (96, '0378-0215', 'Whitely', 'ewhitely2n@jugem.jp', 'Genderqueer', 4, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (97, '75847-4001', 'Peek', 'mpeek2o@chronoengine.com', 'Bigender', 1, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (98, '0143-9660', 'O''Skehan', 'hoskehan2p@cnbc.com', 'Genderfluid', 2, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (99, '59385-016', 'Benech', 'abenech2q@dedecms.com', 'Non-binary', 4, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (100, '0093-0657', 'Tinner', 'atinner2r@nsw.gov.au', 'Non-binary', 2, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (101, '53808-0806', 'Advani', 'dadvani2s@unesco.org', 'Genderfluid', 3, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (102, '60429-142', 'Keir', 'mkeir2t@pinterest.com', 'Bigender', 2, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (103, '45802-989', 'Hydes', 'rhydes2u@virginia.edu', 'Bigender', 4, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (104, '0268-1168', 'Shilburne', 'rshilburne2v@npr.org', 'Non-binary', 1, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (105, '50458-320', 'Wallace', 'jwallace2w@xing.com', 'Genderfluid', 1, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (106, '36987-1618', 'Harbard', 'tharbard2x@cpanel.net', 'Agender', 2, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (107, '51613-001', 'Fysh', 'afysh2y@mapy.cz', 'Genderfluid', 4, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (108, '65121-001', 'Renfrew', 'mrenfrew2z@sbwire.com', 'Non-binary', 1, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (109, '63645-140', 'Hedan', 'fhedan30@simplemachines.org', 'Non-binary', 2, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (110, '54868-5436', 'Uccelli', 'wuccelli31@phoca.cz', 'Female', 2, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (111, '54868-5817', 'Gladden', 'agladden32@so-net.ne.jp', 'Polygender', 1, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (112, '51672-1352', 'Dainton', 'ldainton33@pen.io', 'Non-binary', 4, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (113, '64117-255', 'Lorking', 'klorking34@ucoz.com', 'Male', 1, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (114, '63717-900', 'Manon', 'amanon35@marketwatch.com', 'Polygender', 1, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (115, '64069-4111', 'Stamp', 'cstamp36@prnewswire.com', 'Bigender', 1, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (116, '0378-5428', 'MacPaike', 'rmacpaike37@oracle.com', 'Polygender', 1, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (117, '0409-7828', 'Molyneux', 'mmolyneux38@live.com', 'Bigender', 4, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (118, '0338-1023', 'Roebuck', 'croebuck39@domainmarket.com', 'Non-binary', 3, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (119, '12213-593', 'Beaton', 'dbeaton3a@nifty.com', 'Agender', 2, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (120, '47335-284', 'Delouch', 'kdelouch3b@ft.com', 'Male', 2, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (121, '0378-5100', 'Maccraw', 'gmaccraw3c@macromedia.com', 'Non-binary', 2, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (122, '0615-6590', 'Hinkes', 'rhinkes3d@cnn.com', 'Agender', 4, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (123, '54569-0552', 'Tenbrug', 'ktenbrug3e@china.com.cn', 'Non-binary', 4, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (124, '36987-1526', 'Russan', 'brussan3f@washington.edu', 'Male', 1, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (125, '59779-248', 'Menguy', 'amenguy3g@dagondesign.com', 'Genderqueer', 4, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (126, '37000-058', 'Elphey', 'gelphey3h@tinyurl.com', 'Male', 4, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (127, '53329-140', 'Rivitt', 'arivitt3i@mysql.com', 'Non-binary', 2, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (128, '27241-003', 'Fennell', 'afennell3j@t.co', 'Bigender', 4, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (129, '49738-456', 'Eagling', 'teagling3k@naver.com', 'Male', 3, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (130, '52709-1001', 'Aubery', 'baubery3l@prweb.com', 'Agender', 2, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (131, '61953-0004', 'Chuney', 'bchuney3m@pagesperso-orange.fr', 'Non-binary', 1, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (132, '67544-117', 'Hendriksen', 'dhendriksen3n@weather.com', 'Polygender', 3, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (133, '54868-3280', 'Alyoshin', 'aalyoshin3o@pinterest.com', 'Bigender', 2, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (134, '0591-0825', 'Linnit', 'ylinnit3p@friendfeed.com', 'Male', 2, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (135, '33261-874', 'Chene', 'dchene3q@cafepress.com', 'Non-binary', 2, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (136, '63304-875', 'Coade', 'ccoade3r@shop-pro.jp', 'Bigender', 2, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (137, '60512-0011', 'Bacup', 'rbacup3s@senate.gov', 'Agender', 3, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (138, '65044-2038', 'Aleksandrov', 'laleksandrov3t@godaddy.com', 'Male', 3, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (139, '59726-029', 'Fairchild', 'dfairchild3u@surveymonkey.com', 'Bigender', 1, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (140, '65954-327', 'MacTurlough', 'ymacturlough3v@washington.edu', 'Bigender', 1, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (141, '49658-3001', 'Pevsner', 'hpevsner3w@infoseek.co.jp', 'Male', 1, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (142, '0088-2225', 'Neasam', 'rneasam3x@gmpg.org', 'Female', 1, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (143, '49738-335', 'Pullen', 'epullen3y@a8.net', 'Polygender', 3, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (144, '49288-0608', 'Alderman', 'calderman3z@hatena.ne.jp', 'Genderfluid', 1, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (145, '49349-560', 'Amor', 'wamor40@histats.com', 'Polygender', 3, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (146, '51167-200', 'Buffery', 'abuffery41@reddit.com', 'Genderqueer', 3, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (147, '17156-615', 'Vanini', 'nvanini42@globo.com', 'Bigender', 3, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (148, '0409-4171', 'Pitfield', 'rpitfield43@squidoo.com', 'Non-binary', 3, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (149, '0409-2689', 'Gluyus', 'mgluyus44@sphinn.com', 'Genderqueer', 3, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (150, '31722-546', 'Manneville', 'cmanneville45@bravesites.com', 'Polygender', 1, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (151, '63402-711', 'Padula', 'apadula46@ft.com', 'Female', 2, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (152, '0363-0822', 'Kitchenside', 'ckitchenside47@altervista.org', 'Genderqueer', 3, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (153, '62721-0472', 'Walcot', 'pwalcot48@google.nl', 'Genderqueer', 4, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (154, '53045-204', 'Terne', 'sterne49@chicagotribune.com', 'Genderfluid', 4, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (155, '55513-003', 'Surmeir', 'esurmeir4a@answers.com', 'Agender', 4, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (156, '46122-032', 'Kenyam', 'ekenyam4b@disqus.com', 'Genderqueer', 4, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (157, '0179-1971', 'Joyner', 'cjoyner4c@oracle.com', 'Female', 3, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (158, '0904-6302', 'Eddy', 'veddy4d@senate.gov', 'Bigender', 3, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (159, '59229-002', 'Causier', 'ecausier4e@symantec.com', 'Genderqueer', 1, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (160, '0781-1556', 'Stockings', 'hstockings4f@omniture.com', 'Polygender', 3, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (161, '36987-3440', 'Wareham', 'bwareham4g@tamu.edu', 'Polygender', 3, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (162, '59779-532', 'Sudell', 'hsudell4h@china.com.cn', 'Agender', 2, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (163, '55154-3342', 'Waine', 'swaine4i@reference.com', 'Male', 1, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (164, '59262-262', 'Basilio', 'jbasilio4j@unesco.org', 'Agender', 1, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (165, '57520-0094', 'Dibson', 'bdibson4k@moonfruit.com', 'Bigender', 2, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (166, '42311-002', 'Olerenshaw', 'holerenshaw4l@mashable.com', 'Male', 1, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (167, '0409-3401', 'Stait', 'fstait4m@comcast.net', 'Bigender', 1, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (168, '63187-169', 'Cinderey', 'pcinderey4n@flavors.me', 'Polygender', 3, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (169, '76439-304', 'Wrixon', 'kwrixon4o@vimeo.com', 'Genderfluid', 3, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (170, '24571-103', 'Donaher', 'gdonaher4p@yale.edu', 'Genderqueer', 2, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (171, '10812-304', 'Temperton', 'gtemperton4q@imgur.com', 'Male', 4, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (172, '64471-196', 'Ottery', 'cottery4r@illinois.edu', 'Non-binary', 4, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (173, '0378-6140', 'Collett', 'dcollett4s@soundcloud.com', 'Female', 4, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (174, '66521-112', 'MacConnulty', 'amacconnulty4t@washingtonpost.com', 'Genderqueer', 3, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (175, '0378-5522', 'Zorzetti', 'lzorzetti4u@army.mil', 'Polygender', 2, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (176, '21130-609', 'O''Crigane', 'jocrigane4v@sciencedirect.com', 'Non-binary', 4, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (177, '52125-230', 'Borman', 'bborman4w@gizmodo.com', 'Male', 2, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (178, '22100-023', 'Polleye', 'dpolleye4x@rambler.ru', 'Non-binary', 3, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (179, '63354-291', 'Spofford', 'espofford4y@mashable.com', 'Genderqueer', 1, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (180, '63187-023', 'Duffie', 'mduffie4z@artisteer.com', 'Agender', 1, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (181, '0173-0754', 'Couvet', 'bcouvet50@uol.com.br', 'Female', 2, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (182, '59779-817', 'Jockle', 'djockle51@imgur.com', 'Male', 4, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (183, '37205-338', 'Duetschens', 'fduetschens52@ucla.edu', 'Genderqueer', 3, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (184, '55154-2051', 'Grose', 'mgrose53@hp.com', 'Bigender', 3, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (185, '52533-026', 'Godmar', 'agodmar54@barnesandnoble.com', 'Bigender', 4, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (186, '69020-206', 'Gergely', 'lgergely55@newsvine.com', 'Agender', 1, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (187, '52584-485', 'Rigg', 'jrigg56@goodreads.com', 'Male', 2, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (188, '68788-9190', 'Geroldo', 'lgeroldo57@netlog.com', 'Genderfluid', 3, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (189, '35356-895', 'Totman', 'mtotman58@omniture.com', 'Non-binary', 2, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (190, '68180-846', 'Rapp', 'zrapp59@salon.com', 'Bigender', 4, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (191, '60289-236', 'Haggerston', 'thaggerston5a@walmart.com', 'Agender', 1, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (192, '60681-1256', 'Glencross', 'pglencross5b@liveinternet.ru', 'Bigender', 3, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (193, '49967-710', 'Colville', 'ccolville5c@amazon.de', 'Genderqueer', 4, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (194, '48951-5077', 'Fairclough', 'tfairclough5d@slate.com', 'Genderqueer', 1, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (195, '10019-055', 'Hassent', 'ehassent5e@blogs.com', 'Non-binary', 1, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (196, '0268-1059', 'Bartolomeu', 'jbartolomeu5f@bbb.org', 'Bigender', 2, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (197, '57955-7145', 'St. Quentin', 'astquentin5g@bing.com', 'Agender', 2, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (198, '76214-024', 'Garrand', 'hgarrand5h@canalblog.com', 'Agender', 2, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (199, '46122-054', 'Lawdham', 'vlawdham5i@springer.com', 'Genderqueer', 1, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (200, '34362-0300', 'Aucourte', 'daucourte5j@harvard.edu', 'Female', 1, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (201, '41250-035', 'Tomanek', 'ftomanek5k@bigcartel.com', 'Genderqueer', 1, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (202, '62011-0089', 'Cornwall', 'gcornwall5l@storify.com', 'Agender', 1, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (203, '0088-2502', 'Heitz', 'theitz5m@ft.com', 'Male', 1, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (204, '50988-293', 'Nann', 'snann5n@scribd.com', 'Agender', 1, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (205, '64540-001', 'Philips', 'lphilips5o@usnews.com', 'Agender', 4, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (206, '0362-9011', 'McLugaish', 'amclugaish5p@blogs.com', 'Bigender', 4, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (207, '43063-509', 'Porteous', 'bporteous5q@slashdot.org', 'Genderfluid', 1, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (208, '0069-0076', 'Layborn', 'llayborn5r@nyu.edu', 'Female', 4, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (209, '43353-710', 'Vasquez', 'bvasquez5s@shop-pro.jp', 'Non-binary', 1, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (210, '58118-4032', 'Mulrooney', 'jmulrooney5t@nasa.gov', 'Genderqueer', 3, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (211, '60512-6650', 'Lievesley', 'clievesley5u@loc.gov', 'Non-binary', 3, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (212, '41163-357', 'Soares', 'msoares5v@cnet.com', 'Female', 2, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (213, '36987-2537', 'D''Andrea', 'tdandrea5w@nih.gov', 'Non-binary', 2, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (214, '40076-949', 'Easbie', 'veasbie5x@nasa.gov', 'Male', 3, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (215, '50458-342', 'Brickett', 'kbrickett5y@nytimes.com', 'Bigender', 3, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (216, '58394-635', 'Blunt', 'ublunt5z@hao123.com', 'Male', 2, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (217, '54868-5699', 'Tipperton', 'ytipperton60@ca.gov', 'Agender', 2, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (218, '0781-5188', 'Rohlfing', 'drohlfing61@cdbaby.com', 'Genderfluid', 2, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (219, '43772-0010', 'Mozzetti', 'hmozzetti62@illinois.edu', 'Agender', 2, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (220, '0641-6103', 'Merrywether', 'cmerrywether63@biblegateway.com', 'Polygender', 1, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (221, '76332-001', 'Govan', 'ngovan64@yellowbook.com', 'Female', 3, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (222, '68025-053', 'Lavens', 'jlavens65@myspace.com', 'Male', 3, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (223, '66993-942', 'Dear', 'fdear66@mlb.com', 'Agender', 3, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (224, '33992-1417', 'Bertholin', 'jbertholin67@guardian.co.uk', 'Non-binary', 3, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (225, '0299-4500', 'Daftor', 'ldaftor68@adobe.com', 'Female', 1, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (226, '50114-1075', 'Varne', 'bvarne69@xrea.com', 'Polygender', 4, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (227, '0338-0051', 'D''eye', 'ndeye6a@flavors.me', 'Agender', 2, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (228, '55154-6985', 'Bortoletti', 'nbortoletti6b@dropbox.com', 'Polygender', 2, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (229, '59746-316', 'Beche', 'nbeche6c@alibaba.com', 'Polygender', 4, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (230, '55154-5429', 'Eccleston', 'heccleston6d@ask.com', 'Agender', 2, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (231, '76461-024', 'Dayce', 'kdayce6e@businessweek.com', 'Male', 3, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (232, '49738-906', 'Hudspith', 'ehudspith6f@bbc.co.uk', 'Polygender', 2, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (233, '59779-108', 'O''Docherty', 'podocherty6g@scientificamerican.com', 'Genderfluid', 3, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (234, '67510-0008', 'Curtois', 'rcurtois6h@army.mil', 'Agender', 4, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (235, '0264-2202', 'Kless', 'akless6i@dyndns.org', 'Genderqueer', 2, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (236, '54868-5983', 'Plinck', 'mplinck6j@abc.net.au', 'Bigender', 2, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (237, '49288-0157', 'Epine', 'eepine6k@msn.com', 'Genderfluid', 4, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (238, '36800-302', 'Sheahan', 'jsheahan6l@wix.com', 'Male', 4, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (239, '49999-223', 'Akram', 'fakram6m@csmonitor.com', 'Non-binary', 4, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (240, '51141-2000', 'Dowderswell', 'gdowderswell6n@webs.com', 'Genderqueer', 3, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (241, '64578-0088', 'Sizzey', 'hsizzey6o@pbs.org', 'Male', 1, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (242, '59779-608', 'Moodie', 'gmoodie6p@mediafire.com', 'Agender', 2, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (243, '55154-4236', 'Inkpen', 'binkpen6q@disqus.com', 'Bigender', 1, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (244, '30142-648', 'Sommerville', 'rsommerville6r@4shared.com', 'Non-binary', 1, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (245, '49035-302', 'Train', 'ttrain6s@nsw.gov.au', 'Genderfluid', 3, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (246, '59275-001', 'Tamburo', 'utamburo6t@moonfruit.com', 'Female', 2, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (247, '52374-102', 'Graves', 'fgraves6u@csmonitor.com', 'Bigender', 2, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (248, '0135-0514', 'Cheesworth', 'bcheesworth6v@printfriendly.com', 'Genderqueer', 4, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (249, '58118-0480', 'Verralls', 'rverralls6w@vinaora.com', 'Female', 3, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (250, '33992-1400', 'Beardmore', 'cbeardmore6x@ehow.com', 'Female', 3, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (251, '49972-010', 'Baumann', 'abaumann6y@hugedomains.com', 'Genderfluid', 4, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (252, '55154-0355', 'Skillington', 'sskillington6z@gizmodo.com', 'Non-binary', 2, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (253, '62802-668', 'Pilling', 'jpilling70@uiuc.edu', 'Non-binary', 3, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (254, '54868-4700', 'Causton', 'kcauston71@cbsnews.com', 'Genderqueer', 2, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (255, '68084-491', 'Clevely', 'yclevely72@boston.com', 'Polygender', 1, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (256, '41250-224', 'Styche', 'jstyche73@salon.com', 'Polygender', 3, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (257, '45802-472', 'Olding', 'lolding74@bluehost.com', 'Non-binary', 4, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (258, '33261-449', 'Fitzsimmons', 'wfitzsimmons75@gmpg.org', 'Agender', 1, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (259, '76237-100', 'Stanfield', 'mstanfield76@homestead.com', 'Polygender', 4, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (260, '65977-5038', 'Ash', 'nash77@japanpost.jp', 'Genderfluid', 2, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (261, '49288-0001', 'Ashforth', 'lashforth78@goodreads.com', 'Bigender', 3, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (262, '52549-4118', 'McIlvenna', 'tmcilvenna79@bloglovin.com', 'Female', 2, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (263, '37205-717', 'Attard', 'eattard7a@alibaba.com', 'Polygender', 3, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (264, '11527-062', 'O''Hone', 'cohone7b@mit.edu', 'Polygender', 4, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (265, '65483-392', 'Little', 'dlittle7c@amazonaws.com', 'Polygender', 1, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (266, '76384-006', 'Briztman', 'lbriztman7d@nyu.edu', 'Agender', 2, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (267, '63629-2950', 'Meake', 'bmeake7e@amazon.co.jp', 'Male', 1, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (268, '59746-324', 'Gilogly', 'ogilogly7f@rambler.ru', 'Genderqueer', 1, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (269, '10096-0173', 'Toombes', 'rtoombes7g@behance.net', 'Polygender', 3, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (270, '0228-4019', 'Dairton', 'mdairton7h@netscape.com', 'Agender', 3, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (271, '24208-670', 'Stanborough', 'gstanborough7i@posterous.com', 'Genderfluid', 4, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (272, '55648-923', 'Summerscales', 'hsummerscales7j@pbs.org', 'Male', 3, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (273, '52471-100', 'Galley', 'mgalley7k@macromedia.com', 'Genderqueer', 4, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (274, '68788-9158', 'Farguhar', 'cfarguhar7l@t.co', 'Non-binary', 3, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (275, '57844-115', 'Dewhurst', 'jdewhurst7m@xrea.com', 'Genderqueer', 1, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (276, '0069-2190', 'Hyndes', 'bhyndes7n@prweb.com', 'Genderqueer', 2, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (277, '10157-9883', 'Willoughby', 'hwilloughby7o@ucla.edu', 'Agender', 3, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (278, '36987-1237', 'Garroway', 'rgarroway7p@microsoft.com', 'Agender', 1, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (279, '61010-5000', 'Edess', 'tedess7q@arstechnica.com', 'Polygender', 4, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (280, '11673-201', 'Shelford', 'lshelford7r@wikimedia.org', 'Bigender', 1, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (281, '65044-1874', 'Stuttman', 'astuttman7s@irs.gov', 'Non-binary', 1, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (282, '55154-6986', 'Lillicrap', 'flillicrap7t@harvard.edu', 'Polygender', 4, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (283, '61919-459', 'Hennemann', 'phennemann7u@booking.com', 'Polygender', 1, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (284, '43555-020', 'Fransoni', 'tfransoni7v@springer.com', 'Bigender', 4, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (285, '49348-954', 'MacColm', 'dmaccolm7w@tumblr.com', 'Female', 2, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (286, '53077-3001', 'Fullom', 'mfullom7x@java.com', 'Genderfluid', 4, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (287, '33261-144', 'Meldrum', 'kmeldrum7y@abc.net.au', 'Female', 4, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (288, '42023-120', 'Reis', 'kreis7z@boston.com', 'Female', 2, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (289, '13551-205', 'Barden', 'dbarden80@zdnet.com', 'Female', 3, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (290, '55154-4226', 'Dancey', 'wdancey81@typepad.com', 'Male', 4, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (291, '43063-252', 'Rimmer', 'mrimmer82@constantcontact.com', 'Male', 4, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (292, '68788-0713', 'Brittian', 'cbrittian83@columbia.edu', 'Polygender', 1, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (293, '0173-0812', 'Mutimer', 'kmutimer84@sourceforge.net', 'Genderfluid', 2, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (294, '98132-132', 'Sibbs', 'ssibbs85@aol.com', 'Genderqueer', 3, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (295, '50474-931', 'Eschalette', 'heschalette86@rakuten.co.jp', 'Female', 3, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (296, '0884-2993', 'Wreiford', 'mwreiford87@google.com.au', 'Genderqueer', 1, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (297, '36987-2816', 'Manicom', 'bmanicom88@amazon.co.uk', 'Bigender', 4, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (298, '0135-0071', 'Woolatt', 'twoolatt89@reference.com', 'Male', 4, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (299, '50436-3593', 'Tine', 'atine8a@homestead.com', 'Non-binary', 3, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (300, '54575-442', 'Sweetman', 'ksweetman8b@cargocollective.com', 'Female', 2, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (301, '52125-684', 'Harberer', 'bharberer8c@amazonaws.com', 'Polygender', 4, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (302, '37808-091', 'Hush', 'mhush8d@google.com.hk', 'Polygender', 2, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (303, '54868-5458', 'Dowdeswell', 'rdowdeswell8e@unblog.fr', 'Female', 3, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (304, '65162-659', 'Hofler', 'chofler8f@indiegogo.com', 'Female', 4, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (305, '63941-189', 'Pennoni', 'rpennoni8g@gov.uk', 'Agender', 2, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (306, '0555-0860', 'Ryal', 'dryal8h@printfriendly.com', 'Female', 1, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (307, '55648-925', 'Ellum', 'oellum8i@fema.gov', 'Bigender', 1, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (308, '53808-0646', 'Clowney', 'jclowney8j@nydailynews.com', 'Bigender', 2, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (309, '57955-8200', 'Viles', 'hviles8k@ft.com', 'Polygender', 1, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (310, '41163-811', 'Haws', 'mhaws8l@nytimes.com', 'Polygender', 4, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (311, '76237-232', 'Manderson', 'cmanderson8m@guardian.co.uk', 'Genderfluid', 4, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (312, '68428-132', 'Motte', 'pmotte8n@boston.com', 'Male', 4, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (313, '58118-9974', 'Serginson', 'aserginson8o@xing.com', 'Non-binary', 4, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (314, '44946-1014', 'Baggaley', 'nbaggaley8p@constantcontact.com', 'Bigender', 2, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (315, '57520-0218', 'Yushin', 'jyushin8q@skype.com', 'Polygender', 2, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (316, '49799-0001', 'Neeves', 'kneeves8r@eepurl.com', 'Agender', 2, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (317, '16590-349', 'Alejandro', 'halejandro8s@google.nl', 'Polygender', 3, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (318, '42254-111', 'Harriman', 'mharriman8t@123-reg.co.uk', 'Non-binary', 3, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (319, '63629-1564', 'Miskimmon', 'smiskimmon8u@cdc.gov', 'Agender', 2, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (320, '42291-606', 'Feige', 'mfeige8v@blinklist.com', 'Non-binary', 1, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (321, '0268-0134', 'Claris', 'cclaris8w@elegantthemes.com', 'Female', 4, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (322, '66336-337', 'Giovannetti', 'mgiovannetti8x@hubpages.com', 'Non-binary', 1, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (323, '50845-0101', 'Argabrite', 'jargabrite8y@hostgator.com', 'Polygender', 3, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (324, '42485-003', 'Petrecz', 'spetrecz8z@twitter.com', 'Female', 1, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (325, '41250-804', 'Crysell', 'fcrysell90@biblegateway.com', 'Polygender', 1, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (326, '64725-0624', 'Hockey', 'hhockey91@sciencedaily.com', 'Polygender', 3, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (327, '51079-419', 'Lounds', 'dlounds92@technorati.com', 'Non-binary', 1, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (328, '0078-0512', 'Reburn', 'areburn93@cnn.com', 'Genderqueer', 1, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (329, '63629-3348', 'Godspede', 'agodspede94@moonfruit.com', 'Non-binary', 4, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (330, '54569-0332', 'Getley', 'bgetley95@bloomberg.com', 'Non-binary', 4, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (331, '58232-0803', 'Stinton', 'rstinton96@webmd.com', 'Genderfluid', 4, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (332, '0591-2369', 'Gorvette', 'mgorvette97@amazon.co.uk', 'Genderqueer', 2, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (333, '0268-1254', 'Creelman', 'mcreelman98@kickstarter.com', 'Female', 3, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (334, '76214-006', 'Burry', 'lburry99@google.com', 'Genderfluid', 4, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (335, '49288-0778', 'Stollenberg', 'sstollenberg9a@jalbum.net', 'Polygender', 2, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (336, '65923-001', 'Paynes', 'bpaynes9b@about.me', 'Agender', 1, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (337, '52533-169', 'Hughesdon', 'thughesdon9c@php.net', 'Agender', 4, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (338, '76144-000', 'MacColl', 'amaccoll9d@icq.com', 'Agender', 4, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (339, '51672-5263', 'Stubbins', 'kstubbins9e@php.net', 'Bigender', 3, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (340, '0338-6346', 'Fuentes', 'afuentes9f@163.com', 'Genderfluid', 1, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (341, '54838-101', 'Drabble', 'mdrabble9g@yolasite.com', 'Polygender', 1, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (342, '0019-9450', 'McLarens', 'mmclarens9h@cargocollective.com', 'Female', 1, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (343, '24559-080', 'Crack', 'wcrack9i@lycos.com', 'Genderqueer', 2, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (344, '55312-371', 'Affuso', 'maffuso9j@dmoz.org', 'Female', 4, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (345, '0363-0809', 'Claeskens', 'sclaeskens9k@biblegateway.com', 'Female', 2, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (346, '54868-5249', 'Cardenas', 'bcardenas9l@wufoo.com', 'Bigender', 2, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (347, '33261-658', 'Burbudge', 'bburbudge9m@twitter.com', 'Male', 4, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (348, '68382-418', 'Bedson', 'bbedson9n@wix.com', 'Genderqueer', 1, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (349, '36987-2965', 'Duchant', 'gduchant9o@biglobe.ne.jp', 'Genderqueer', 3, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (350, '55910-503', 'Castillo', 'tcastillo9p@slideshare.net', 'Bigender', 1, 5);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (351, '36987-2513', 'Burehill', 'mburehill9q@macromedia.com', 'Polygender', 4, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (352, '62670-4813', 'Davidi', 'ddavidi9r@dagondesign.com', 'Male', 2, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (353, '68025-040', 'Adess', 'nadess9s@reverbnation.com', 'Polygender', 4, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (354, '11822-0549', 'Candelin', 'acandelin9t@paypal.com', 'Genderqueer', 2, 8);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (355, '10511-3001', 'Burnhill', 'sburnhill9u@cdc.gov', 'Agender', 2, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (356, '16590-135', 'Heaslip', 'bheaslip9v@who.int', 'Male', 1, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (357, '52125-742', 'Doohan', 'bdoohan9w@umn.edu', 'Genderqueer', 2, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (358, '36987-2403', 'Yurlov', 'hyurlov9x@photobucket.com', 'Genderqueer', 4, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (359, '47682-175', 'Jone', 'kjone9y@i2i.jp', 'Polygender', 3, 7);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (360, '13107-072', 'Wallworth', 'hwallworth9z@networksolutions.com', 'Male', 4, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (361, '55315-527', 'Matyatin', 'hmatyatina0@cornell.edu', 'Female', 4, 3);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (362, '54868-1978', 'Woodfin', 'rwoodfina1@sphinn.com', 'Non-binary', 1, 4);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (363, '53208-539', 'Tyer', 'ktyera2@xinhuanet.com', 'Agender', 4, 2);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (364, '0363-0459', 'Rosenshine', 'frosenshinea3@constantcontact.com', 'Genderfluid', 1, 1);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (365, '49348-688', 'Duer', 'eduera4@bbb.org', 'Genderfluid', 1, 6);
insert into student (studentID, masv, fullname, email, gender, majorID, universityID) values (366, '12213-005', 'Benwell', 'dbenwella5@pcworld.com', 'Male', 4, 1);

USE sinhvien_DH;

-- Thống Kê mỗi trường mỗi ngành có bao nhiêu SV
SELECT		U.universityName, M.majorName, count(S.studentID) AS So_SV
FROM		major m JOIN student S ON M.majorID = S.majorID
JOIN		university U ON S.universityID = U.universityID
GROUP BY	U.universityID, M.majorID
;

-- lấy ra thông tin trường có nhiều SV nhất
SELECT		U.universityName, count(*) AS So_SV
FROM		student S
JOIN		university U ON S.universityID = U.universityID
GROUP BY	U.universityID
HAVING		So_SV = (	SELECT Max(SV)
						FROM (	SELECT		count(*) AS SV
								FROM		student
								GROUP BY	universityID) AS a)
;

-- Lấy ra thông tin Ngành có ít sv nhất
SELECT		M.majorName, count(*) So_SV
FROM		student s
JOIN		major m ON S.majorID = M.majorID
GROUP BY	M.majorID
HAVING		So_SV = (	SELECT		min(SV)
						FROM		(	SELECT		count(*) AS SV
										FROM		student
										GROUP BY	majorID) AS A)
;












