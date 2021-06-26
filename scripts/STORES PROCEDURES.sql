CREATE  PROCEDURE store_new_title
(
@primaryTitle VARCHAR(150),
@originalTitle VARCHAR(150),
@isAdult tinyint,
@startYear int,
@endYear int,
@runTime int
)
AS 
BEGIN
DECLARE @imdbId  INT
SET @imdbId = (select id from imdb_db.dbo.Title where primaryTitle like '%'+@primaryTitle+'%');
print @imdbId
IF @imdbId IS NOT NULL AND LEN(@imdbId) > 0
    insert into dbo.Title (titleImdbId,primaryTitle, originalTitle, isAdult, startYear, endYear, runTime) values(@imdbId,@primaryTitle, @originalTitle,@isAdult, @startYear, @endYear, @runTime)
ELSE
    insert into dbo.Title (primaryTitle, originalTitle, isAdult, startYear, endYear, runTime) values(@primaryTitle, @originalTitle,@isAdult, @startYear, @endYear, @runTime)
END

-----------------------------------------------------------
EXEC dbo.store_new_title 'Primary Title 1', 'Original Title 1',1,2019,2019,120
EXEC dbo.store_new_title 'Primary Title 6', 'Original Title 6',1,2017,2018,115
EXEC dbo.store_new_title 'Primary Title 2', 'Original Title 2',1,2019,2020,110
EXEC dbo.store_new_title 'Primary Title 3', 'Original Title 3',0,2005,2007,35
EXEC dbo.store_new_title 'Primary Title 4', 'Original Title 4',1,2000,2019,45
EXEC dbo.store_new_title 'Primary Title 5', 'Original Title 5',1,1995,1995,45

-----------------------------------------------------------

ALTER  PROCEDURE select_news_titles
(
@start_date DATETIME  = NULL
)
AS 
BEGIN
	select Title.id, Title.primaryTitle, Title.primaryTitle, Title.isAdult, Title.startYear, Title.endYear, Title.runTime, imdb_db.dbo.Rating.averageRating, imdb_db.dbo.Rating.numVotes from
	Title left join imdb_db.dbo.Rating on imdb_db.dbo.Rating.titleId = Title.titleImdbId
	where Title.created_at > @start_date
END

--------------------------------------------------------

EXEC dbo.select_news_titles '2021-06-25 23:31:20.100'