select * from Artist
;
insert INTO Artist 
(ArtistName,YearEstablished)
values
("Grace Potter",2013);
UPDATE Artist
SET ArtistName = "Grace Patter and the Nocturnal"
where ArtistId=28;

select ArtistName, YearEstablished
from Artist
where YearEstablished > 1970
and YearEstablished < 2000
order by YearEstablished desc;
select a.Title, 
			a.AlbumLength,
			a.Label as AlbumLabel, 
			ar.ArtistName, 
			ar.YearEstablished
from Album a
join Artist ar
on a.ArtistId = ar.ArtistId
join Genre g on a.GenreId = g.GenreId
;
select * from Song s
join Album al on al.AlbumId = s.AlbumId
join Artist ar on ar.ArtistId = s.ArtistId
join Genre g on g.GenreId = s.GenreId
;

-- Music History Exercise

--1.Query all of the entries in the Genre table
select * from genre;

--2.Using the INSERT statement, add one of your favorite artists to the Artist table.
select *from Artist;
insert into artist 
(ArtistName,YearEstablished)
values ("Justin Bieber",2008);

--3.Using the INSERT statement, add one, or more, albums by your artist to the Album table.
select *from album;
insert into Album
(Title,ReleaseDate,AlbumLength,Label,ArtistId,GenreId)
values("Step Up","4/12/2010",2343,"john Records",7,3);

 --4.Using the INSERT statement, add some songs that are on that album to the Song table.
insert into Song 
(Title,SongLength,ReleaseDate,GenreId,ArtistId,AlbumId)
values("Love me Like you do",25,"12/2/2016",3,186,88);
-----

--5.Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
select a.Title, s.Title, ar.ArtistName
 FROM Album a 
 LEFT JOIN Song s ON s.AlbumId = a.AlbumId
 JOIN Artist ar ON s.ArtistId = ar.ArtistId
 where a.Title="Everything is awesome";
select * from song;


---6.Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
SELECT s.AlbumId, a.Title, COUNT(s.SongId)
FROM Song s
JOIN Album a on s.AlbumId = a.AlbumId
GROUP BY s.AlbumId;

--7.Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
select s.ArtistId, Ar.Title, COUNT(s.SongId)
from Song s
JOIN Artist Ar on s.ArtistId=Ar.ArtistId
GROUP BY s.ArtistId;

--8.Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequenc
select s.GenreId,g.Label, COUNT(s.SongId)
from Song s
JOIN Genre g on s.GenreId = g.GenreId;

--9.Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
select a.Title, MAX(AlbumLength) as LongestDuration 
from Album a;

--10.Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.
select s.Title, MAX(SongLength) as LongestDuration 
from Song s;

--11.Modify the previous query to also display the title of the album.
select a.Title, s.Title, MAX(SongLength) as "Duration"
from song s
JOIN Album a on s.AlbumId = a.AlbumId


