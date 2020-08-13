
/*Basic templates for 10 values for each entity, just copy paste and add new ,reasonable, data.*/
INSERT into bank values(1,'Federal Credit Union','6548 Blazing Ave, Atlanta, GA');
INSERT into bank values(2,'Wells Fargo','8590 Rex Ct, Rome, GA');
INSERT into bank values(3,'American Trustee','3241 Double Bridge Rd, Seattle, WA');
INSERT into bank values(4,'Federal National Bank','7745 Morrow Ave, Detroit, MA');
INSERT into bank values(5,'United Central Bank','3225 Curiosity Rd, Chicago, IL');
INSERT into bank values(6,'Sketchy Bank','7216 Micha Cir, Dallas, TX');
INSERT into bank values(7,'Suntrust','9807 Daylight Blvd, Miami, FL');
INSERT into bank values(8,'BB&T','1576 Helpfull Dr, Philadelphia, PA');
INSERT into bank values(9,'Bank of America','3211 Darkness Pkwy, Las Vegas, NV');
INSERT into bank values(10,'Capital One','1076 Light St, Honolulu, HI');

INSERT into branch values(1,'1234 Hunter Dr, Chicago, IL',1);
INSERT into branch values(2,'3456 Woodsman Ct, Miami, FL',2);
INSERT into branch values(5,'5678 Blacksmith Rd, Detroit, MA',3);
INSERT into branch values(1,'9101 Palmeto Ave, Seattle, WA',4);
INSERT into branch values(5,'1112 Ashby Cir, Dallas, TX',5);
INSERT into branch values(5,'1314 Movado Blvd, Honolulu, HI',6);
INSERT into branch values(1,'2690 Brightness Rd, Philadelphia, PA',7);
INSERT into branch values(5,'7124 Milton Dr, New Orleans, LA',8);
INSERT into branch values(1,'8351 Union Ave, San Francisco, CA',9);
INSERT into branch values(6,'2231 Cyclone St, Austin, TX',10);

INSERT into loan values('Student Insurance',1,20,1);
INSERT into loan values('Private Insurance',2,22,4);
INSERT into loan values('Business Insurance',3,1,3);
INSERT into loan values('Student Insurance',4,24,4);
INSERT into loan values('Private Insurance',5,6,2);
INSERT into loan values('Private Insurance',6,8,6);
INSERT into loan values('Business Insurance',7,2,5);
INSERT into loan values('Student Insurance',8,23,3);
INSERT into loan values('Private Insurance',9,28,10);
INSERT into loan values('Business Insurance',10,3,7);

/*checking acct_no 1000-1999, saving acct_no 2000-2999*/
INSERT into checking values(1000,3245,9.60,1);
INSERT into checking values(1001,34,5.00,2);
INSERT into checking values(1002,4000,2.50,1);
INSERT into checking values(1003,25000,2.75,2);
INSERT into checking values(1004,5,4.50,1);
INSERT into checking values(1005,150000,7.89,2);
INSERT into checking values(1006,24678,1.50,1);
INSERT into checking values(1007,2345,8.70,2);
INSERT into checking values(1008,956,7.55,3);
INSERT into checking values(1009,524,4.55,4);

INSERT into saving values(2000,24000,1,7);
INSERT into saving values(2001,100000,8,8);
INSERT into saving values(2002,15000,2,8);
INSERT into saving values(2003,1500,4,5);
INSERT into saving values(2004,24,5,6);
INSERT into saving values(2005,2000,4,9);
INSERT into saving values(2006,200,9,10);
INSERT into saving values(2007,4000,2,4);
INSERT into saving values(2008,3500,3,7);
INSERT into saving values(2009,30000,6,3);

INSERT into customer values(22,1987);
INSERT into customer values(2,2018);
INSERT into customer values(25,2017);
INSERT into customer values(20,1990);
INSERT into customer values(5,1996);
INSERT into customer values(21,2014);
INSERT into customer values(7,2010);
INSERT into customer values(23,2009);
INSERT into customer values(9,2008);
INSERT into customer values(10,1994);

INSERT into company values('Bell South','2341 Anxious Ct, Seattle, WA',1);
INSERT into company values('Boost Mobile','5467 Crazy Rd, Chicago, IL',2);
INSERT into company values('AT&T','3458 Happy St, Detroit, MI',3);
INSERT into company values('Comcast','9768 Sad Ave, Philadelphia, PA',4);
INSERT into company values('McDonalds','7089 Splendid Cr, Miami, FL',5);
INSERT into company values('Apple','2465 Turncoat Dr, Los Santos, NV',6);
INSERT into company values('Google','6657 Intense Blvd, Los Vegas, NV',7);
INSERT into company values('Twitch','2134 Awesome Rd, Austin, TX',8);
INSERT into company values('Youtube','9077 Thrilling St, Dallas, TX',9);
INSERT into company values('Microsoft','4545 Joyous Blvd, Honolulu, HI',10);

INSERT into person values('234567890','Leeroy Jenkins',20);
INSERT into person values('546789345','Jamal Ashby',21);
INSERT into person values('223445678','Nicole Simpsons',22);
INSERT into person values('889900332','Andrew Roberts',23);
INSERT into person values('112554467','Julio Rodriguez',24);
INSERT into person values('980006554','Jessica Parkinson',25);
INSERT into person values('126657893','Eddie Griffith',26);
INSERT into person values('234567893','Thadius Mccullough',27);
INSERT into person values('114433558','Chance Moses',28);
INSERT into person values('988077651','Mercedes Johnson',29);

INSERT into p_address values('234567890','6789 Day Cir, Dallas, TX');
INSERT into p_address values('546789345','1234 Night St, Austin, TX');
INSERT into p_address values('223445678','4567 MidDay Blvd, Houston, TX');
INSERT into p_address values('889900332','5634 Noon St, Philadelphia,PA');
INSERT into p_address values('112554467','7812 Bayers Ave, Honolulu, HI');
INSERT into p_address values('980006554','8934 Coal St, Detroit, MI');
INSERT into p_address values('126657893','1290 Maintain St, Los Santos, TX');
INSERT into p_address values('234567893','3498 Peace Blvd, San Francisco, CA');
INSERT into p_address values('114433558','0921 Rueful Cir, Atlanta, GA');
INSERT into p_address values('988077651','6509 Dang Rd, Rome, GA');

/*Which Person/Company owns whichever account*/
INSERT into owns values(10,1000);
INSERT into owns values(6,1002);
INSERT into owns values(4,1003);
INSERT into owns values(10,1004);
INSERT into owns values(3,1005);
INSERT into owns values(20,2001);
INSERT into owns values(22,2002);
INSERT into owns values(9,2003);
INSERT into owns values(29,2004);
INSERT into owns values(21,2005);
