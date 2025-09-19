insert into genre (genre) values ('Family'), ('Animated'), ('Musical'), ('Sci Fi'), ('Romance'), ('Fantasy');
select * from genre;

insert into media_type (type) values ('DVD'), ('Blue-Ray'), ('VHS'), ('Stream');
select * from media_type;

insert into actors (firstname, lastname) values ('Tom', 'Hanks'), ('Tim', 'Allen'), ('Annie', 'Potts'), ('John', 'Ratzenberger'), ('Harrison', 'Ford'), ('Mark', 'Hamill');
select * from actors;

insert into features (feature) values ('Bloopers'), ('Actors Interviews'), ('Cut Scenes'), ('Extended Version');
select * from features;

insert into studio (studio_name) values ('Disney Pixar'), ('Disney Marvel'), ('Universal'), ('Fox Century'), ('HBO Max'), ('Warner Brothers'), ('Dreamworks');
select * from studio;

insert into movies (title, studio_id, rating, released_at) values ('Toy Story', 1, 'G', 1995);
insert into movies (title, studio_id, rating, released_at) values ('Toy Story 2', 1, 'G', 1999);
insert into movies (title, studio_id, rating, released_at) values ('The Incredible Hulk', 2, 'G', 2008);
insert into movies (title, studio_id, rating, released_at) values ('The Empire Strikes Back', 4, 'PG', 1977);
select * from movies;

delete from movies where movie_id = 1;

update actors set firstname = 'Tonny' where actor_id = 1;
select * from actors;

drop table movies;

drop database movies;
