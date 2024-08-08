--Название и продолжительность самого длительного трека.
SELECT tracks_name, duration FROM Tracks
WHERE duration = (SELECT MAX(duration) FROM Tracks);

--Название треков, продолжительность которых не менее 3,5 минут.
SELECT tracks_name, duration FROM Tracks
where duration > 3.5;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT collection_name FROM collection
where release_year >= '2018.01.01' and release_year <= '2020.01.01';

--Исполнители, чьё имя состоит из одного слова
SELECT name_singer FROM singer
where not name_singer like '% %';

--Название треков, которые содержат слово «мой» или «my»
select tracks_name from Tracks
where name like '%мой%' or name like '%My%'