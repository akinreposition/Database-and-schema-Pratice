use classwork;

create table  Artist(
ArtistID		integer			not null,
ArtistName		varchar(40)		not null,
Ratings			varchar(12)		 null,
Phone			numeric(15,0)	not null,
constraint		Artist_pk		primary key(ArtistID)
);

select * from Artist;

insert into Artist values(100, 'ID_CABASA','5 star', 08021000001); 
insert into artist value(101, 'Olamide', '4 star', 0902100001);
insert into artist values( 103, 'wiz_kid','3 star',0802100002);
insert into artist values( 104, 'zlatan', '1 star', 0802100003);
insert into artist values( 105, 'JD.jakes','5 star', 0803100004);
insert into artist values(106, 'R.Kelly','3 star', 0904100002);

create table Album (
ArtistID		integer		not null,
ArtistName		char(20)	not null,
Tracks			integer		not null,
Genre			char(25)	not null,
Year_Release			integer		not null,
constraint		Album_pk	primary key(ArtistID,ArtistName),
constraint		Album_fk	foreign key(ArtistID) 
references Artist(ArtistID)
);

select* from Album;

insert into Album  values(100, 'MI',  12, 'POP', 2015);
insert into Album values(101, 'Asha', 04, 'Jazz', 2012);
insert into album values(103,'Fals', 02,'Hip_Hop', 2009);
insert into album values(104, 'simi',03,'Hip_hop', 2010);
insert into album value(105, 'chemistry', 04,'soul',2016);

alter	table album 
drop awards;

alter table album	
drop primary key;

/*alter table album	add constraint  primary key(ArtistID,ArtistName);*/

/*select artistID,artistName	from Artist
where*/