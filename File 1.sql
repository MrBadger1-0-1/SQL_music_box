-- File 1
-- Задание 1 (наполнение таблиц данными)
insert into autor(Autor_name) 
values('Serj Tankian'),('System of A Down'),('Apocalyptica'),('Deep Purple'),('AC/DC');
 
insert into genre (Genre_name)
values('Alternative metall'),('Hard rock'),('Metall');

insert into album (Album_name, relise_date)
values('Cell-0','2020-01-01'),('Angels Calling','2020-01-01'),('Elect the Dead Sympony','2010-01-01'),('The Rough Dog','2018-01-01'),('Stormbringer','1974-01-01');

insert into track (Track_name, Duration, AlbumID)
values('Solder Of Fortune','195',7),('Ahes Of The Modern World','389',3),('Empty Walls','116',5),('Angels Calling','353',4),('Sky Is Over', '168',5),('The Rough Dog','229',6),('Call My Name','235',3);

insert into collection (Collection_name, Relise_date)
values('Music From The Motion Picture Not Another Teen Movie','2001-01-01'),('Лучшие хиты: Рок 1980-х','2021-01-01'),('The best rock music XXI','2020-01-01'); 

insert into album_autor (autorid,albumid)
values(1,5),(2,6),(3,3),(3,4),(4,7);

insert into autor_genre (autorid, genreid)
values(1,1),(2,1),(3,3),(4,2),(5,2);

insert into collection_track (trackid,collectionid)
values(1,2),(2,3),(3,1),(4,3),(5,1),(6,3),(7,3);

