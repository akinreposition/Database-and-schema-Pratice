use classmovies;

insert into movie values ( 101, 'American Beauty', 2010-11-01, 11-10, 'Russia', '1999-11-11', 'Paris');
insert into movie values ( 102, 'Eyes wide Shut',  2012-12-14, 11-09, 'Nigeria', '2000-01-12', 'America');
insert into movie values ( 103, 'Half of a Yellow Sun', 2018-05-02, 01-30, 'England', '2019-02-14', 'Nigeia');
insert into movie values ( 104, 'Twin Warrior', 2013-05-02, 06-30, 'China', '1998-03-14', 'Japan');


insert into movie_cast values ( 4011, 101, 'Main Leads');
insert into movie_cast values ( 4012, 102, 'Support Character');
insert into movie_cast values ( 4013, 103, 'Female Lead Character');
insert into movie_cast values ( 4014, 104, 'Male Main Leads');

insert into reviewer values ( 300, 'Charles Black');
insert into reviewer values ( 301, 'Sam Taylor');

insert into Actor values ( 4011, 'Beeni', 'Mac', 'M');
insert into Actor values ( 4012, 'Angel', 'Blue', 'F');
insert into Actor values ( 4013, 'Jennifer', ' Salami', 'F');
insert into Actor values ( 4014, 'Boye', ' Davids', 'M');


insert into Director values ( 5010, 'Tony', 'Andrew');
insert into Director values ( 5011, 'Andrew', 'Sand');
insert into Director values ( 5012, 'Brown', 'William');
insert into Director values ( 5013, 'Andre', 'Book');


insert into Movie_direction values( 5010, 101);
insert into Movie_direction values( 5010, 102);
insert into Movie_direction values( 5011, 101);
insert into Movie_direction values( 5011, 102);


insert into genres values ( 6010, 'Thriller');
insert into genres values ( 6011, 'Action');
insert into genres values ( 6012, 'Comedy');
insert into genres values ( 6013, 'Romance');

insert into Movie_genres values ( 101, 6010);
insert into Movie_genres values ( 102, 6011);
insert into Movie_genres values ( 101, 6012);
insert into Movie_genres values ( 103, 6013);


insert into Rating values ( 101, 300, 6, 6);
insert into Rating values ( 102, 301, 7, 7);
insert into Rating values ( 103, 301, 5, 5);

 