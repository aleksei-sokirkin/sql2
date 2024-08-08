--Количество исполнителей в каждом жанре
select name, count(s.name_singer) from genres g
left join genressinger g2 on g.id = g2.genres_id 
left join singer s on g2.singer_id = s.id
group by name
order by count(s.name_singer) desc;

--Количество треков, вошедших в альбомы 2019–2020 годов
select count(tracks_name) from tracks t
left join album a on t.album_id = a.id
where year_execution > '2019.01.01' and year_execution < '2021.01.01';

--Средняя продолжительность треков по каждому альбому
select name_album, avg(duration) from tracks t
left join album a on t.album_id = a.id
group by name_album 
order by avg(duration);

--Все исполнители, которые не выпустили альбомы в 2020 году.
select name_singer from singer s 
left join singeralbum s2 on s.id = s2.singer_id 
left join album a on s2.album_id = a.id
where name_singer not in (select name_singer from singeralbum s3 where year_execution > '2020.01.01' and year_execution < '2021.01.01');

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами)
select collection_name from collection c2
left join collectiontracks c on c.collection_id =c2.id 
left join tracks t on c.track_id= t.id 
left join album a on t.album_id = a.id
left join singeralbum s on a.id = s.album_id
left join singer s2 on s.singer_id = s2.id
where name_singer like 'Color%';