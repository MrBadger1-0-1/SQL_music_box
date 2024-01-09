-- File 2
-- Задание 2
-- Название и продолжительность самого длительного трека.
select track_name, duration from track
order by duration desc
limit 1;

-- Название треков, продолжительность которых не менее 3,5 минут.
select track_name from track
where duration >= 210;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select collection_name from collection
where relise_date between '2018-01-01' and '2020.01.01'

-- Исполнители, чьё имя состоит из одного слова.
select autor_name from autor
where autor_name !~ '[ \t\v\b\r\n\u00a0]';

-- Название треков, которые содержат слово «мой» или «my».
select track_name from track
where track_name like '%My%' or track_name like '%my%';

-- Задание 3
-- Количество исполнителей в каждом жанре.
select genreid, count(*) from autor_genre
group by genreid

-- Количество треков, вошедших в альбомы 2019–2020 годов.
select album_name, count(trackid) track from album a 
join track t on t.albumid = a.albumid
where relise_date between '2018-01-01' and '2020.12.31'
group by a.album_name
order by track desc;

-- Средняя продолжительность треков по каждому альбому.
select album_name, avg(duration) duration from album a 
join track t on t.albumid =a.albumid
group by a.albumid 
order by duration desc;

-- Все исполнители, которые не выпустили альбомы в 2020 году. У AC\DC не добавлял альбом, поэтому их тут 3
select autor_name from autor a 
join album_autor aa  on aa.autorid = a.autorid
join album a2 on a2.albumid = aa.albumid
where relise_date not between '2020-01-01' and '2020.12.31'
group by autor_name;

-- Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами)(Apocalyptica).
select collection_name from collection c 
join collection_track ct on c.collectionid = ct.collectionid 
join track t on ct.trackid = t.trackid 
join album a on t.albumid = a.albumid
join album_autor aa on a.albumid = aa.albumid 
join autor a2 on aa.autorid = a2.autorid 
where autor_name like 'Apoc%'
group by collection_name;