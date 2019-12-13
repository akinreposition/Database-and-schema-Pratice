use classmovies;

create table movie (
  MovieId				integer			not null,
  MovieTitle			char(50)		not null,
  MoiveYear				integer			not null,
  MovieTime				integer			not null,
  MovieLang				char(50)		null,
  MovieDateRelease		date			not null,
  MovieReleaseCountry	char(10)		not null,
  constraint			movie_pk		primary key(MovieID)
);

select * 	from movie;

create table movie_cast( 
	ActorID				integer			not null,
    MovieId				integer			not null,
    Movie_role			char(30)		not null,
    constraint			movie_cast_pk	primary key (ActorID,MovieId),
	constraint			movie_cast1_fk	foreign key(ActorID) 
										references Actor(ActorID),
    constraint			movie_cast_fk	foreign key(MovieId) 
										references movie(movieId)
);

select *	from movie_cast;

create table reviewer( 
	reviewId			integer				not null,
    reviewName		    char(30)			not null,
    constraint			reviewer_reviewId	primary key(reviewId)
);
select *		from reviewer;

create table Actor( 
	ActorID					integer			not null,
    Actor_Firstname		    char(20)		not null,
    Actor_Lastname			char(20)		not null,
    ActorGender				char(1)			not null,
constraint					Actor_pk		primary key(ActorID) 
);

select *	from Actor;

create table Director( 
	DirectorID					integer			not null,
    Director_Firstname		    char(20)		not null,
    Director_Lastname			char(20)		not null,
	constraint					Director_pk		primary key(DirectorID) 
);

select *	from Director;

create table Movie_direction( 
	DirectorID				integer					not null,
    MovieID		   		 	integer					not null,
    constraint				Movie_direction_pk		primary key(DirectorID, MovieID),
	constraint				Movie_direction1_fk		foreign key(DirectorID) 
													references Director (DirectorID),
	constraint				Movie_direction2_fk		foreign key(movieId) 
													references movie(movieId)
);
select *	from Movie_direction;

create table genres( 
	genreID					integer			not null,
    genreTitle		   		char(20)		not null,
	constraint				genres_pk		primary key(genreID) 
);

select *	from genres;

create table Movie_genres( 
	movieID					integer					not null,
    genreID		   		 	integer					not null,
    constraint				Movie_genres_pk			primary key (movieID,genreID),
	constraint				Movie_genres1_fk		foreign key(movieId) 
													references movie (movieId),
	constraint				Movie_genres2_fk		foreign key(genreID) 
													references genres (genreID)
);

select *	from Movie_genres;

create table Rating( 
	movieId						integer			not null,
    reviewId		   		 	integer			not null,
    reviewStars					integer			not null,
    num_o_ratings				integer			null,
    constraint					Rating_pk		primary key( movieID, reviewID),
	constraint					rating_fk		foreign key(movieId) 
	references  movie (movieID),
	constraint					reviewer_fk		foreign key(reviewId) 
	references  reviewer (reviewId)
);

select *	from Rating;