insert into dbo.Genre (name) values ('Romance');
insert into dbo.Genre (name) values ('Comedia');
insert into dbo.Genre (name) values ('Drama');
insert into dbo.Genre (name) values ('Guerra');
insert into dbo.Genre (name) values ('Documentales');
insert into dbo.Genre (name) values ('Acción');

-------------------------------------------------------

insert into dbo.TitleType (name) values('Series');
insert into dbo.TitleType (name) values('Deportes');

--------------------------------------------------------

insert into dbo.Region (name) values('Norte America');
insert into dbo.Region (name) values('America Latina');
insert into dbo.Region (name) values('Asia');
insert into dbo.Region (name) values('Europa');

-------------------------------------------------------

insert into dbo.Language (name) values('Español');
insert into dbo.Language (name) values('Ingles');
insert into dbo.Language (name) values('Chino');
insert into dbo.Language (name) values('Frances');
insert into dbo.Language (name) values('Portugues');

------------------------------------------------------

insert into dbo.AlternativeType (name) values('Alt Type 1');
insert into dbo.AlternativeType (name) values('Alt Type 2');
insert into dbo.AlternativeType (name) values('Alt Type 3');
insert into dbo.AlternativeType (name) values('Alt Type 4');

------------------------------------------------------

insert into dbo.AlternativeAttribute (name) values('Alt Attr 1');
insert into dbo.AlternativeAttribute (name) values('Alt Attr 2');
insert into dbo.AlternativeAttribute (name) values('Alt Attr 3');
insert into dbo.AlternativeAttribute (name) values('Alt Attr 4');

------------------------------------------------------

insert into dbo.Profession (name) values('Profession 1');
insert into dbo.Profession (name) values('Profession 2');
insert into dbo.Profession (name) values('Profession 3');
insert into dbo.Profession (name) values('Profession 4');

------------------------------------------------------

insert into dbo.Category (name) values('Category 1');
insert into dbo.Category (name) values('Category 2');
insert into dbo.Category (name) values('Category 3');
insert into dbo.Category (name) values('Category 4');

------------------------------------------------------

insert into dbo.Title (titleTypeId, primaryTitle, originalTitle, isAdult, startYear, endYear, runTime) values(1,'Primary Title 1', 'Original Title 1',1,2019,2019,120);
insert into dbo.Title (titleTypeId, primaryTitle, originalTitle, isAdult, startYear, endYear, runTime) values(1,'Primary Title 2', 'Original Title 2',1,2019,2020,110);
insert into dbo.Title (titleTypeId, primaryTitle, originalTitle, isAdult, startYear, endYear, runTime) values(2,'Primary Title 3', 'Original Title 3',0,2005,2007,35);
insert into dbo.Title (titleTypeId, primaryTitle, originalTitle, isAdult, startYear, endYear, runTime) values(2,'Primary Title 4', 'Original Title 4',1,2000,2019,45);
insert into dbo.Title (titleTypeId, primaryTitle, originalTitle, isAdult, startYear, endYear, runTime) values(1,'Primary Title 5', 'Original Title 5',0,1825,1826,25);
insert into dbo.Title (titleTypeId, primaryTitle, originalTitle, isAdult, startYear, endYear, runTime) values(1,'Primary Title 6', 'Original Title 6',0,2001,2001,37);
insert into dbo.Title (titleTypeId, primaryTitle, originalTitle, isAdult, startYear, endYear, runTime) values(2,'Primary Title 7', 'Original Title 7',1,1990,1992,90);
insert into dbo.Title (titleTypeId, primaryTitle, originalTitle, isAdult, startYear, endYear, runTime) values(2,'Primary Title 8', 'Original Title 8',1,1995,1995,100);
insert into dbo.Title (titleTypeId, primaryTitle, originalTitle, isAdult, startYear, endYear, runTime) values(1,'Primary Title 9', 'Original Title 9',0,2003,2006,105);
insert into dbo.Title (titleTypeId, primaryTitle, originalTitle, isAdult, startYear, endYear, runTime) values(1,'Primary Title 10', 'Original Title 10',1,2020,2021,45);

------------------------------------------------------

insert into dbo.TitleGenre (titleId, genreId) values(1,1);
insert into dbo.TitleGenre (titleId, genreId) values(1,3);
insert into dbo.TitleGenre (titleId, genreId) values(1,4);
insert into dbo.TitleGenre (titleId, genreId) values(2,1);
insert into dbo.TitleGenre (titleId, genreId) values(3,2);
insert into dbo.TitleGenre (titleId, genreId) values(4,3);
insert into dbo.TitleGenre (titleId, genreId) values(4,2);
insert into dbo.TitleGenre (titleId, genreId) values(4,1);
insert into dbo.TitleGenre (titleId, genreId) values(5,4);
insert into dbo.TitleGenre (titleId, genreId) values(5,3);
insert into dbo.TitleGenre (titleId, genreId) values(6,1);
insert into dbo.TitleGenre (titleId, genreId) values(7,2);
insert into dbo.TitleGenre (titleId, genreId) values(8,3);
insert into dbo.TitleGenre (titleId, genreId) values(9,4);
insert into dbo.TitleGenre (titleId, genreId) values(10,2);
insert into dbo.TitleGenre (titleId, genreId) values(10,3);

------------------------------------------------------

insert into dbo.AlternativeTitle (titleId, regionId, languageId, alternativeTypeId, alternativeAttributeId, title, ordering, isOriginal) values(1,1,1,1,1,'Alt Title 1', 1, 1);
insert into dbo.AlternativeTitle (titleId, regionId, languageId, alternativeTypeId, alternativeAttributeId, title, ordering, isOriginal) values(1,2,1,1,1,'Alt Title 2', 2, 1);
insert into dbo.AlternativeTitle (titleId, regionId, languageId, alternativeTypeId, alternativeAttributeId, title, ordering, isOriginal) values(2,4,1,1,1,'Alt Title 1', 1, 0);
insert into dbo.AlternativeTitle (titleId, regionId, languageId, alternativeTypeId, alternativeAttributeId, title, ordering, isOriginal) values(3,1,1,1,1,'Alt Title 1', 1, 1);
insert into dbo.AlternativeTitle (titleId, regionId, languageId, alternativeTypeId, alternativeAttributeId, title, ordering, isOriginal) values(3,3,1,1,1,'Alt Title 2', 2, 0);
insert into dbo.AlternativeTitle (titleId, regionId, languageId, alternativeTypeId, alternativeAttributeId, title, ordering, isOriginal) values(4,1,1,1,1,'Alt Title 1', 1, 1);
insert into dbo.AlternativeTitle (titleId, regionId, languageId, alternativeTypeId, alternativeAttributeId, title, ordering, isOriginal) values(5,4,1,1,1,'Alt Title 1', 1, 1);
insert into dbo.AlternativeTitle (titleId, regionId, languageId, alternativeTypeId, alternativeAttributeId, title, ordering, isOriginal) values(6,2,1,1,1,'Alt Title 1', 1, 1);
insert into dbo.AlternativeTitle (titleId, regionId, languageId, alternativeTypeId, alternativeAttributeId, title, ordering, isOriginal) values(7,3,1,1,1,'Alt Title 1', 1, 1);
insert into dbo.AlternativeTitle (titleId, regionId, languageId, alternativeTypeId, alternativeAttributeId, title, ordering, isOriginal) values(8,4,1,1,1,'Alt Title 1', 1, 1);
insert into dbo.AlternativeTitle (titleId, regionId, languageId, alternativeTypeId, alternativeAttributeId, title, ordering, isOriginal) values(8,1,1,1,1,'Alt Title 2', 2, 0);
insert into dbo.AlternativeTitle (titleId, regionId, languageId, alternativeTypeId, alternativeAttributeId, title, ordering, isOriginal) values(9,2,1,1,1,'Alt Title 1', 1, 1);
insert into dbo.AlternativeTitle (titleId, regionId, languageId, alternativeTypeId, alternativeAttributeId, title, ordering, isOriginal) values(9,3,1,1,1,'Alt Title 2', 2, 0);
insert into dbo.AlternativeTitle (titleId, regionId, languageId, alternativeTypeId, alternativeAttributeId, title, ordering, isOriginal) values(10,1,1,1,1,'Alt Title 1', 1, 1);

------------------------------------------------------

insert into dbo.Rating (titleId, averageRating, numVotes) values (1,90, 1500);
insert into dbo.Rating (titleId, averageRating, numVotes) values (2,85, 1000);
insert into dbo.Rating (titleId, averageRating, numVotes) values (3,60, 1320);
insert into dbo.Rating (titleId, averageRating, numVotes) values (4,45, 1100);
insert into dbo.Rating (titleId, averageRating, numVotes) values (5,90, 1500);
insert into dbo.Rating (titleId, averageRating, numVotes) values (6,85, 1000);
insert into dbo.Rating (titleId, averageRating, numVotes) values (7,60, 1320);
insert into dbo.Rating (titleId, averageRating, numVotes) values (8,45, 1100);
insert into dbo.Rating (titleId, averageRating, numVotes) values (9,60, 1320);
insert into dbo.Rating (titleId, averageRating, numVotes) values (10,45, 1100);

-----------------------------------------------------

insert into dbo.Episode (titleId, parentId, season, episode) values (1,null,0,0);
insert into dbo.Episode (titleId, parentId, season, episode) values (2,null,0,0);
insert into dbo.Episode (titleId, parentId, season, episode) values (3,null,1,1);
insert into dbo.Episode (titleId, parentId, season, episode) values (3,null,1,2);
insert into dbo.Episode (titleId, parentId, season, episode) values (3,null,1,3);
insert into dbo.Episode (titleId, parentId, season, episode) values (4,null,2,1);
insert into dbo.Episode (titleId, parentId, season, episode) values (4,null,2,2);
insert into dbo.Episode (titleId, parentId, season, episode) values (4,null,2,3);
insert into dbo.Episode (titleId, parentId, season, episode) values (6,null,1,1);
insert into dbo.Episode (titleId, parentId, season, episode) values (6,null,1,2);
insert into dbo.Episode (titleId, parentId, season, episode) values (6,null,1,3);

------------------------------------------------------

insert into dbo.Name (primaryName, birthYear, deathYear) values ('Fred Astaire',1899,1987);
insert into dbo.Name (primaryName, birthYear, deathYear) values ('Lauren Bacall',1924,2014);
insert into dbo.Name (primaryName, birthYear, deathYear) values ('Brigitte Bardot',1934,null);
insert into dbo.Name (primaryName, birthYear, deathYear) values ('John Belushi',1949,1982);
insert into dbo.Name (primaryName, birthYear, deathYear) values ('Ingmar Bergman',1918,2007);
insert into dbo.Name (primaryName, birthYear, deathYear) values ('Humphrey Bogart',1915,1982);
insert into dbo.Name (primaryName, birthYear, deathYear) values ('Marlon Brando',1899,1957);

------------------------------------------------------

insert into dbo.NameProfession (nameId, professionId) values (1,2);
insert into dbo.NameProfession (nameId, professionId) values (1,3);
insert into dbo.NameProfession (nameId, professionId) values (2,1);
insert into dbo.NameProfession (nameId, professionId) values (3,3);
insert into dbo.NameProfession (nameId, professionId) values (4,4);
insert into dbo.NameProfession (nameId, professionId) values (5,4);
insert into dbo.NameProfession (nameId, professionId) values (6,1);
insert into dbo.NameProfession (nameId, professionId) values (7,2);

------------------------------------------------------

insert into dbo.KnowForTitle (nameId, titleId) values (1,2);
insert into dbo.KnowForTitle (nameId, titleId) values (1,1);
insert into dbo.KnowForTitle (nameId, titleId) values (2,3);
insert into dbo.KnowForTitle (nameId, titleId) values (3,4);
insert into dbo.KnowForTitle (nameId, titleId) values (4,2);
insert into dbo.KnowForTitle (nameId, titleId) values (5,2);

------------------------------------------------------

insert into dbo.Director (nameId, titleId) values (1,2);
insert into dbo.Director (nameId, titleId) values (1,1);
insert into dbo.Director (nameId, titleId) values (2,3);
insert into dbo.Director (nameId, titleId) values (3,4);
insert into dbo.Director (nameId, titleId) values (4,2);
insert into dbo.Director (nameId, titleId) values (5,2);

------------------------------------------------------

insert into dbo.Writer (nameId, titleId) values (1,2);
insert into dbo.Writer (nameId, titleId) values (1,1);
insert into dbo.Writer (nameId, titleId) values (2,3);
insert into dbo.Writer (nameId, titleId) values (3,4);
insert into dbo.Writer (nameId, titleId) values (4,5);
insert into dbo.Writer (nameId, titleId) values (5,6);
insert into dbo.Writer (nameId, titleId) values (6,7);
insert into dbo.Writer (nameId, titleId) values (7,8);
insert into dbo.Writer (nameId, titleId) values (1,9);
insert into dbo.Writer (nameId, titleId) values (2,10);

------------------------------------------------------

insert into dbo.Principal (nameId, titleId, categoryId, jobId, ordering, character) values (1,1,1,null,1,'Character 1');
insert into dbo.Principal (nameId, titleId, categoryId, jobId, ordering, character) values (2,1,3,null,2,'Character 2');
insert into dbo.Principal (nameId, titleId, categoryId, jobId, ordering, character) values (3,1,2,null,3,'Character 3');
insert into dbo.Principal (nameId, titleId, categoryId, jobId, ordering, character) values (4,2,4,null,1,'Character 1');
insert into dbo.Principal (nameId, titleId, categoryId, jobId, ordering, character) values (5,2,4,null,2,'Character 1');
insert into dbo.Principal (nameId, titleId, categoryId, jobId, ordering, character) values (6,3,1,null,1,'Character 1');
insert into dbo.Principal (nameId, titleId, categoryId, jobId, ordering, character) values (6,4,2,null,1,'Character 1');
insert into dbo.Principal (nameId, titleId, categoryId, jobId, ordering, character) values (1,5,1,null,1,'Character 1');
insert into dbo.Principal (nameId, titleId, categoryId, jobId, ordering, character) values (2,5,2,null,1,'Character 1');
insert into dbo.Principal (nameId, titleId, categoryId, jobId, ordering, character) values (3,6,1,null,1,'Character 1');
insert into dbo.Principal (nameId, titleId, categoryId, jobId, ordering, character) values (4,7,1,null,1,'Character 1');
insert into dbo.Principal (nameId, titleId, categoryId, jobId, ordering, character) values (2,7,1,null,1,'Character 1');
insert into dbo.Principal (nameId, titleId, categoryId, jobId, ordering, character) values (4,8,1,null,1,'Character 1');
insert into dbo.Principal (nameId, titleId, categoryId, jobId, ordering, character) values (5,9,1,null,1,'Character 1');
insert into dbo.Principal (nameId, titleId, categoryId, jobId, ordering, character) values (1,10,1,null,1,'Character 1');
insert into dbo.Principal (nameId, titleId, categoryId, jobId, ordering, character) values (6,10,2,null,1,'Character 1');