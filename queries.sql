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
