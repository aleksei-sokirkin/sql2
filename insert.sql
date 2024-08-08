--Имена исполнителей
insert into singer(name_singer)
values ('Eden s Crush');

insert into singer(name_singer)
values ('Color Me Badd');

insert into singer(name_singer)
values ('The Cheetah Girls');

insert into singer(name_singer)
values ('Girls Aloud');

insert into singer(name_singer)
values ('Girls');

--Название жанров
insert into genres (name)
values ('New Metal');

insert into genres (name)
values ('Jazz');

insert into genres (name)
values ('Rock');

--не менее 3 альбомов
insert into album (name_album, year_execution)
values('By', '2016.07.19');

insert into album (name_album, year_execution)
values('e', '2008.06.15');

insert into album (name_album, year_execution)
values('No', '2008.05.21');

insert into album (name_album, year_execution)
values('ee', '2020.05.21');


--Название треков
insert into Tracks (tracks_name, duration, album_id)
values('1', 4, 2);

insert into Tracks (tracks_name, duration, album_id)
values('2', 7, 2);

insert into Tracks (tracks_name, duration, album_id)
values('3', 6, 1);

insert into Tracks (tracks_name, duration, album_id)
values('4', 1, 1);

insert into Tracks (tracks_name, duration, album_id)
values('5', 5, 3);

insert into Tracks (tracks_name, duration, album_id)
values('6', 6, 3);

insert into Tracks (tracks_name, duration, album_id)
values('my', 6, 3);

--Название коллекций
insert into collection (collection_name, release_year)
values('Random 1', '2017.08.05');

insert into collection (collection_name, release_year)
values('Random 2', '2017.08.05');

insert into collection (collection_name, release_year)
values('Random 3', '2017.08.05');

insert into collection (collection_name, release_year)
values('Random 4', '2017.08.05');

insert into collection (collection_name, release_year)
values('Random 5', '2019.08.05');


--Присоединение треков к сборникам
insert into collectiontracks (collection_id , track_id)
values('1', '4');
insert into collectiontracks (collection_id , track_id)
values('2', '5');
insert into collectiontracks (collection_id , track_id)
values('3', '6');
insert into collectiontracks (collection_id , track_id)
values('4', '7');

--Присоединение исполнителей к жанру
insert into genressinger (singer_id, genres_id)
values('1', '1');

insert into genressinger (singer_id, genres_id)
values('2', '1');

insert into genressinger (singer_id, genres_id)
values('3', '3');

insert into genressinger (singer_id, genres_id)
values('4', '2');

insert into genressinger (singer_id, genres_id)
values('5', '3');

--Присоединение исполнителей и альбомов
insert into singeralbum (singer_id , album_id)
values('1', '1');

insert into singeralbum (singer_id , album_id)
values('2', '3');

insert into singeralbum (singer_id , album_id)
values('3', '4');

insert into singeralbum (singer_id , album_id)
values('4', '2');

insert into singeralbum (singer_id , album_id)
values('5', '6');
