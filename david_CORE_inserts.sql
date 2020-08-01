--David's insert
--Most recent

INSERT INTO EMPLOYEE (EMPLOYEE_ID, FNAME, LNAME, EMPLOYEE_TYPE, PHONE_NUMBER, EMAIL_ADDRESS, ADDRESS, CITY, STATE_CODE, ZIP_CODE, HOURLY_PAY, IS_SALARY, MANAGER_ID) 
    VALUES (70, 'Eddie', 'Offerd', 'Producer', 9876543210, '123@g.com', '123 Some Dr.', 'Some City', 'SC', '12345', 50, 'Y', NULL);   
INSERT INTO EMPLOYEE (EMPLOYEE_ID, FNAME, LNAME, EMPLOYEE_TYPE, PHONE_NUMBER, EMAIL_ADDRESS, ADDRESS, CITY, STATE_CODE, ZIP_CODE, HOURLY_PAY, IS_SALARY, MANAGER_ID) 
       VALUES (4, 'Tina', 'Mehta', 'Secretary', 2485698989, 'mahta@gmail.com', '123 Some Dr.', 'Some City', 'SC', '12345', 30, 'Y', 70);      

INSERT INTO EMPLOYEE (EMPLOYEE_ID, FNAME, LNAME, EMPLOYEE_TYPE, PHONE_NUMBER, EMAIL_ADDRESS, ADDRESS, CITY, STATE_CODE, ZIP_CODE, HOURLY_PAY, IS_SALARY, MANAGER_ID) 
    VALUES (72, 'Ali', 'Simon', 'Promoter', 2484444444, '12123@g.com', '123 Some Dr.', 'west City', 'MI', '48258', 65.10, 'Y', 70);
INSERT INTO EMPLOYEE (EMPLOYEE_ID, FNAME, LNAME, EMPLOYEE_TYPE, PHONE_NUMBER, EMAIL_ADDRESS, ADDRESS, CITY, STATE_CODE, ZIP_CODE, HOURLY_PAY, IS_SALARY, MANAGER_ID) 
    VALUES (77, 'Natalia', 'Jirjees', 'Promoter', 2481111111, 'nj@g.com', '896 maple rd.', 'Detroit', 'MI', '48258', 65.10, 'Y', 70);
INSERT INTO EMPLOYEE (EMPLOYEE_ID, FNAME, LNAME, EMPLOYEE_TYPE, PHONE_NUMBER, EMAIL_ADDRESS, ADDRESS, CITY, STATE_CODE, ZIP_CODE, HOURLY_PAY, IS_SALARY, MANAGER_ID) 
    VALUES (78, 'Liliana', 'Halabo', 'Promoter', 2482222222, 'nj@g.com', '564 Santiago rd.', 'Hollywood', 'CL', '74563', 65.10, 'Y', 70);
INSERT INTO EMPLOYEE (EMPLOYEE_ID, FNAME, LNAME, EMPLOYEE_TYPE, PHONE_NUMBER, EMAIL_ADDRESS, ADDRESS, CITY, STATE_CODE, ZIP_CODE, HOURLY_PAY, IS_SALARY, MANAGER_ID) 
    VALUES (79, 'James', 'Jad', 'Promoter', 2483333333, 'jj@g.com', '564 north rd.', 'Houston', 'TX', '89456', 65.10, 'Y', 70);
INSERT INTO EMPLOYEE (EMPLOYEE_ID, FNAME, LNAME, EMPLOYEE_TYPE, PHONE_NUMBER, EMAIL_ADDRESS, ADDRESS, CITY, STATE_CODE, ZIP_CODE, HOURLY_PAY, IS_SALARY, MANAGER_ID) 
    VALUES (71, 'David', 'Stevano', 'Promoter', 2489026978, 'ds@g.com', '564 new rd.', 'New York City', 'NY', '12365', 65.10, 'Y', 70);
    
INSERT INTO EMPLOYEE (EMPLOYEE_ID, FNAME, LNAME, EMPLOYEE_TYPE, PHONE_NUMBER, EMAIL_ADDRESS, ADDRESS, CITY, STATE_CODE, ZIP_CODE, HOURLY_PAY, IS_SALARY, MANAGER_ID) 
    VALUES (80, 'Mick', 'John', 'Sound Engineer', 2484595954, 'mj@g.com', '123 dequender Dr.', 'north City', 'MI', '48588', 100, 'N', 70);    
INSERT INTO EMPLOYEE (EMPLOYEE_ID, FNAME, LNAME, EMPLOYEE_TYPE, PHONE_NUMBER, EMAIL_ADDRESS, ADDRESS, CITY, STATE_CODE, ZIP_CODE, HOURLY_PAY, IS_SALARY, MANAGER_ID) 
    VALUES (81, 'Hannah', 'Jonson', 'Sound Engineer', 248555555, 'hj@g.com', '123 karen Dr.', ' New York City', 'NY', '85269', 100, 'N', 70);
INSERT INTO EMPLOYEE (EMPLOYEE_ID, FNAME, LNAME, EMPLOYEE_TYPE, PHONE_NUMBER, EMAIL_ADDRESS, ADDRESS, CITY, STATE_CODE, ZIP_CODE, HOURLY_PAY, IS_SALARY, MANAGER_ID) 
    VALUES (82, 'Maria', 'Miller', 'Sound Engineer', 2486666666, 'mm@g.com', '589 ryne rd.', ' Los Angeles City', 'CL', '96548', 100, 'N', 70);
INSERT INTO EMPLOYEE (EMPLOYEE_ID, FNAME, LNAME, EMPLOYEE_TYPE, PHONE_NUMBER, EMAIL_ADDRESS, ADDRESS, CITY, STATE_CODE, ZIP_CODE, HOURLY_PAY, IS_SALARY, MANAGER_ID) 
    VALUES (83, 'Farah', 'Jabero', 'Sound Engineer', 2487777777, 'fj@g.com', '969 14 mile rd.', ' Farmington City', 'MI', '96548', 100, 'N', 70);
INSERT INTO EMPLOYEE (EMPLOYEE_ID, FNAME, LNAME, EMPLOYEE_TYPE, PHONE_NUMBER, EMAIL_ADDRESS, ADDRESS, CITY, STATE_CODE, ZIP_CODE, HOURLY_PAY, IS_SALARY, MANAGER_ID) 
    VALUES (84, 'Greg', 'Hana', 'Sound Engineer', 2488888888, 'gh@g.com', '525 dream rd.', ' San Antonio City', 'TX', '12456', 100, 'N', 70);


INSERT INTO BAND (BAND_NAME, MGR_FNAME, MGR_LNAME, MGR_PHONE, producer_emp_id) 
   VALUES ('The Beatles', 'Elis', 'Haines', 8958421010, 70);
INSERT INTO BAND (BAND_NAME, MGR_FNAME, MGR_LNAME, MGR_PHONE, producer_emp_id) 
   VALUES ('Yes', 'Cristiano', 'Ronaldo', 2489997777, 70);
INSERT INTO BAND (BAND_NAME, MGR_FNAME, MGR_LNAME, MGR_PHONE, producer_emp_id) 
   VALUES ('Stevie Wonder', 'Leo', 'Messy', 5865551010, 70);
INSERT INTO BAND (BAND_NAME, MGR_FNAME, MGR_LNAME, MGR_PHONE, producer_emp_id) 
   VALUES ('Phil Kaeggy', 'Sergio', 'Ramos', 8565252132, 70);
INSERT INTO BAND (BAND_NAME, MGR_FNAME, MGR_LNAME, MGR_PHONE, producer_emp_id) 
   VALUES ('The Who', 'Naymar', 'Silva', 9693217845, 70);


INSERT INTO band_member (MEMBER_ID, FNAME, LNAME, BAND_NAME, MENTOR_ID)
	VALUES (101,'Dawood','Sam','Yes',101);
INSERT INTO band_member (MEMBER_ID, FNAME, LNAME, BAND_NAME, MENTOR_ID)
	VALUES (102,'Josh','Mike','Yes',101);
INSERT INTO band_member (MEMBER_ID, FNAME, LNAME, BAND_NAME, MENTOR_ID)
	VALUES (103,'Nora','Hadad','Yes',101);
INSERT INTO band_member (MEMBER_ID, FNAME, LNAME, BAND_NAME, MENTOR_ID)
	VALUES (201,'Lily','Karmo','The Beatles',201);
INSERT INTO band_member (MEMBER_ID, FNAME, LNAME, BAND_NAME, MENTOR_ID)
	VALUES (202,'Lillian','Karmo','The Beatles',201);
INSERT INTO band_member (MEMBER_ID, FNAME, LNAME, BAND_NAME, MENTOR_ID)
	VALUES (204,'Grace','Hana','The Beatles',201);
INSERT INTO band_member (MEMBER_ID, FNAME, LNAME, BAND_NAME, MENTOR_ID)
	VALUES (205,'Hadeel','Shammo','The Beatles',201);
INSERT INTO band_member (MEMBER_ID, FNAME, LNAME, BAND_NAME, MENTOR_ID)
	VALUES (301,'Maya','Kashat','Stevie Wonder',301);
INSERT INTO band_member (MEMBER_ID, FNAME, LNAME, BAND_NAME, MENTOR_ID)
	VALUES (302,'Steve','Matti','Stevie Wonder',301);
INSERT INTO band_member (MEMBER_ID, FNAME, LNAME, BAND_NAME, MENTOR_ID)
	VALUES (303,'Justin','Matty','Stevie Wonder',301);
INSERT INTO band_member (MEMBER_ID, FNAME, LNAME, BAND_NAME, MENTOR_ID)
	VALUES (304,'Andrew','Marrogi','Stevie Wonder',301);
INSERT INTO band_member (MEMBER_ID, FNAME, LNAME, BAND_NAME, MENTOR_ID)
	VALUES (305,'Jeff','Simona','Stevie Wonder',301);
INSERT INTO band_member (MEMBER_ID, FNAME, LNAME, BAND_NAME, MENTOR_ID)
	VALUES (401,'Luka','Modric','Phil Kaeggy',401);
INSERT INTO band_member (MEMBER_ID, FNAME, LNAME, BAND_NAME, MENTOR_ID)
	VALUES (402,'Toni','Krose','Phil Kaeggy',401);
INSERT INTO band_member (MEMBER_ID, FNAME, LNAME, BAND_NAME, MENTOR_ID)
	VALUES (403,'Dani','Alfredo','Phil Kaeggy',401);
INSERT INTO band_member (MEMBER_ID, FNAME, LNAME, BAND_NAME, MENTOR_ID)
	VALUES (404,'Rodrego','Fernandez','Phil Kaeggy',401);    
INSERT INTO band_member (MEMBER_ID, FNAME, LNAME, BAND_NAME, MENTOR_ID)
	VALUES (501,'James','Alkori','The Who',501);
INSERT INTO band_member (MEMBER_ID, FNAME, LNAME, BAND_NAME, MENTOR_ID)
	VALUES (502,'Alice','Yousif','The Who',501);
INSERT INTO band_member (MEMBER_ID, FNAME, LNAME, BAND_NAME, MENTOR_ID)
	VALUES (503,'Sarah','Zoma','The Who',501);
INSERT INTO band_member (MEMBER_ID, FNAME, LNAME, BAND_NAME, MENTOR_ID)
	VALUES (504,'Karam','Farag','The Who',501);
INSERT INTO band_member (MEMBER_ID, FNAME, LNAME, BAND_NAME, MENTOR_ID)
	VALUES (505,'Majid','Johan','The Who',501);
INSERT INTO band_member (MEMBER_ID, FNAME, LNAME, BAND_NAME, MENTOR_ID)
	VALUES (506,'Val','Sheena','The Who',501);
INSERT INTO band_member (MEMBER_ID, FNAME, LNAME, BAND_NAME, MENTOR_ID)
	VALUES (507,'Elein','Saad','The Who',501);
INSERT INTO band_member (MEMBER_ID, FNAME, LNAME, BAND_NAME, MENTOR_ID)
	VALUES (508,'Clara','Salmo','The Who',501);    
    

INSERT INTO ALBUM (ALBUM_NAME, BAND_NAME, RELEASE_DATE) 
    VALUES ('Abbey Road', 'The Beatles', '26-SEP-1969');
INSERT INTO ALBUM (ALBUM_NAME, BAND_NAME, RELEASE_DATE) 
    VALUES ('sky', 'The Beatles', '26-SEP-2019');

INSERT INTO ALBUM (ALBUM_NAME, BAND_NAME, RELEASE_DATE) 
    VALUES ('Hatrick', 'Yes', '12-SEP-2019');
INSERT INTO ALBUM (ALBUM_NAME, BAND_NAME, RELEASE_DATE) 
    VALUES ('Super Hatrick', 'Yes', '12-SEP-2018');

INSERT INTO ALBUM (ALBUM_NAME, BAND_NAME, RELEASE_DATE) 
    VALUES ('Magic', 'Stevie Wonder', '12-APR-2019');
INSERT INTO ALBUM (ALBUM_NAME, BAND_NAME, RELEASE_DATE) 
    VALUES ('Soccer', 'Stevie Wonder', '10-AUG-2019');

INSERT INTO ALBUM (ALBUM_NAME, BAND_NAME, RELEASE_DATE) 
    VALUES ('Strong', 'Phil Kaeggy', '12-MAY-2019');
INSERT INTO ALBUM (ALBUM_NAME, BAND_NAME, RELEASE_DATE) 
    VALUES ('Life is hard', 'Phil Kaeggy', '10-JAN-2020');

INSERT INTO ALBUM (ALBUM_NAME, BAND_NAME, RELEASE_DATE) 
    VALUES ('player', 'The Who', '24-JUN-2019');
INSERT INTO ALBUM (ALBUM_NAME, BAND_NAME, RELEASE_DATE) 
    VALUES ('Wrong way', 'The Who', '24-JUL-2020');


INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('The world','Eddie Offerd','12-DEC-2019');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Father','Eddie Offerd','10-FEB-2019');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Now what','Eddie Offerd','06-JUN-2019');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('My soul','Eddie Offerd','14-FEB-2019');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Stay home','Eddie Offerd','20-MAR-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Pick it up','Eddie Offerd','01-APR-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('The meanings','Eddie Offerd','26-MAY-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Real friends','Eddie Offerd','31-JAN-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Hope','Eddie Offerd','12-April-2019');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Waka Waka','Eddie Offerd','12-SEP-2019');

INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('I owe you','David Offord','26-FEB-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('I want you','David Offord','26-JAN-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Tonight','David Offord','26-DEC-2019');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('You are my angle','David Offord','01-FEB-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('My mind changed','David Offord','01-JAN-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Sunday','David Offord','01-DEC-2019');

INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Everything','Dawood Dawood','12-SEP-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Stay here','Dawood Dawood','12-AUG-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Different','Dawood Dawood','12-JUL-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Living Life','Dawood Dawood','01-SEP-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Before and after','Dawood Dawood','01-AUG-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Do you remember','Dawood Dawood','01-JUL-2020');
    
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Love','leonardo Dav','01-SEP-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Forever','leonardo Dav','01-MAY-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Monaliza is back','leonardo Dav','01-APRIL-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Dreaming','leonardo Dav','30-SEP-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Everyday is a dream','leonardo Dav','30-MAY-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Sweet','leonardo Dav','30-APR-2020');
    
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('You and me','Justin Toni','24-JUL-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('You and my life','Justin Toni','24-JUN-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('She is','Justin Toni','24-MAY-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('My type','Justin Toni','01-JUL-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('lets sing','Justin Toni','01-JUN-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Happy is the key','Justin Toni','01-MAY-2020');
    
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Life','Sam Dicaprio','25-DEC-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('New me','Sam Dicaprio','25-NOV-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('New you','Sam Dicaprio','25-OCT-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('All the way','Sam Dicaprio','01-DEC-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Emotions','Sam Dicaprio','01-NOV-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Small world','Sam Dicaprio','01-OCT-2020');    
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Live your life','Sam Dicaprio','25-DEC-2020');

INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('New year','Davis Bekham','01-JAN-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Stop loving','Davis Bekham','07-JAN-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('The East of your road','Davis Bekham','15-JAN-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Your heart','Davis Bekham','20-JAN-2020');

INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Number one','Rick Williams','07-MAR-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('The king','Rick Williams','14-MAR-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Long way','Rick Williams','01-APR-2020');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Am I Alone','Rick Williams','10-APR-2020');

INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Side by side','Rula Saad','11-NOV-2019');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Without you','Rula Saad','12-DEC-2019');
INSERT INTO song (SONG_NAME, AUTHOR, COPYWRITE)
	VALUES ('Loyal','Rula Saad','10-OCT-2019');


INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('I owe you','The Beatles','Abbey Road','David Offord','26-FEB-2020', 3,'Rock','John Lennon');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('I want you','The Beatles','Abbey Road','David Offord','26-FEB-2020', 3,'Rock','John Lennon');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Tonight','The Beatles','Abbey Road','David Offord','26-FEB-2020', 4,'Classic','Kadem Al Saher');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('You are my angle','The Beatles','Abbey Road','David Offord','26-FEB-2020', 4,'Hip Hop','Shakira');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('The world','The Beatles','Abbey Road','Eddie Offerd','26-FEB-2020', 4,'Rock','John Lennon');

INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('My mind changed','The Beatles','sky','David Offord','20-SEP-2020', 5,'Hip Hop','Jenefer Lopez');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Sunday','The Beatles','sky','David Offord','20-SEP-2020', 3,'Hip Hop','Lauren Lema');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Everything','The Beatles','sky','Dawood Dawood','20-SEP-2020', 6,'Classic','Kadem Al Saher');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Stay here','The Beatles','sky','Dawood Dawood','20-SEP-2020', 3,'Classic','Saber Johny');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Father','The Beatles','sky','Eddie Offerd','20-SEP-2020', 4,'Classic','Saber Johny');
    
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Everything','Yes','Hatrick','Dawood Dawood','12-SEP-2020', 5,'Classic','Kadem Al Saher');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Different','Yes','Hatrick','Dawood Dawood','12-SEP-2020', 5,'Classic','Raghib Alama');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Living Life','Yes','Hatrick','Dawood Dawood','12-SEP-2020', 4,'Hip Hop','Shakira');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Before and after','Yes','Hatrick','Dawood Dawood','12-SEP-2020', 4,'Hip Hop','Lauren Lema');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Do you remember','Yes','Hatrick','Dawood Dawood','12-SEP-2020', 2,'Hip Hop','Lauren Lema');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Now what','Yes','Hatrick','Eddie Offerd','12-SEP-2020', 3,'Hip Hop','Lauren Lema');

INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Love','Yes','Super Hatrick','leonardo Dav','12-OCT-2020', 3,'Hip Hop','Shereen');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Forever','Yes','Super Hatrick','leonardo Dav','12-OCT-2020', 4,'Classic','Kelsey Adama');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Monaliza is back','Yes','Super Hatrick','leonardo Dav','12-OCT-2020', 6,'Classic','Assi Al Helani');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Dreaming','Yes','Super Hatrick','leonardo Dav','12-OCT-2020', 4,'Classic','Nancy Ajram');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('My soul','Yes','Super Hatrick','Eddie Offerd','12-OCT-2020', 5,'Classic','Nancy Ajram');
    
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Love','Stevie Wonder','Magic','leonardo Dav','01-SEP-2020', 4,'Classic','Assi Al Helani');
    INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Dreaming','Stevie Wonder','Magic','leonardo Dav','01-AUG-2020', 4,'Classic','Nancy Ajram');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('She is','Stevie Wonder','Magic','Justin Toni','04-JUL-2020', 5,'Classic','Fayrouz');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('My type','Stevie Wonder','Magic','Justin Toni','04-JUL-2020', 4,'Classic','Fayrouz');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('lets sing','Stevie Wonder','Magic','Justin Toni','04-JUL-2020', 10,'Classic','Fayrouz');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Happy is the key','Stevie Wonder','Magic','Justin Toni','04-JUL-2020', 4,'Classic','Fayrouz');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Stay home','Stevie Wonder','Magic','Eddie Offerd','04-JUL-2020', 4,'Classic','Fayrouz');

INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Life','Stevie Wonder','Soccer','Sam Dicaprio','31-DEC-2020', 4,'Rock','Rehana');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('New me','Stevie Wonder','Soccer','Sam Dicaprio','31-DEC-2020', 3,'Hip Hop','Brian Koza');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('New you','Stevie Wonder','Soccer','Sam Dicaprio','31-DEC-2020', 3,'Hip Hop','Brian Koza');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('All the way','Stevie Wonder','Soccer','Sam Dicaprio','31-DEC-2020', 4,'Rock','Calol Samaha');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Pick it up','Stevie Wonder','Soccer','Eddie Offerd','31-DEC-2020', 3,'Rock','Rehana');
    
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('You and me','Phil Kaeggy','Strong','Justin Toni','24-JUL-2020', 4,'Hip Hop','Nancy Ajram');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Emotions','Phil Kaeggy','Strong','Sam Dicaprio','29-DEC-2020', 5,'Classic','Nancy Ajram');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Small world','Phil Kaeggy','Strong','Sam Dicaprio','29-DEC-2020', 3,'Hip Hop','Tameer Hosny');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Live your life','Phil Kaeggy','Strong','Sam Dicaprio','29-DEC-2020', 2,'Rock','Tameer Hosny');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('New year','Phil Kaeggy','Strong','Davis Bekham','29-DEC-2020', 2,'Rock','Mo Assaf');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('The meanings','Phil Kaeggy','Strong','Eddie Offerd','29-DEC-2020', 5,'Rock','Mo Assaf');

INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Stop loving','Phil Kaeggy','Life is hard','Davis Bekham','12-FEB-2020', 4,'Classic','Kadem Al Saher');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('The East of your road','Phil Kaeggy','Life is hard','Davis Bekham','12-FEB-2020', 6,'Classic','Kadem Al Saher');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Your heart','Phil Kaeggy','Life is hard','Davis Bekham','12-FEB-2020', 8,'Classic','Kadem Al Saher');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Real friends','Phil Kaeggy','Life is hard','Eddie Offerd','12-FEB-2020', 7,'Classic','Kadem Al Saher');

INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Number one','The Who','player','Rick Williams','05-MAY-2020', 4,'Classic','Raghib Alama');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('The king','The Who','player','Rick Williams','05-MAY-2020', 3,'Classic','Raghib Alama');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Long way','The Who','player','Rick Williams','05-MAY-2020', 2,'Classic','Samera Saed');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Am I Alone','The Who','player','Rick Williams','05-MAY-2020', 4,'Rock','Saif Nabil');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Hope','The Who','player','Eddie Offerd','05-MAY-2020', 5,'Rock','Saif Nabil');

INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Side by side','The Who','Wrong way','Rula Saad','01-JAN-2020', 4,'Hip Hop','Shakira');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Without you','The Who','Wrong way','Rula Saad','01-JAN-2020', 14,'Hip Hop','Kadem Al Saher');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Loyal','The Who','Wrong way','Rula Saad','01-JAN-2020', 14,'Hip Hop','Nassef Zaytoni');
INSERT INTO album_song (SONG_NAME, BAND_NAME, ALBUM_NAME, AUTHOR, RELEASE_DATE, LENGTH, SONG_TYPE, SINGER)
	VALUES ('Waka Waka','The Who','Wrong way','Eddie Offerd','01-JAN-2020', 4,'Hip Hop','Shakira');




